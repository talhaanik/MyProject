package com.shop.account

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ReceivePaymentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 5, 100)
        respond ReceivePayment.list(params), model:[receivePaymentCount: ReceivePayment.count()]
    }

    def show(ReceivePayment receivePayment) {
        respond receivePayment
    }

    def create() {
        respond new ReceivePayment(params)
    }

    @Transactional
    def save(ReceivePayment receivePayment) {
        if (receivePayment == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (receivePayment.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond receivePayment.errors, view:'create'
            return
        }

        receivePayment.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'receivePayment.label', default: 'ReceivePayment'), receivePayment.id])
                redirect receivePayment
            }
            '*' { respond receivePayment, [status: CREATED] }
        }
    }

    def edit(ReceivePayment receivePayment) {
        respond receivePayment
    }

    @Transactional
    def update(ReceivePayment receivePayment) {
        if (receivePayment == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (receivePayment.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond receivePayment.errors, view:'edit'
            return
        }

        receivePayment.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'receivePayment.label', default: 'ReceivePayment'), receivePayment.id])
                redirect receivePayment
            }
            '*'{ respond receivePayment, [status: OK] }
        }
    }

    @Transactional
    def delete(ReceivePayment receivePayment) {

        if (receivePayment == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        receivePayment.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'receivePayment.label', default: 'ReceivePayment'), receivePayment.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'receivePayment.label', default: 'ReceivePayment'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
