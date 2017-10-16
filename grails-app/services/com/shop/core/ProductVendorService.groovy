package com.shop.core

import grails.transaction.Transactional
import java.lang.Exception
@Transactional
class ProductVendorService {

    def createVendor(String vendorName) {
        try{
        def vendor=new ProductVendor(vendorName:vendorName)
        vendor.save(flush:true)
        return vendor
        }
        catch(Exception e){
            println "Exception in ProductVendorService in createVendor method\nDetails:"+e
            return null
        }
    }
}
