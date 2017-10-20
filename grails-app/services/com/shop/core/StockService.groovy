package com.shop.core

import grails.transaction.Transactional

@Transactional
class StockService {
    def unitConversionService
    def addItemToStock(def purchesItems) {
        println 'in service'
        purchesItems.each{
            updateQtyPrice(it.stockItem,it.qty,it.unitPrice,it.prchUnit)
        }

    }
    def reduceItemFromStock(def saleItems){
        saleItems.each{
            decreaseQty(it.stockItem,it.qty,it.slsUnit)
        }
    }
    def updateQtyPrice(def stock,def qty,def price,def unit){
        
        def currQty=stock?.qty ?:0
        if(stock.stkUnit.id!=unit.id){
            
        
            def convertedQty=unitConversionService.unitConvert(unit,stock.stkUnit,qty)
            def conUnitPrice=qty*price/convertedQty
            stock.qty=currQty+convertedQty
            stock.unitPrice=conUnitPrice
            
        }
        else{
            
            stock.qty=currQty+qty
            stock.unitPrice=price
        }
        stock.save(flush:true)
    }
    def increaseQty(def stock,def qty){
        def currQty=stock?.qty ?:0
        stock.qty=currQty+qty
        stock.save(flush:true)
    }
    def decreaseQty(def stock,def qty,def unit){
            
        def currQty=stock?.qty ?:0
        if(stock.stkUnit.id!=unit.id){
            
        
            def convertedQty=unitConversionService.unitConvert(unit,stock.stkUnit,qty)
            
            stock.qty=currQty-convertedQty
            
            
        }
        else{
            
            stock.qty=currQty-qty
           
        }
            
        stock.save(flush:true)
            
    }
    def createInitItem(String name,def unit){
        def stockItem=new StockItem(itemName:name,stkUnit:unit,qty:0,unitPrice:0)
        stockItem.save(flush:true)
        return stockItem
        
    }
}
