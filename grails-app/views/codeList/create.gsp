<!DOCTYPE html>
<html>
    <head>
        
        <g:set var="entityName" value="${message(code: 'codeList.label', default: 'CodeList')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-codeList" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                
                <li><g:link class="back" onclick="ajxCallItem(jQuery(this),'menu_codeList');return false;" action="index">Back</g:link></li>
            </ul>
        </div>
        <div id="create-codeList" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.codeList}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.codeList}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save" onsubmit="ajxSubmit(jQuery(this),'menu_codeList');return false;">
                <fieldset class="form">
                   <g:render template="form"/>
                  <g:render template="details"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
