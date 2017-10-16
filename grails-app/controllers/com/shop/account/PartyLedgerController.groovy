package com.shop.account

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PartyLedgerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 5, 100)
        respond PartyLedger.list(params), model:[partyLedgerCount: PartyLedger.count()]
    }

    def show(PartyLedger partyLedger) {
        respond partyLedger
    }

    def create() {
        respond new PartyLedger(params)
    }

    @Transactional
    def save(PartyLedger partyLedger) {
        if (partyLedger == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (partyLedger.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond partyLedger.errors, view:'create'
            return
        }

        partyLedger.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'partyLedger.label', default: 'PartyLedger'), partyLedger.id])
                redirect partyLedger
            }
            '*' { respond partyLedger, [status: CREATED] }
        }
    }

    def edit(PartyLedger partyLedger) {
        respond partyLedger
    }

    @Transactional
    def update(PartyLedger partyLedger) {
        if (partyLedger == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (partyLedger.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond partyLedger.errors, view:'edit'
            return
        }

        partyLedger.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'partyLedger.label', default: 'PartyLedger'), partyLedger.id])
                redirect partyLedger
            }
            '*'{ respond partyLedger, [status: OK] }
        }
    }

    @Transactional
    def delete(PartyLedger partyLedger) {

        if (partyLedger == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        partyLedger.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'partyLedger.label', default: 'PartyLedger'), partyLedger.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'partyLedger.label', default: 'PartyLedger'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
