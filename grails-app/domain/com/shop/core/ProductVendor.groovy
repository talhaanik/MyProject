package com.shop.core

class ProductVendor {
    String vendorName
     static hasMany=[stockItems:StockItem]
    static constraints = {
      vendorName nullable:false,unique:true
    }
}
