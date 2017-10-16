package com.shop.account

import com.shop.core.Party
import java.sql.Timestamp

import com.shop.core.CodeListItem
class ReceivePayment {
    Long rcvFrom
    String rcvNote
    Date rcvDate
    Float rcvAmount
   String rcvType
    java.sql.Timestamp dataentry_date
    java.sql.Timestamp recupdate_date
    
    
    static belongsTo=[customer:Party,rcvPurpose:CodeListItem]

    static constraints = {
        rcvNote(nullable:true,size:0..300)
        dataentry_date(nullable:true) 
        recupdate_date(nullable:true)
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
