package com.shop.core

class UnitConversion {
String titel
CodeListItem convertFrom
CodeListItem convertTO
Float value
    static mapping ={
        convertFrom column:'convert_from'
        convertTo column:'convert_to'
    }
    static constraints = {
    }
    
}
