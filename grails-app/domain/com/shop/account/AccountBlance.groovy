package com.shop.account

import java.sql.Timestamp

class AccountBlance {
    Date period
    Float openingBln
    Float currBln
    Float clsnBln
     java.sql.Timestamp dataentry_date
    java.sql.Timestamp recupdate_date
    
    
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
