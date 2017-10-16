/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.shopapp.converters
import grails.databinding.converters.ValueConverter
/**
 *
 * @author mtalha
 */
class DateValueConverter implements ValueConverter{
    boolean canConvert(value) {
        value instanceof String
    }
    def convert(value) {
        Date.parse("dd/MM/yyyy",value)
    }

    Class<?> getTargetType() {
       Date
    }
}

