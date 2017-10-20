package com.shop.purchases

import com.shop.core.CodeListItem
import com.shop.core.StockItem

class PurchasesDtl {
Float qty
Float unitPrice
CodeListItem prchUnit
static belongsTo = [purchasesMst:PurchasesMst,stockItem:StockItem]
    static constraints = {
        stockItem nullable:true
    }
    static mapping ={
        prchUnit column:'prch_unit'
        
    }
}
