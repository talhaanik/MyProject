<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>

        <util:remoteSortableColumn property="id" title="${message(code: 'book.id.label', default: 'Id')}" update="content" action="index"/>

        <util:remoteSortableColumn property="supplierNm" title="${message(code: 'book.author.label', default: 'Supplier')}" update="content" action="index"/>

        <util:remoteSortableColumn property="prchDate" title="${message(code: 'book.name.label', default: 'Date')}" update="content" action="index"/>

        <util:remoteSortableColumn property="dueAmount" title="${message(code: 'book.price.label', default: 'Due')}" update="content" action="index"/>
        <th>Action</th>
        </tr>
        </thead>
        <tbody>
            <g:each in="${purchasesMstList}" status="i" var="purchasesMstInstance">
                <tr>

                    <td>${i+1}<g:hiddenField name="id" id="iid${i}" value="${purchasesMstInstance?.id}" /></td>

                    <td>${fieldValue(bean: purchasesMstInstance, field: "supplierNm")}</td>

                    <td><g:formatDate date="${purchasesMstInstance?.prchDate}" formate="dd-MM-yyyy" /></td>

                    <td>${fieldValue(bean: purchasesMstInstance, field: "dueAmount")}</td>
                    <td>
                        <g:form resource="${purchasesMstInstance}" onsubmit="if(confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}'))ajxSubmit(jQuery(this),'content');return false;" method="DELETE">
                            <g:link class="btn btn-success" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${purchasesMstInstance?.id}" controller="purchasesMst" action="show"><i class="fa fa-eye"></i></g:link>   
                            <g:link class="btn btn-info" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${purchasesMstInstance?.id}" controller="purchasesMst" action="edit"><i class="fa fa-pencil"></i></g:link>   
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
    <util:remotePaginate total="${purchasesMstCount}" update="content" action="index" pageSizes="[2: '2 on Page',5:'5 on Page',10:'10 on Page']"  />
</div>
