<!DOCTYPE html>
<html>
    <head>
        
        <g:set var="entityName" value="${message(code: 'codeList.label', default: 'CodeList')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-codeList" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                
                <li><g:link class="back" onclick="ajxCallItem(jQuery(this),'menu_codeList');return false;" action="index">Back</g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-codeList" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
          <ol class="property-list codeList">
			
				<g:if test="${this.codeList?.clsName}">
				<li class="fieldcontain">
					<span id="clsDscrptn-label" class="property-label"><g:message code="codeList.clsDscrptn.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="clsDscrptn-label"><g:fieldValue bean="${this.codeList}" field="clsName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${this.codeList?.clsCode}">
				<li class="fieldcontain">
					<span id="clsCode-label" class="property-label"><g:message code="codeList.clsCode.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="clsCode-label"><g:fieldValue bean="${this.codeList}" field="clsCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${this.codeList?.clsDscrptn}">
				<li class="fieldcontain">
					<span id="clsName-label" class="property-label"><g:message code="codeList.clsName.label" default="Descriotion" /></span>
					
						<span class="property-value" aria-labelledby="clsName-label"><g:fieldValue bean="${this.codeList}" field="clsDscrptn"/></span>
					
				</li>
				</g:if>
			
				
			
				<g:if test="${this.codeList?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="codeList.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${this.codeList?.isActive}" /></span>
					
				</li>
				</g:if>
                                <g:if test="${this.codeList?.codeListItems}">
				<li class="fieldcontain">
					<g:render template="detailshow"/>
				</li>
				</g:if>
			
			</ol>


        </div>
    </body>
</html>
