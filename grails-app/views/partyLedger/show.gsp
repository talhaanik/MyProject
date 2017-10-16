<!DOCTYPE html>
<html>
    <head>
        
        <g:set var="entityName" value="${message(code: 'partyLedger.label', default: 'PartyLedger')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-partyLedger" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                
                <li><g:link class="back" onclick="ajxCallItem(jQuery(this),'menu_partyLedger');return false;" action="index">Back</g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-partyLedger" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
           <f:display bean="${this.partyLedger}"/>


        </div>
    </body>
</html>
