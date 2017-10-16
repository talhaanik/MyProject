<%@ page import="com.shop.account.ReceivePayment" %>
<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.receivePayment, field: 'rcvFrom', 'error')} required">
            <label class="col-sm-2 control-label text-right" for="rcvFrom">
                <g:message code="receivePayment.rcvFrom.label" default="Receive From" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:select id="rcvFrom" name="rcvFrom" class="form-control" from="${com.shop.core.CodeList.findByClsCode("PRTY")?.codeListItems}" 
                onchange="onChangeSelect(jQuery(this).val(),'${createLink(controller:'party',action:'updatePartyCombo')}','customer')"
                optionKey="id" required="" value="${this.receivePayment?.rcvFrom}" />
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.receivePayment, field: 'customer', 'error')} required">
            <label class="col-sm-2 control-label text-right" for="customer">
                <g:message code="receivePayment.customer.label" default="Name" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:select id="customer" style="width:100%" class="select2-A" name="customer.id" from="${com.shop.core.Party.list()}" optionKey="id" optionValue="name" required="" value="${this.receivePayment?.customer?.id}"/>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.receivePayment, field: 'rcvAmount', 'error')} required">
            <label class="col-sm-2 control-label text-right" for="rcvAmount">
                <g:message code="receivePayment.rcvAmount.label" default="Amount" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:field name="rcvAmount" class="form-control" value="${fieldValue(bean: this.receivePayment, field: 'rcvAmount')}" required=""/>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.receivePayment, field: 'rcvDate', 'error')} required">
            <label class="col-sm-2 control-label text-right" for="rcvDate">
                <g:message code="receivePayment.rcvDate.label" default="Date" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:field type="text" class="form-control" name="rcvDate"  id="datepicker" value="${this.receivePayment?.rcvDate}"/>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.receivePayment, field: 'rcvNote', 'error')} required">
            <label class="col-sm-2 control-label text-right" for="rcvNote">
                <g:message code="receivePayment.rcvNote.label" default="Note" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:textArea name="rcvNote" class="form-control" required="" value="${this.receivePayment?.rcvNote}"/>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.receivePayment, field: 'rcvPurpose', 'error')} required">
            <label class="col-sm-2 control-label text-right" for="rcvPurpose">
                <g:message code="receivePayment.rcvPurpose.label" default="Purpose" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:select id="rcvPurpose" class="form-control" name="rcvPurpose.id" from="${com.shop.core.CodeList.findByClsCode("PAYRCV",)?.codeListItems}" optionKey="id" required="" value="${this.receivePayment?.rcvPurpose?.id}"/>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.receivePayment, field: 'rcvType', 'error')} required">
            <label class="col-sm-2 control-label text-right" for="rcvType">
                <g:message code="receivePayment.rcvType.label" default="Type" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:select id="rcvType" class="form-control" name="rcvType" from="${com.shop.core.CodeList.findByClsCode("TRSN")?.codeListItems}" 

                optionValue="clsiName" required="" value="${this.receivePayment?.rcvType}" />
            </div>
        </div>
    </div>
</div>

