package com.shop.core

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductVendorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 5, 100)
        respond ProductVendor.list(params), model:[productVendorCount: ProductVendor.count()]
    }

    def show(ProductVendor productVendor) {
        respond productVendor
    }

    def create() {
        respond new ProductVendor(params)
    }

    @Transactional
    def save(ProductVendor productVendor) {
        if (productVendor == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (productVendor.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond productVendor.errors, view:'create'
            return
        }

        productVendor.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'productVendor.label', default: 'ProductVendor'), productVendor.id])
                redirect productVendor
            }
            '*' { respond productVendor, [status: CREATED] }
        }
    }

    def edit(ProductVendor productVendor) {
        respond productVendor
    }

    @Transactional
    def update(ProductVendor productVendor) {
        if (productVendor == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (productVendor.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond productVendor.errors, view:'edit'
            return
        }

        productVendor.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'productVendor.label', default: 'ProductVendor'), productVendor.id])
                redirect productVendor
            }
            '*'{ respond productVendor, [status: OK] }
        }
    }

    @Transactional
    def delete(ProductVendor productVendor) {

        if (productVendor == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        productVendor.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'productVendor.label', default: 'ProductVendor'), productVendor.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'productVendor.label', default: 'ProductVendor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
