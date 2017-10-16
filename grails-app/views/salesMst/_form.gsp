<%@ page import="com.shop.sales.SalesMst" %>

<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.salesMst, field: 'party', 'error')} ">
            <label for="party" class="col-md-2">
                <g:message code="salesMst.party.label" default="Customer" />

            </label>
            <div class="col-md-10">
                <g:select id="party" name="party.id" from="${com.shop.core.CodeListItem.findByClsiCode("CUST")?.parties}" 
                optionKey="id" value="${this.salesMst?.party?.id}" 
                    optionValue="name"
                    class="form-control many-to-one" noSelection="['null': '']"/>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.salesMst, field: 'totalBill', 'error')} required">
            <label for="totalBill" class="col-md-2">
                <g:message code="salesMst.totalBill.label" default="Total Bill" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:field class="form-control" name="totalBill" value="${fieldValue(bean: this.salesMst, field: 'totalBill')}" required=""/>
            </div>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.salesMst, field: 'customerNm', 'error')} required">
            <label for="customerNm" class="col-md-2">
                <g:message code="salesMst.customerNm.label" default="Customer Name" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:textField class="form-control" name="customerNm" required="" value="${this.salesMst?.customerNm}"/>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.salesMst, field: 'trnsportCost', 'error')} required">
            <label for="trnsportCost" class="col-md-2">
                <g:message code="salesMst.trnsportCost.label" default="Trnsport Cost" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:field class="form-control" name="trnsportCost" value="${fieldValue(bean: this.salesMst, field: 'trnsportCost')}" required=""/>
            </div>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.salesMst, field: 'salesDate', 'error')} ">
            <label for="salesDate" class="col-md-2">
                <g:message code="salesMst.salesDate.label" default="Sales Date" />

            </label>
            <div class="col-md-10">
                <g:field class="form-control" type="text" name="salesDate" id="datepicker" value="${this.salesMst?.salesDate}"/>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.salesMst, field: 'paidAmount', 'error')} required">
            <label for="paidAmount" class="col-md-2">
                <g:message code="salesMst.paidAmount.label" default="Paid Amount" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:field class="form-control" name="paidAmount" value="${fieldValue(bean: this.salesMst, field: 'paidAmount')}" required=""/>
            </div>
        </div>

    </div>
</div>
<div class="row">
    <div class="col-md-6">

    </div>
    <div class="col-md-6">  
        <div class="fieldcontain ${hasErrors(bean: this.salesMst, field: 'dueAmount', 'error')} required">
            <label for="dueAmount" class="col-md-2">
                <g:message code="salesMst.dueAmount.label" default="Due Amount" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:field class="form-control" name="dueAmount" value="${fieldValue(bean: this.salesMst, field: 'dueAmount')}" required=""/>
            </div>
        </div>

    </div>
</div>












