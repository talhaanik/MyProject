package com.shop.core

import grails.transaction.Transactional

@Transactional
class UnitConversionService {

    def unitConvert(def fromUnit, def toUnit,def qty) {
        def result=0.0
        def convertRate
        try{
         convertRate=UnitConversion.findAllByConvertFromAndConvertTO(fromUnit,toUnit)?.value
        result=convertRate*qty
    }catch(Exception ex){
        println "Can't convert ${fromUnit} to ${toUnit} becouse qty ${qty} or convert rate ${convertRate} "
    }
    return result
    }
    
    def calculatUnitPrice(def fromUnit,def toUnit,def fromqty,def fromUnitPrice){
        
    try{
       def toUnitePrice=fromqty*fromUnitPrice/unitConvert(fromUnit,toUnit,fromqty)
        return toUnitePrice
    }catch(Exception e){
        
    }
    }
}
