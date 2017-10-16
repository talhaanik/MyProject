<%--new--%>
    
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
                            <h4><g:message code="default.create.label" args="[entityName]" /></h4>
                        </div>

                        <div class="panel-body">
                            <div class="col-md-12">
                                <g:link class="btn btn-primary pull-right" action="index" params="[type: params.type]" onclick="ajxCallItem(jQuery(this),'content');return false;">
                                    <i class="fa fa-arrow-left"></i>
                                    </g:link>
                                </div>                  

                            <div class="col-md-12">

                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <g:hasErrors bean="${this.stockItem}">
                                    <ul class="errors" role="alert">
                                        <g:eachError bean="${this.stockItem}" var="error">
                                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                            </g:eachError>
                                    </ul>
                                </g:hasErrors>
                               <g:form action="save" onsubmit="ajxSubmit(jQuery(this),'content');return false;">
                                    
                                        <%--f:all bean="stockItem"/--%>
                                        <g:render template="form"/>
                                   
                                   
                                        <%--g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /--%>
                                       <div class="form-group">
                                        <input class="submit btn btn-success pull-right"  type="button" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                                        
                                       </div>
                                </g:form>
                            </div>
                            </div>
                     
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
