package com.shop.sales

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SalesMstController {
def stockService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SalesMst.list(params), model:[salesMstCount: SalesMst.count()]
    }

    def show(SalesMst salesMst) {
        respond salesMst
    }

    def create() {
        respond new SalesMst(params)
    }

    @Transactional
    def save(SalesMst salesMst) {
        if (salesMst == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (salesMst.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond salesMst.errors, view:'create'
            return
        }
 println '1'
        if(salesMst.save(flush:true)){
            println '2'
            stockService.reduceItemFromStock(salesMst.salesDtls)
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'salesMst.label', default: 'SalesMst'), salesMst.id])
                redirect salesMst
            }
            '*' { respond salesMst, [status: CREATED] }
        }
    }

    def edit(SalesMst salesMst) {
        respond salesMst
    }

    @Transactional
    def update(SalesMst salesMst) {
        if (salesMst == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (salesMst.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond salesMst.errors, view:'edit'
            return
        }

        salesMst.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'salesMst.label', default: 'SalesMst'), salesMst.id])
                redirect salesMst
            }
            '*'{ respond salesMst, [status: OK] }
        }
    }

    @Transactional
    def delete(SalesMst salesMst) {

        if (salesMst == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        salesMst.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'salesMst.label', default: 'SalesMst'), salesMst.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'salesMst.label', default: 'SalesMst'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
