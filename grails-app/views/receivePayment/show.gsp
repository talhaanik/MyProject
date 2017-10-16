
<!DOCTYPE html>

<html>
    <head>
        <%--meta name="layout" content="main" /--%>
         <g:set var="entityName" value="${message(code: 'receivePayment.label', default: 'ReceivePayment')}" />

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
                    controller="receivePayment" action="create"> <i class="fa fa-plus"></i></g:link>
 <g:link class="btn btn-primary pull-right" controller="receivePayment" action="index" 
                              onclick="ajxCallItem(jQuery(this),'content');return false;"><i class="fa fa-arrow-left"></i></g:link>
                            </div>                  

                            <div class="col-md-12">

                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <dl class="dl-horizontal">
			<g:if test="${this.receivePayment?.rcvFrom}">
				
					<dt id="supplier-label" class="property-label"><g:message code="receivePayment.rcvFrom.label" default="Receive From" /></dt>
					
						<dd class="property-value" aria-labelledby="supplier-label">${this.receivePayment?.rcvFrom}</dd>
					
			
				</g:if>
			
				<g:if test="${this.receivePayment?.customer}">
				
					<dt id="supplierNm-label" class="property-label"><g:message code="receivePayment.customer.label" default="Name" /></dt>
					
						<dd class="property-value" aria-labelledby="supplierNm-label"><g:fieldValue bean="${this.receivePayment}" field="customer"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.receivePayment?.rcvDate}">
				
					<dt id="prchDate-label" class="property-label"><g:message code="receivePayment.rcvDate.label" default="Date" /></dt>
					
						<dd class="property-value" aria-labelledby="prchDate-label"><g:formatDate date="${this.receivePayment?.rcvDate}" formate="dd-MM-yyyy" /></dd>
					
				
				</g:if>
			
				<g:if test="${this.receivePayment?.rcvPurpose}">
				
					<dt id="totalBill-label" class="property-label"><g:message code="receivePayment.rcvPurpose.label" default="Purpose" /></dt>
					
						<dd class="property-value" aria-labelledby="totalBill-label"><g:fieldValue bean="${this.receivePayment}" field="rcvPurpose"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.receivePayment?.rcvAmount}">
				
					<dt id="paidAmount-label" class="property-label"><g:message code="receivePayment.rcvAmount.label" default="Amount" /></dt>
					
						<dd class="property-value" aria-labelledby="paidAmount-label"><g:fieldValue bean="${this.receivePayment}" field="rcvAmount"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.receivePayment?.rcvNote}">
				
					<dt id="dueAmount-label" class="property-label"> <g:message code="receivePayment.rcvNote.label" default="Note" /></dt>
					
						<dd class="property-value" aria-labelledby="dueAmount-label"><g:fieldValue bean="${this.receivePayment}" field="rcvNote"/></dd>
					
				
				</g:if>
			
				
				<g:if test="${this.receivePayment?.rcvType}">
				
					<dt id="dueAmount-label" class="property-label"><g:message code="receivePayment.rcvType.label" default="Type" /></dt>
					
						<dd class="property-value" aria-labelledby="dueAmount-label"><g:fieldValue bean="${this.receivePayment}" field="rcvType"/></dd>
					
				
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
