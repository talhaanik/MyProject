package com.shop.account

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountBlanceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 5, 100)
        respond AccountBlance.list(params), model:[accountBlanceCount: AccountBlance.count()]
    }

    def show(AccountBlance accountBlance) {
        respond accountBlance
    }

    def create() {
        respond new AccountBlance(params)
    }

    @Transactional
    def save(AccountBlance accountBlance) {
        if (accountBlance == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (accountBlance.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond accountBlance.errors, view:'create'
            return
        }

        accountBlance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'accountBlance.label', default: 'AccountBlance'), accountBlance.id])
                redirect accountBlance
            }
            '*' { respond accountBlance, [status: CREATED] }
        }
    }

    def edit(AccountBlance accountBlance) {
        respond accountBlance
    }

    @Transactional
    def update(AccountBlance accountBlance) {
        if (accountBlance == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (accountBlance.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond accountBlance.errors, view:'edit'
            return
        }

        accountBlance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'accountBlance.label', default: 'AccountBlance'), accountBlance.id])
                redirect accountBlance
            }
            '*'{ respond accountBlance, [status: OK] }
        }
    }

    @Transactional
    def delete(AccountBlance accountBlance) {

        if (accountBlance == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        accountBlance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'accountBlance.label', default: 'AccountBlance'), accountBlance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountBlance.label', default: 'AccountBlance'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
