package com.shop.purchases

import com.shop.core.Party
import java.sql.Timestamp
import java.util.Date
class PurchasesMst {
    
    String supplierNm
    Date prchDate
    Float totalBill
    Float paidAmount
    Float dueAmount
    java.sql.Timestamp dataentry_date
    java.sql.Timestamp recupdate_date
    static hasMany=[purchasesDtls:PurchasesDtl]
    
    static belongsTo=[party:Party]
    static constraints = {
        
        supplierNm nullable:false
        prchDate nullable:false
        totalBill nullable:false
        paidAmount nullable:false
        dueAmount nullable:false
        dataentry_date nullable:true
        recupdate_date nullable:true
        
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
