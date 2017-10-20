package com.shop.purchases

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PurchasesMstController {
    def stockService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 5, 100)
        respond PurchasesMst.list(params), model:[purchasesMstCount: PurchasesMst.count()]
    }
   

    def show(PurchasesMst purchasesMst) {
        respond purchasesMst
    }

    def create() {
        respond new PurchasesMst(params)
    }

    @Transactional
    def save(PurchasesMst purchasesMst) {

        if (purchasesMst == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        purchasesMst.purchasesDtls.eachWithIndex{dtls,index->
            if(dtls.stockItem==null && !params."purchasesDtls[${index}].stockItemName".equals("")){
                dtls.stockItem= stockService.createInitItem(params."purchasesDtls[${index}].stockItemName",dtls.prchUnit)
            }
            
        }
  
        if (purchasesMst.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond purchasesMst.errors, view:'create'
            return
        }
        
       
        if(purchasesMst.save(flush:true)){
            stockService.addItemToStock(purchasesMst.purchasesDtls)

        }
       
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'purchasesMst.label', default: 'PurchasesMst'), purchasesMst.id])
                redirect purchasesMst
            }
            '*' { respond purchasesMst, [status: CREATED] }
        }
    }

    def edit(PurchasesMst purchasesMst) {
        respond purchasesMst
    }

    @Transactional
    def update(PurchasesMst purchasesMst) {
        if (purchasesMst == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (purchasesMst.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond purchasesMst.errors, view:'edit'
            return
        }

        purchasesMst.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'purchasesMst.label', default: 'PurchasesMst'), purchasesMst.id])
                redirect purchasesMst
            }
            '*'{ respond purchasesMst, [status: OK] }
        }
    }

    @Transactional
    def delete(PurchasesMst purchasesMst) {

        if (purchasesMst == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        purchasesMst.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'purchasesMst.label', default: 'PurchasesMst'), purchasesMst.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchasesMst.label', default: 'PurchasesMst'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
