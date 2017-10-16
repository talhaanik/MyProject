<div class="row" >
    <table id="sales_dtl" class="table table-bordered">
        <thead>
            <tr>
                <th>
                    <label for="stockItem">
                        <g:message code="salesDtl.stockItem.label" default="Item" />
                        <span class="required-indicator">*</span>
                    </label>
                </th>
                <th>
                    <label for="qty">
                        <g:message code="salesDtl.qty.label" default="Qty" />
                        <span class="required-indicator">*</span>
                    </label>
                </th>
                <th>
                    <label for="unitPrice">
                        <g:message code="salesDtl.unitPrice.label" default="Unit Price" />
                        <span class="required-indicator">*</span>
                    </label>
                </th>
                <th>
                    <label for="unit">
                        <g:message code="salesDtl.unitPrice.label" default="Unit" />
                        <span class="required-indicator">*</span>
                    </label>
                </th>
                <th>
                    <label for="unitPrice">
                        <g:message code="salesDtl.unitPrice.label" default="Total" />
                       
                    </label>
                </th>
                <th>
                </th>
            </tr>   
        </thead>
        <tbody>
            <tr id="sales_dtl_row_-1">
                <td><g:select id="stockItem" name="salesDtls_stockItem.id" 
                    from="${com.shop.core.StockItem.list()}" 
                        optionKey="id" optionValue="itemName" 
                        value="" class="select2-A"/>
                </td>
                <td>
                    <g:field class="form-control" onkeyup="slscalTotal()" name="salesDtls_qty" value="" />
                </td>
                <td>
                    <g:field class="form-control" onkeyup="slscalTotal()" name="salesDtls_unitPrice" value="" />
                </td>
                <td><g:select class="form-control " id="slsunit" name="salesDtls_slsUnit.id" from="${com.shop.core.CodeList.findByClsCode("UNIT",)?.codeListItems}" optionKey="id"  value=""/></td>
                 <td>
                    <g:field class="form-control" name="salesDtls_total" value="" />
                </td>
                <td>
                    <button type="button" name="dpr_btn" onclick="if(addRow('sales_dtl','slsclearTotal')){slscalTotalOfTotal();};return false;" class="btn btn-primary"><i class="fa fa-plus"></i></button>
                </td>
            </tr>
            <g:each in="${this.salesMst.salesDtls}" status="i" var="salesDtls">
                <tr id="sales_dtl_row_${i}">

                    <td><g:field class="form-control" name="salesDtls[${i}].id" value="${salesDtls?.id}" type="hidden" />
                        <g:select id="stockItem" name="salesDtls[${i}].stockItem.id" 
                        from="${com.shop.core.StockItem.list()}" 
                            optionKey="id" optionValue="itemName" 
                        value="${salesDtls?.stockItem?.id}" class="form-control"/>
                    </td>

                    <td><g:field class="form-control" name="salesDtls[${i}].qty" value="${salesDtls?.qty}" /></td>

                    <td><g:field class="form-control" name="salesDtls[${i}].unitPrice" value="${salesDtls?.unitPrice}" /></td>
                    <td><g:select class="form-control " id="slsunit" name="purchasesDtls[${i}].slsUnit.id" 
                        from="${com.shop.core.CodeList.findByClsCode("UNIT",)?.codeListItems}" optionKey="id"  
                        value="${salesDtls?.slsUnit?.id}"/></td>
                    <td><g:field class="form-control" name="salesDtls[${i}].total" value="${salesDtls?.unitPrice*salesDtls?.qty}" /></td>
                    <td>Delete</td>


                </tr>
            </g:each>
        </tbody>
    </table>



</div>
<div class="row" >

</div>
<script>

</script>