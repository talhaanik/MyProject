package com.shop.core

import com.shop.sales.SalesMst
import com.shop.purchases.PurchasesMst
import com.shop.account.PartyLedger
import com.shop.account.ReceivePayment
import com.shop.account.MakePayment
class Party {
    String name
    String contractPrsnNm
    String mobile
    String address
    static hasMany=[salesMsts:SalesMst,
        purchasesMsts:PurchasesMst,
        partyLedger:PartyLedger,
        receivePayments: ReceivePayment,
        makePayments: MakePayment
    ]
    static belongsTo=[clsiPartyType:CodeListItem]
    static constraints = {
        contractPrsnNm nullable:true
        name nullable:false
        mobile nullable:false
        address nullable: false
    }
    String toString(){
        return name
    }
}
