package com.shop.account
import java.sql.Timestamp
import com.shop.core.Party
import com.shop.core.CodeListItem
class MakePayment {
    Long payTo
    String payNote
    Timestamp payDate
    Float payAmount
    String payType
     java.sql.Timestamp dataentry_date
    java.sql.Timestamp recupdate_date
    
    static belongsTo=[party:Party,payFor:CodeListItem]
    
    static constraints = {
        payNote(nullable:true,size:0..300)
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
