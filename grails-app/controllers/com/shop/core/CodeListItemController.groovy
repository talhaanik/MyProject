package com.shop.core

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CodeListItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CodeListItem.list(params), model:[codeListItemCount: CodeListItem.count()]
    }

    def show(CodeListItem codeListItem) {
        respond codeListItem
    }

    def create() {
        respond new CodeListItem(params)
    }

    @Transactional
    def save(CodeListItem codeListItem) {
        if (codeListItem == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (codeListItem.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond codeListItem.errors, view:'create'
            return
        }

        codeListItem.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'codeListItem.label', default: 'CodeListItem'), codeListItem.id])
                redirect codeListItem
            }
            '*' { respond codeListItem, [status: CREATED] }
        }
    }

    def edit(CodeListItem codeListItem) {
        respond codeListItem
    }

    @Transactional
    def update(CodeListItem codeListItem) {
        if (codeListItem == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (codeListItem.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond codeListItem.errors, view:'edit'
            return
        }

        codeListItem.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'codeListItem.label', default: 'CodeListItem'), codeListItem.id])
                redirect codeListItem
            }
            '*'{ respond codeListItem, [status: OK] }
        }
    }

    @Transactional
    def delete(CodeListItem codeListItem) {

        if (codeListItem == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        codeListItem.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'codeListItem.label', default: 'CodeListItem'), codeListItem.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'codeListItem.label', default: 'CodeListItem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
