<%@ page import="com.shop.core.Party" %>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: this.party, field: 'clsiPartyType', 'error')} ">
            <label for="party" class="col-sm-2 control-label text-right">
                <g:message code="salesMst.party.label" default="Party Type" />

            </label>
             <div class="col-sm-10">
            <g:select id="clsiPartyType" name="clsiPartyType.id" from="${com.shop.core.CodeList.findByClsCode("PRTY")?.codeListItems}" 
            optionKey="id" value="${this.party?.clsiPartyType?.id}" 
                optionValue="clsiName"
                class="many-to-one form-control" />
             </div>
        </div>
        </div>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: this.party, field: 'contractPrsnNm', 'error')} ">
	<label for="contractPrsnNm" class="col-sm-2 control-label text-right">
		<g:message code="party.contractPrsnNm.label" default="Contract Prsn Nm" />
		
	</label>
         <div class="col-sm-10">
	<g:textField class="form-control" name="contractPrsnNm" value="${this.party?.contractPrsnNm}"/>
         </div>
</div>
</div>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: this.party, field: 'name', 'error')} required">
	<label for="name" class="col-sm-2 control-label text-right">
		<g:message code="party.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
         <div class="col-sm-10">
	<g:textField class="form-control" name="name" required="" value="${this.party?.name}"/>
         </div>
</div>
</div>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: this.party, field: 'mobile', 'error')} required">
	<label for="mobile" class="col-sm-2 control-label text-right">
		<g:message code="party.mobile.label" default="Mobile" />
		<span class="required-indicator">*</span>
	</label>
         <div class="col-sm-10">
	<g:textField class="form-control" name="mobile" required="" value="${this.party?.mobile}"/>
         </div>
</div>
</div>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: this.party, field: 'address', 'error')} required">
	<label for="address" class="col-sm-2 control-label text-right">
		<g:message code="party.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
         <div class="col-sm-10">
	<g:textField class="form-control" name="address" required="" value="${this.party?.address}"/>
         </div>
</div>

</div>

