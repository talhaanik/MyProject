package com.shop.core
import com.shop.account.ReceivePayment
class CodeListItem {
    String clsiName
    String clsiDscrptn
    String clsiCode
    Boolean isActive=true
    
    static belongsTo=[codeList:CodeList]
    static hasMany=[parties:Party,receivePayments:ReceivePayment]
    static constraints = {
        clsiDscrptn nullable:true
    }
  String  toString(){
        return clsiName
    }
}
