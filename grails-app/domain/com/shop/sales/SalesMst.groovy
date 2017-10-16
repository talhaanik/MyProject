package com.shop.sales

import com.shop.core.Party
import java.sql.Timestamp
import java.util.Date
class SalesMst {
    String customerNm
    Date salesDate
    Float totalBill
    Float trnsportCost
    Float discount
    Float paidAmount
    Float dueAmount
    java.sql.Timestamp dataentry_date
    java.sql.Timestamp recupdate_date
    
    static hasMany=[salesDtls:SalesDtl]
    static belongsTo=[party:Party]
    static constraints = {
        
        customerNm nullable:false
        salesDate nullable:true
        discount nullable:true
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
