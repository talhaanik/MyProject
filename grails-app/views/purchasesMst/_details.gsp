<div class="row">
    <div class="table-responsive">
    <table id="purches_dtl" class="table table-bordered">
        <thead>
            <tr>
                <th></th>
                <th>
                    <label for="stockItem">
                        <g:message code="purchasesDtl.stockItem.label" default="Item" />
                        <span class="required-indicator">*</span>
                    </label>
                </th>
                <th>
                    <label for="qty">
                        <g:message code="purchasesDtl.qty.label" default="Qty" />
                        <span class="required-indicator">*</span>
                    </label>
                </th>
                <th>
                    <label for="unitPrice">
                        <g:message code="purchasesDtl.unitPrice.label" default="Unit Price" />
                        <span class="required-indicator">*</span>
                    </label>
                </th>
                <th>
                    <label for="unitPrice">
                        <g:message code="purchasesDtl.unitPrice.label" default="Unit" />
                        <span class="required-indicator">*</span>
                    </label>
                </th>
                <th>
                    <label for="unitPrice">
                        <g:message code="purchasesDtl.unitPrice.label" default="Total" />
                       
                    </label>
                </th>
                <th>
                </th>
            </tr>   
        </thead>
        <tbody>
            <tr id="purches_dtl_row_-1">
                <td><%--g:select id="stockItem" name="purchasesDtls_stockItem.id" 
                    from="${com.shop.core.StockItem.list()}" 
                        optionKey="id" optionValue="itemName" 
                        value="" class="select2-A"/--%>
                
            <input type="hidden" id="stockItemId" name="purchasesDtls_stockItem.id" value="null" />
                </td>
                <td>
                    <input type="text" class="form-control ui-autocomplete-input" name="purchasesDtls_stockItemName" value=""  required="" id="pur_auto" />
                </td>
                <td>
                    <g:field class="form-control" onkeyup="calTotal()" name="purchasesDtls_qty" value="" />
                </td>
                <td>
                    <g:field class="form-control" onkeyup="calTotal()" name="purchasesDtls_unitPrice" value="" />
                </td>
                <td><g:select class="form-control " id="purchunit" name="purchasesDtls_prchUnit.id" from="${com.shop.core.CodeList.findByClsCode("UNIT",)?.codeListItems}" optionKey="id"  value=""/></td>
                 <td>
                    <g:field class="form-control" name="purchasesDtls_total" value="" />
                </td>
                <td>
                    <button type="button" name="dpr_btn" onclick="if(addRow('purches_dtl','clearTotal')){calTotalOfTotal();};return false;" class="btn btn-primary"><i class="fa fa-plus"></i></button>
                </td>
            </tr>
            <g:each in="${this.purchasesMst.purchasesDtls}" status="i" var="purchasesDtls">
                <tr id="purches_dtl_row_${i}">

                    <td><g:field  name="purchasesDtls[${i}].id" value="${purchasesDtls?.id}" type="hidden" />
                        <g:select id="stockItem" name="purchasesDtls[${i}].stockItem.id" 
                        from="${com.shop.core.StockItem.list()}" 
                            optionKey="id" optionValue="itemName" 
                        value="${purchasesDtls?.stockItem?.id}" class="form-control"/>
                    </td>

                    <td><g:field class="form-control" name="purchasesDtls[${i}].qty" value="${purchasesDtls?.qty}" /></td>

                    <td><g:field class="form-control" name="purchasesDtls[${i}].unitPrice" value="${purchasesDtls?.unitPrice}" /></td>
                    <td><g:select class="form-control " id="purchunit" name="purchasesDtls[${i}].prchUnit.id" 
                        from="${com.shop.core.CodeList.findByClsCode("UNIT",)?.codeListItems}" optionKey="id"  
                        value="${purchasesDtls?.prchUnit?.id}"/></td>
                    <td><g:field class="form-control" name="purchasesDtls[${i}].total" value="${purchasesDtls?.unitPrice*purchasesDtls?.qty}" /></td>
                    <td>Delete</td>


                </tr>
            </g:each>
        </tbody>
    </table>
    </div>
</div>


<div class="row" >

</div>
<script>

</script>