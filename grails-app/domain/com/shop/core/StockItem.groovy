package com.shop.core

import com.shop.sales.SalesDtl
import java.sql.Timestamp

class StockItem {
String itemName
String searchKeyword
Float qty
Float unitPrice
CodeListItem stkUnit
java.sql.Timestamp dataentry_date
java.sql.Timestamp recupdate_date
static belongsTo=[productVendor:ProductVendor ]
static hasMany=[purchasesDtls:com.shop.purchases.PurchasesDtl,salesDtls:com.shop.sales.SalesDtl]
static mapping ={
        stkUnit column:'stk_unit'
        
    }
    static constraints = {
        itemName nullable:false
        searchKeyword nullable:true
        qty nullable:false
        unitPrice nullable:false
        dataentry_date nullable:true
        recupdate_date nullable:true
        productVendor nullable:true
    }
    
        def beforeInsert = {
        def current_time = Calendar.instance
        dataentry_date = new Timestamp(current_time.time.time)
        
    }

    def beforeUpdate = {
        def current_time = Calendar.instance
        recupdate_date = new Timestamp(current_time.time.time)
        
    }
}
