package com.shop.sales

import com.shop.core.CodeListItem
import com.shop.core.StockItem
class SalesDtl {
Float qty
Float unitPrice
CodeListItem slsUnit
static belongsTo = [salesMst:SalesMst,stockItem:com.shop.core.StockItem]
static mapping ={
        prchUnit column:'sls_unit'
        
    }
    static constraints = {
    }
}
