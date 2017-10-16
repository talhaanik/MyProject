<%@ page import="com.shop.account.MakePayment" %>
<!DOCTYPE html>
<html>
	<head>
		
		<g:set var="entityName" value="${message(code: 'makePayment.label', default: 'MakePayment')}" />
		
	</head>
	<body>
            <div class="form-element" style="padding-top:15px;padding-bottom:15px;">
                <div class="col-md-12 padding-0">
                    <div class="col-md-12">
                    <div class="panel form-element-padding">
                        <div class="panel-heading">
                            <h4><g:message code="default.edit.label" args="[entityName]" /></h4>
                        </div>
                         <div class="panel-body">
                            <div class="col-md-12">
                                <g:link class="btn btn-primary pull-right"  action="index"  onclick="ajxCallItem(jQuery(this),'content');return false;">
                                    <i class="fa fa-arrow-left"></i>
                                    </g:link>
                                    <g:link class="btn btn-primary pull-right" onclick="ajxCallItem(jQuery(this),'content');return false;" 
                                         action="create">
                                        <i class="fa fa-plus"></i></g:link>
                                </div> 
                                <div class="col-md-12">
                                    
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${this.makePayment}">
			<ul class="errors" role="alert">
				<g:eachError bean="${this.makePayment}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:this.makePayment, action:'update']" onsubmit="ajxSubmit(jQuery(this),'content');return false;" method="PUT" >
				<g:hiddenField name="version" value="${this.makePayment?.version}" />
				
					<g:render template="form"/>
				<div class="form-group">
				  <input class="submit btn btn-success pull-right"  type="button" value="${message(code: 'default.button.create.label', default: 'Update')}" />
				/div>	
				
			</g:form>
		</div>
                            </div>
                     
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
