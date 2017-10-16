package com.shop.core

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.*
@Transactional(readOnly = true)
class StockItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def productVendorService
    def index(Integer max) {
        params.max = Math.min(max ?: 5, 100)
        //if(request.xhr){
        //   render(template: "table", model: [stockItemList:StockItem.list(params),stockItemCount: StockItem.count()])

        // }else{
        respond StockItem.list(params), model:[stockItemCount: StockItem.count()]
        // }
    }

    def show(StockItem stockItem) {
        respond stockItem
    }

    def create() {
        respond new StockItem(params)
    }

    @Transactional
    def save(StockItem stockItem) {
        if (stockItem == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (stockItem.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond stockItem.errors, view:'create'
            return
        }
        if(stockItem.productVendor==null&&!params.vendor.equals("")){
            stockItem.productVendor=productVendorService.createVendor(params.vendor)
        }

        stockItem.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'stockItem.label', default: 'StockItem'), stockItem.id])
                redirect stockItem
            }
            '*' { respond stockItem, [status: CREATED] }
        }
    }

    def edit(StockItem stockItem) {
        respond stockItem
    }

    @Transactional
    def update(StockItem stockItem) {
        if (stockItem == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        println "call"
        if (stockItem.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond stockItem.errors, view:'edit'
            return
        }
        if(stockItem.productVendor==null&&!params.vendor.equals("")){
            stockItem.productVendor=productVendorService.createVendor(params.vendor)
        }
        stockItem.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'stockItem.label', default: 'StockItem'), stockItem.id])
                redirect stockItem
            }
            '*'{ respond stockItem, [status: OK] }
        }
    }

    //@Transactional
    def delete(StockItem stockItem) {
        println params
        println stockItem
        if (stockItem == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        println "call delete"
        stockItem.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'stockItem.label', default: 'StockItem'), stockItem.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stockItem.label', default: 'StockItem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    def itemlist(){
        println 'in item list' +params
       
        
        def itemlist=StockItem.executeQuery("select  new map(s.itemName as label,s.id as value) from com.shop.core.StockItem s where s.itemName like '%${params.term}%'")
      
        
        render itemlist as JSON
    }
}
