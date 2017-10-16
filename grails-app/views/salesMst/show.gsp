

<html>
    <head>
        <%--meta name="layout" content="main" /--%>
        <g:set var="entityName" value="${message(code: 'salesMst.label', default: 'SalesMst')}" />

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
                    controller="salesMst" action="create"> <i class="fa fa-plus"></i></g:link>
 <g:link class="btn btn-primary pull-right" controller="salesMst" action="index" 
                              onclick="ajxCallItem(jQuery(this),'content');return false;"><i class="fa fa-arrow-left"></i></g:link>
                            </div>                  

                            <div class="col-md-12">

                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                    <dl class="dl-horizontal">
			<g:if test="${this.salesMst?.party}">
				
					<dt id="customer-label" class="property-label"><g:message code="salesMst.customer.label" default="Customer" /></dt>
					
						<dd class="property-value" aria-labelledby="customer-label">${this.salesMst?.party?.name}</dd>
					
				
				</g:if>
			
				<g:if test="${this.salesMst?.customerNm}">
				
					<dt id="customerNm-label" class="property-label"><g:message code="salesMst.customerNm.label" default="Customer Name" /></dt>
					
						<dd class="property-value" aria-labelledby="customerNm-label"><g:fieldValue bean="${this.salesMst}" field="customerNm"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.salesMst?.salesDate}">
				
					<dt id="salesDate-label" class="property-label"><g:message code="salesMst.salesDate.label" default="Sales Date" /></dt>
					
						<dd class="property-value" aria-labelledby="salesDate-label"><g:formatDate date="${this.salesMst?.salesDate}" /></dd>
					
				
				</g:if>
			<g:if test="${this.salesMst?.totalBill}">
				
					<dt id="totalBill-label" class="property-label"><g:message code="salesMst.totalBill.label" default="Total Bill" /></dt>
					
						<dd class="property-value" aria-labelledby="totalBill-label"><g:fieldValue bean="${this.salesMst}" field="totalBill"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.salesMst?.trnsportCost}">
				
					<dt id="trnsportCost-label" class="property-label"><g:message code="salesMst.trnsportCost.label" default="Trnsport Cost" /></dt>
					
						<dd class="property-value" aria-labelledby="trnsportCost-label"><g:fieldValue bean="${this.salesMst}" field="trnsportCost"/></dd>
					
				
				</g:if>
				
				<g:if test="${this.salesMst?.paidAmount}">
				
					<dt id="paidAmount-label" class="property-label"><g:message code="salesMst.paidAmount.label" default="Paid Amount" /></dt>
					
						<dd class="property-value" aria-labelledby="paidAmount-label"><g:fieldValue bean="${this.salesMst}" field="paidAmount"/></dd>
					
				
				</g:if>
			
			<g:if test="${this.salesMst?.dueAmount}">
				
					<dt id="dueAmount-label" class="property-label"><g:message code="salesMst.dueAmount.label" default="Due Amount" /></dt>
					
						<dd class="property-value" aria-labelledby="dueAmount-label"><g:fieldValue bean="${this.salesMst}" field="dueAmount"/></dd>
					
				
				</g:if>
			
				
                                
                                
				<g:if test="${this.salesMst?.salesDtls}">
				
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
