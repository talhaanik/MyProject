



<div class="fieldcontain ${hasErrors(bean: this.codeList, field: 'clsName', 'error')} required">
	<label for="clsName">
		<g:message code="codeList.clsName.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clsName" required="" value="${this.codeList?.clsName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: this.codeList, field: 'clsCode', 'error')} required">
	<label for="clsCode">
		<g:message code="codeList.clsCode.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clsCode" required="" value="${this.codeList?.clsCode}"/>

</div>
<div class="fieldcontain ${hasErrors(bean: this.codeList, field: 'clsDscrptn', 'error')} ">
	<label for="clsDscrptn">
		<g:message code="codeList.clsDscrptn.label" default="Description" />
		
	</label>
	<g:textField name="clsDscrptn" value="${this.codeList?.clsDscrptn}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: this.codeList, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="codeList.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${this.codeList?.isActive}" />

</div>

