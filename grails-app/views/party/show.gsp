<!DOCTYPE html>
<html>
    <head>
        <%--meta name="layout" content="main" /--%>
       <g:set var="entityName" value="${message(code: 'party.label', default: 'Customer')}" />

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
                                
                         
                <g:link class="btn btn-primary pull-right" onclick="ajxCallItem(jQuery(this),'content');return false;" params="[type: params.type]"
                    controller="party" action="create"> <i class="fa fa-plus"></i></g:link>
 <g:link class="btn btn-primary pull-right" controller="party" action="index" params="[type: params.type]"
                              onclick="ajxCallItem(jQuery(this),'content');return false;"><i class="fa fa-arrow-left"></i></g:link>
                            </div>                  

                            <div class="col-md-12">

                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <dl class="dl-horizontal">
			
				<g:if test="${this.party?.name}">
				
					<dt><g:message code="party.name.label" default="Name" /></dt>
					
						<dd ><g:fieldValue bean="${this.party}" field="name"/></dd>
					
			
				</g:if>
			
				<g:if test="${this.party?.contractPrsnNm}">
				
					<dt id="searchKeyword-label" class="property-label"><g:message code="party.contractPrsnNm.label" default="Contact person" /></dt>
					
						<dd class="property-value" aria-labelledby="searchKeyword-label"><g:fieldValue bean="${this.party}" field="contractPrsnNm"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.party?.mobile}">
				
					<dt id="qty-label" class="property-label"><g:message code="party.mobile.label" default="Mobile" /></dt>
					
						<dd class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${this.party}" field="mobile"/></dd>
					
				
				</g:if>
			
				<g:if test="${this.party?.address}">
				
					<dt id="unitPrice-label" class="property-label"><g:message code="party.address.label" default="Address" /></dt>
					
						<dd class="property-value" aria-labelledby="unitPrice-label"><g:fieldValue bean="${this.party}" field="address"/></dd>
					
				
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
