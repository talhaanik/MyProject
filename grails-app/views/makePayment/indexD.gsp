<!DOCTYPE html>
<html>
    <head>
        
        <g:set var="entityName" value="${message(code: 'makePayment.label', default: 'MakePayment')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-makePayment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                
                <li><g:link class="create" onclick="ajxCallItem(jQuery(this),'menu_makePayment');return false;" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-makePayment" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
         <g:render template="table"/>
        </div>
    </body>
</html>
