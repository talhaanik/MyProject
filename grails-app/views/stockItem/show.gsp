<!DOCTYPE html>
<html>
    <head>
        <%--meta name="layout" content="main" /--%>
      <g:set var="entityName" value="${message(code: 'stockItem.label', default: 'StockItem')}" />

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
                    controller="stockItem" action="create"> <i class="fa fa-plus"></i></g:link>
 <g:link class="btn btn-primary pull-right" controller="stockItem" action="index" 
                              onclick="ajxCallItem(jQuery(this),'content');return false;"><i class="fa fa-arrow-left"></i></g:link>
                            </div>                  

                            <div class="col-md-12">

                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <dl class="dl-horizontal">
			
				<g:if test="${this.stockItem?.itemName}">
				
					<dt><g:message code="stockItem.itemName.label" default="Item Name" /></dt>
					
						<dd ><g:fieldValue bean="${this.stockItem}" field="itemName"/></dd>
					
			
				</g:if>
			
				<g:if test="${this.stockItem?.searchKeyword}">
				
					<dt id="searchKeyword-label" class="property-label"><g:message code="stockItem.searchKeyword.label" default="Search Keyword" /></dt>
					
						<dd class="property-value" aria-labelledby="searchKeyword-label"><g:fieldValue bean="${this.stockItem}" field="searchKeyword"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.stockItem?.qty}">
				
					<dt id="qty-label" class="property-label"><g:message code="stockItem.qty.label" default="Qty" /></dt>
					
						<dd class="property-value" aria-labelledby="qty-label"><g:fieldValue bean="${this.stockItem}" field="qty"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.stockItem?.unitPrice}">
				
					<dt id="unitPrice-label" class="property-label"><g:message code="stockItem.unitPrice.label" default="Unit Price" /></dt>
					
						<dd class="property-value" aria-labelledby="unitPrice-label"><g:fieldValue bean="${this.stockItem}" field="unitPrice"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.stockItem?.dataentry_date}">
				
					<dt id="dataentry_date-label" class="property-label"><g:message code="stockItem.dataentry_date.label" default="Dataentrydate" /></dt>
					
						<dd class="property-value" aria-labelledby="dataentry_date-label"><g:formatDate date="${this.stockItem?.dataentry_date}" formate="dd-MM-yyyy" /></dd>
					
				
				</g:if>
			
				<g:if test="${this.stockItem?.recupdate_date}">
				
					<dt id="recupdate_date-label" class="property-label"><g:message code="stockItem.recupdate_date.label" default="Recupdatedate" /></dt>
					
						<dd class="property-value" aria-labelledby="recupdate_date-label"><g:formatDate date="${this.stockItem?.recupdate_date}" formate="dd-MM-yyyy" /></dd>
					
				
				</g:if>
			
				<g:if test="${this.stockItem?.purchasesDtls}">
				
					<dt id="purchasesDtls-label" class="property-label"><g:message code="stockItem.purchasesDtls.label" default="Purchases Qty" /></dt>
					<dd class="property-value" aria-labelledby="purchasesDtls-label">${this.stockItem.purchasesDtls.qty.sum()}</dd>
						
					
				
				</g:if>
			
				<g:if test="${this.stockItem?.salesDtls}">
				
					<dt id="salesDtls-label" class="property-label"><g:message code="stockItem.salesDtls.label" default="Sales Qty" /></dt>
					<dd class="property-value" aria-labelledby="salesDtls-label">${this.stockItem.salesDtls.qty.sum()}</dd>
						
					
				
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
