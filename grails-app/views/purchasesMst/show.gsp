<!DOCTYPE html>

<html>
    <head>
        <%--meta name="layout" content="main" /--%>
       <g:set var="entityName" value="${message(code: 'purchasesMst.label', default: 'Purchases')}" />

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
                                
                         
                <g:link class="btn btn-primary pull-right" onclick="ajxCallItem(jQuery(this),'content');return false;" 
                    controller="purchasesMst" action="create"> <i class="fa fa-plus"></i></g:link>
 <g:link class="btn btn-primary pull-right" controller="purchasesMst" action="index" 
                              onclick="ajxCallItem(jQuery(this),'content');return false;"><i class="fa fa-arrow-left"></i></g:link>
                            </div>                  

                            <div class="col-md-12">

                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <dl class="dl-horizontal">
			<g:if test="${this.purchasesMst?.party}">
				
					<dt id="supplier-label" class="property-label"><g:message code="purchasesMst.supplier.label" default="Supplier" /></dt>
					
						<dd class="property-value" aria-labelledby="supplier-label">${this.purchasesMst?.party?.name}</dd>
					
			
				</g:if>
			
				<g:if test="${this.purchasesMst?.supplierNm}">
				
					<dt id="supplierNm-label" class="property-label"><g:message code="purchasesMst.supplierNm.label" default="Supplier Nm" /></dt>
					
						<dd class="property-value" aria-labelledby="supplierNm-label"><g:fieldValue bean="${this.purchasesMst}" field="supplierNm"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.purchasesMst?.prchDate}">
				
					<dt id="prchDate-label" class="property-label"><g:message code="purchasesMst.prchDate.label" default="Prch Date" /></dt>
					
						<dd class="property-value" aria-labelledby="prchDate-label"><g:formatDate date="${this.purchasesMst?.prchDate}" formate="dd-MM-yyyy" /></dd>
					
				
				</g:if>
			
				<g:if test="${this.purchasesMst?.totalBill}">
				
					<dt id="totalBill-label" class="property-label"><g:message code="purchasesMst.totalBill.label" default="Total Bill" /></dt>
					
						<dd class="property-value" aria-labelledby="totalBill-label"><g:fieldValue bean="${this.purchasesMst}" field="totalBill"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.purchasesMst?.paidAmount}">
				
					<dt id="paidAmount-label" class="property-label"><g:message code="purchasesMst.paidAmount.label" default="Paid Amount" /></dt>
					
						<dd class="property-value" aria-labelledby="paidAmount-label"><g:fieldValue bean="${this.purchasesMst}" field="paidAmount"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.purchasesMst?.dueAmount}">
				
					<dt id="dueAmount-label" class="property-label"><g:message code="purchasesMst.dueAmount.label" default="Due Amount" /></dt>
					
						<dd class="property-value" aria-labelledby="dueAmount-label"><g:fieldValue bean="${this.purchasesMst}" field="dueAmount"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.purchasesMst?.purchasesDtls}">
                                    
				
					<g:render template="detailshow"/>
					
				
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
