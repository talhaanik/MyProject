<div class="row" >

    <div class="col-md-6">

        <div class="form-group ${hasErrors(bean: this.codeList, field: 'clsName', 'error')} required">
            <label class="control-label col-md-3" for="clsName">
                <g:message code="codeList.clsName.label" default="Name" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-9">
                <g:textField name="clsName" required="" value="${this.codeList?.clsName}"/>
            </div>
        </div>
    </div>
</div>

<div class="row" >
    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: this.codeList, field: 'clsCode', 'error')} required">
            <label class="control-label col-md-3" for="clsCode">
                <g:message code="codeList.clsCode.label" default="Code" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-9">
                <g:textField name="clsCode" required="" value="${this.codeList?.clsCode}"/>
            </div>
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: this.codeList, field: 'clsDscrptn', 'error')} ">
            <label class="control-label col-md-3" for="clsDscrptn">
                <g:message code="codeList.clsDscrptn.label" default="Description" />

            </label>
            <div class="col-md-9">
                <g:textField name="clsDscrptn" value="${this.codeList?.clsDscrptn}"/>
            </div>
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: this.codeList, field: 'isActive', 'error')} ">
            <label class="control-label col-md-3" for="isActive">
                <g:message code="codeList.isActive.label" default="Is Active" />

            </label>
            <div class="col-md-9">
                <g:checkBox name="isActive" value="${this.codeList?.isActive}" />
            </div>
        </div>
    </div>
</div>
