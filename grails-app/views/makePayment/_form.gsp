<%@ page import="com.shop.account.MakePayment" %>

<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.makePayment, field: 'payTo', 'error')} required">
            <label class="col-md-2 control-label text-right" for="payTo">
                <g:message code="makePayment.payTo.label" default="Pay To" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">

                <g:select id="payTo" name="payTo" class="form-control" from="${com.shop.core.CodeList.findByClsCode("PRTY")?.codeListItems}" 
                onchange="onChangeSelect(jQuery(this).val(),'${createLink(controller:'party',action:'updatePartyCombo')}','party')"
                optionKey="id" required="" value="${this.makePayment?.payTo}" />
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.receivePayment, field: 'party', 'error')} required">
            <label class="col-sm-2 control-label text-right" for="party">
                <g:message code="receivePayment.party.label" default="Name" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:select id="party" style="width:100%" class="select2-A" name="party.id" from="${com.shop.core.Party.list()}" optionKey="id" optionValue="name" required="" value="${this.receivePayment?.party?.id}"/>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.makePayment, field: 'payNote', 'error')} ">
            <label class="col-md-2 control-label text-right" for="payNote">
                <g:message code="makePayment.payNote.label" default="Pay Note" />

            </label>
            <div class="col-md-10">
                <g:textArea name="payNote" cols="40" rows="5" maxlength="300" value="${this.makePayment?.payNote}" class="form-control"/>

            </div>
        </div>
    </div>
</div>



<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.makePayment, field: 'payAmount', 'error')} required">
            <label class="col-md-2 control-label text-right" for="payAmount">
                <g:message code="makePayment.payAmount.label" default="Pay Amount" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:field name="payAmount" class="form-control" value="${fieldValue(bean: this.makePayment, field: 'payAmount')}" required=""/>

            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.makePayment, field: 'payDate', 'error')} required">
            <label class="col-md-2 control-label text-right" for="payDate">
                <g:message code="makePayment.payDate.label" default="Pay Date" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:field name="payDate" class="form-control" type="text" id="datepicker" value="${fieldValue(bean: this.makePayment, field: 'payDate')}" required=""/>

            </div>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.makePayment, field: 'payType', 'error')} required">
            <label class="col-md-2 control-label text-right" for="payType">
                <g:message code="makePayment.payType.label" default="Pay Type" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">

                <g:select id="payType" class="form-control" name="payType" from="${com.shop.core.CodeList.findByClsCode("TRSN")?.codeListItems}" 

                optionValue="clsiName" required="" value="${this.makePayment?.payType}" />
            </div>
        </div>
    </div>
</div>



