<%@ page import="com.shop.purchases.PurchasesMst" %>



<div class="row" >
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.purchasesMst, field: 'party', 'error')} ">
            <label for="supplier" class="col-md-2">
                <g:message code="purchasesMst.supplier.label" default="Supplier" />

            </label>
            <div class="col-md-10">
                <g:select id="supplier" class="form-control many-to-one" name="party.id" from="${com.shop.core.CodeListItem.findByClsiCode("SUPP")?.parties}" optionKey="id" optionValue="name" value="${this.purchasesMst?.party?.id}"  noSelection="['null': '']"/>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.purchasesMst, field: 'totalBill', 'error')} required">
            <label for="totalBill" class="col-md-2">
                <g:message code="purchasesMst.totalBill.label" default="Total Bill" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:field name="totalBill" class="form-control" value="${fieldValue(bean: this.purchasesMst, field: 'totalBill')}" readonly required=""/>
            </div>
        </div>
    </div>
</div>


<div class="row" >
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.purchasesMst, field: 'supplierNm', 'error')} required">
            <label for="supplierNm" class="col-md-2">
                <g:message code="purchasesMst.supplierNm.label" default="Supplier Nm" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:textField name="supplierNm" class="form-control" required="" value="${this.purchasesMst?.supplierNm}"/>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.purchasesMst, field: 'paidAmount', 'error')} required">
            <label class="col-md-2" for="paidAmount">
                <g:message code="purchasesMst.paidAmount.label" default="Paid Amount" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:field name="paidAmount" class="form-control" value="${fieldValue(bean: this.purchasesMst, field: 'paidAmount')}" required=""/>
            </div>
        </div>
    </div>
</div>

                
 <div class="row" >
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.purchasesMst, field: 'prchDate', 'error')} required">
            <label class="col-md-2"  for="prchDate">
                <g:message code="purchasesMst.prchDate.label" default="Prch Date" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:field type="text" name="prchDate" class="form-control" id="datepicker" value="${this.purchasesMst?.prchDate}"/>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: this.purchasesMst, field: 'dueAmount', 'error')} required">
            <label class="col-md-2" for="dueAmount">
                <g:message code="purchasesMst.dueAmount.label" default="Due Amount" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-md-10">
                <g:field name="dueAmount" class="form-control" value="${fieldValue(bean: this.purchasesMst, field: 'dueAmount')}" required=""/>
            </div>
        </div>
    </div>
</div>















<%--div class="fieldcontain ${hasErrors(bean: this.purchasesMst, field: 'purchasesDtls', 'error')} ">
        <label for="purchasesDtls">
                <g:message code="purchasesMst.purchasesDtls.label" default="Purchases Dtls" />
                
        </label>
        
<ul class="one-to-many">
<g:each in="${purchasesMstInstance?.purchasesDtls}" var="p">
    <li><g:link controller="purchasesDtl" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="purchasesDtl" action="create" params="['purchasesMst.id': purchasesMstInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'purchasesDtl.label', default: 'PurchasesDtl')])}</g:link>
</li>
</ul>

</div--%>


