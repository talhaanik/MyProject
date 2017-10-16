<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>

        <util:remoteSortableColumn property="id" title="${message(code: 'book.id.label', default: 'Id')}" update="content" action="index"/>

        <util:remoteSortableColumn property="customerNm" title="${message(code: 'book.author.label', default: 'Customer')}" update="content" action="index"/>

        <util:remoteSortableColumn property="salesDate" title="${message(code: 'book.name.label', default: 'Date')}" update="content" action="index"/>

        <util:remoteSortableColumn property="totalBill" title="${message(code: 'book.price.label', default: 'Amount')}" update="content" action="index"/>
        <th>Action</th>
        </tr>
        </thead>
        <tbody>
            <g:each in="${salesMstList}" status="i" var="salesMstInstance">
                <tr>

                    <td>${i+1}<g:hiddenField name="id" id="iid${i}" value="${salesMstInstance?.id}" /></td>

                    <td>${fieldValue(bean: salesMstInstance, field: "customerNm")}</td>

                    <td><g:formatDate date="${salesMstInstance?.salesDate}" formate="dd-MM-yyyy" /></td>

                    <td>${fieldValue(bean: salesMstInstance, field: "totalBill")}</td>
                    <td>
                        <g:form resource="${salesMstInstance}" onsubmit="if(confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}'))ajxSubmit(jQuery(this),'content');return false;" method="DELETE">
                            <g:link class="btn btn-success" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${salesMstInstance?.id}" controller="salesMst" action="show"><i class="fa fa-eye"></i></g:link>   
                            <g:link class="btn btn-info" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${salesMstInstance?.id}" controller="salesMst" action="edit"><i class="fa fa-pencil"></i></g:link>   
                             <button type="submit" class="btn btn-danger">
                                    <i class="fa fa-close"></i>
                                </button>
                        </g:form>

                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</div>
<div class="pagination">
    <util:remotePaginate total="${salesMstCount}" update="content" action="index" pageSizes="[2: '2 on Page',5:'5 on Page',10:'10 on Page']"  />
</div>
