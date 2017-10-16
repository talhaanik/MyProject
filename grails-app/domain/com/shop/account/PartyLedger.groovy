package com.shop.account

import com.shop.core.Party
import java.sql.Timestamp

class PartyLedger {
    String note
    Float amount
    java.sql.Timestamp dataentry_date
    java.sql.Timestamp recupdate_date
    
    static belongsTo=[party:Party]
    static constraints = {
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
