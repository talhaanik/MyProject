<!DOCTYPE html>
<html>
    <head>
        
        <g:set var="entityName" value="${message(code: 'accountBlance.label', default: 'AccountBlance')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-accountBlance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                
                <li><g:link class="back" onclick="ajxCallItem(jQuery(this),'menu_accountBlance');return false;" action="index">Back</g:link></li>
                <li><g:link class="create" onclick="ajxCallItem(jQuery(this),'menu_accountBlance');return false;" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-accountBlance" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.accountBlance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.accountBlance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.accountBlance}" onsubmit="ajxSubmit(jQuery(this),'menu_accountBlance');return false;" method="PUT">
                <g:hiddenField name="version" value="${this.accountBlance?.version}" />
                <fieldset class="form">
                   <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
