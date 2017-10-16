package com.shop.account

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MakePaymentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 5, 100)
        respond MakePayment.list(params), model:[makePaymentCount: MakePayment.count()]
    }

    def show(MakePayment makePayment) {
        respond makePayment
    }

    def create() {
        respond new MakePayment(params)
    }

    @Transactional
    def save(MakePayment makePayment) {
        if (makePayment == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (makePayment.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond makePayment.errors, view:'create'
            return
        }

        makePayment.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'makePayment.label', default: 'MakePayment'), makePayment.id])
                redirect makePayment
            }
            '*' { respond makePayment, [status: CREATED] }
        }
    }

    def edit(MakePayment makePayment) {
        respond makePayment
    }

    @Transactional
    def update(MakePayment makePayment) {
        if (makePayment == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (makePayment.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond makePayment.errors, view:'edit'
            return
        }

        makePayment.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'makePayment.label', default: 'MakePayment'), makePayment.id])
                redirect makePayment
            }
            '*'{ respond makePayment, [status: OK] }
        }
    }

    @Transactional
    def delete(MakePayment makePayment) {

        if (makePayment == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        makePayment.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'makePayment.label', default: 'MakePayment'), makePayment.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'makePayment.label', default: 'MakePayment'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
