<div class="row" >
    <table id="codeList_dtl" class="table table-bordered">
        <thead>
            <tr>
                <th>
                    <label for="stockItem">
                        <g:message code="salesDtl.stockItem.label" default="Name" />
                        <span class="required-indicator">*</span>
                    </label>
                </th>
                <th>
                    <label for="qty">
                        <g:message code="salesDtl.qty.label" default="Code" />
                        <span class="required-indicator">*</span>
                    </label>
                </th>
                <th>
                    <label for="unitPrice">
                        <g:message code="salesDtl.unitPrice.label" default="Description" />
                        <span class="required-indicator">*</span>
                    </label>
                </th>
              
                <th>
                </th>
            </tr>   
        </thead>
        <tbody>
            <tr id="sales_dtl_row_-1">
                <td>
                    <g:field class="form-control" type="text" name="codeListItems_clsiName" value="" />
                </td>
                <td>
                    <g:field class="form-control"  name="codeListItems_clsiCode" value="" />
                </td>
                <td>
                    <g:field class="form-control"  name="codeListItems_clsiDscrptn" value="" />
                </td>
               
                <td>
                    <button type="button" name="dpr_btn" onclick="addRow('codeList_dtl','');return false;" class="btn-default"><g:message code="salesDtl.Add.label" default="Add" /></button>
                </td>
            </tr>
            <g:each in="${this.codeList.codeListItems}" status="i" var="codeListItems">
                <tr id="sales_dtl_row_${i}">

                    <td><g:hiddenField name="codeListItems[${i}].id" value="${codeListItems?.id}" />
                        <g:field class="form-control" name="codeListItems[${i}].clsiName" value="${codeListItems?.clsiName}" />
                    </td>

                    <td><g:field class="form-control" name="codeListItems[${i}].clsiCode" value="${codeListItems?.clsiCode}" /></td>

                    <td><g:field class="form-control" name="codeListItems[${i}].clsiDscrptn" value="${codeListItems?.clsiDscrptn}" /></td>
                    <td><g:checkBox name="codeListItems[${i}].isActive" class="form-control" value="${codeListItems?.isActive}" /></td>
                   


                </tr>
            </g:each>
        </tbody>
    </table>



</div>
<div class="row" >

</div>
<script>

</script>