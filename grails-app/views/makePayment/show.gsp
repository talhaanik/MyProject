
<%@ page import="com.shop.account.MakePayment" %>
<!DOCTYPE html>
<html>
    <head>

        <g:set var="entityName" value="${message(code: 'makePayment.label', default: 'MakePayment')}" />

    </head>
    <body>
        <div class="form-element" style="padding-top:15px;padding-bottom:15px;">
            <div class="col-md-12 padding-0">
                <div class="col-md-8">
                    <div class="panel form-element-padding">
                        <div class="panel-heading">
                            <h4><g:message code="default.show.label" args="[entityName]" /></h4>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                <g:link class="btn btn-primary pull-right" 
                                    onclick="ajxCallItem(jQuery(this),'content');return false;" 
                                    action="create"> <i class="fa fa-plus"></i></g:link>
                                <g:link class="btn btn-primary pull-right"  action="index" 
                                    onclick="ajxCallItem(jQuery(this),'content');return false;">
                                    <i class="fa fa-arrow-left"></i></g:link>
                                </div>  
                                 <div class="col-md-12">
                     
                                            <g:if test="${flash.message}">
                                                <div class="message" role="status">${flash.message}</div>
                                            </g:if>
                                           <dl class="dl-horizontal">
                                                
                                                <g:if test="${this.makePayment?.payNote}">
                                                   
                                                        <dt id="payNote-label" class="property-label"><g:message code="makePayment.payNote.label" default="Pay Note" /></dt>
                                                        
                                                        <dd class="property-value" aria-labelledby="payNote-label"><g:fieldValue bean="${this.makePayment}" field="payNote"/></dd>
                                                        
                                                 
                                                </g:if>
                                                
                                                <g:if test="${this.makePayment?.dataentry_date}">
                                                   
                                                        <dt id="dataentry_date-label" class="property-label"><g:message code="makePayment.dataentry_date.label" default="Dataentrydate" /></dt>
                                                        
                                                        <dd class="property-value" aria-labelledby="dataentry_date-label"><g:fieldValue bean="${this.makePayment}" field="dataentry_date"/></dd>
                                                        
                                                 
                                                </g:if>
                                                
                                                <g:if test="${this.makePayment?.payAmount}">
                                                   
                                                        <dt id="payAmount-label" class="property-label"><g:message code="makePayment.payAmount.label" default="Pay Amount" /></dt>
                                                        
                                                        <dd class="property-value" aria-labelledby="payAmount-label"><g:fieldValue bean="${this.makePayment}" field="payAmount"/></dd>
                                                        
                                                 
                                                </g:if>
                                                
                                                <g:if test="${this.makePayment?.payDate}">
                                                   
                                                        <dt id="payDate-label" class="property-label"><g:message code="makePayment.payDate.label" default="Pay Date" /></dt>
                                                        
                                                        <dd class="property-value" aria-labelledby="payDate-label"><g:fieldValue bean="${this.makePayment}" field="payDate"/></dd>
                                                        
                                                 
                                                </g:if>
                                                
                                                <g:if test="${this.makePayment?.payTo}">
                                                   
                                                        <dt id="payTo-label" class="property-label"><g:message code="makePayment.payTo.label" default="Pay To" /></dt>
                                                        
                                                        <dd class="property-value" aria-labelledby="payTo-label"><g:fieldValue bean="${this.makePayment}" field="payTo"/></dd>
                                                        
                                                 
                                                </g:if>
                                                
                                                <g:if test="${this.makePayment?.payType}">
                                                   
                                                        <dt id="payType-label" class="property-label"><g:message code="makePayment.payType.label" default="Pay Type" /></dt>
                                                        
                                                        <dd class="property-value" aria-labelledby="payType-label"><g:fieldValue bean="${this.makePayment}" field="payType"/></dd>
                                                        
                                                 
                                                </g:if>
                                                
                                                <g:if test="${this.makePayment?.recupdate_date}">
                                                   
                                                        <dt id="recupdate_date-label" class="property-label"><g:message code="makePayment.recupdate_date.label" default="Recupdatedate" /></dt>
                                                        
                                                        <dd class="property-value" aria-labelledby="recupdate_date-label"><g:fieldValue bean="${this.makePayment}" field="recupdate_date"/></dd>
                                                        
                                                 
                                                </g:if>
                                                
                                           </dl>
                                           </div>
                            </div>
                     
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
