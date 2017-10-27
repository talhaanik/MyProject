package com.shop.core

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CodeListController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CodeList.list(params), model:[codeListCount: CodeList.count()]
    }

    def show(CodeList codeList) {
        respond codeList
    }

    def create() {
        respond new CodeList(params)
    }

    @Transactional
    def save(CodeList codeList) {
        if (codeList == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (codeList.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond codeList.errors, view:'create'
            return
        }

        codeList.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'codeList.label', default: 'CodeList'), codeList.id])
                redirect codeList
            }
            '*' { respond codeList, [status: CREATED] }
        }
    }

    def edit(CodeList codeList) {
        respond codeList
    }

    @Transactional
    def update(CodeList codeList) {
        println 'update'
        if (codeList == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (codeList.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond codeList.errors, view:'edit'
            return
        }

        codeList.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'codeList.label', default: 'CodeList'), codeList.id])
                redirect codeList
            }
            '*'{ respond codeList, [status: OK] }
        }
    }

    @Transactional
    def delete(CodeList codeList) {

        if (codeList == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        codeList.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'codeList.label', default: 'CodeList'), codeList.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'codeList.label', default: 'CodeList'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
