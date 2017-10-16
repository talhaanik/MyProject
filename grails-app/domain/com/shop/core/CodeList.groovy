package com.shop.core

class CodeList {
String clsName
String clsDscrptn
String clsCode
Boolean isActive

    static hasMany=[codeListItems:CodeListItem]
    static constraints = {
        clsDscrptn nullable:true
    }
    String toString(){
        return clsName
    }
}
