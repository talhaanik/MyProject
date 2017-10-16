<div class="table-responsive">
     <table id="datatables-example"  class="table table-bordered" cellspacing="0">
        <thead>
            <tr>

        <util:remoteSortableColumn property="id" title="${message(code: 'book.id.label', default: 'Id')}" update="content" action="index"/>

        <util:remoteSortableColumn property="itemName" title="${message(code: 'book.author.label', default: 'Name')}" update="content" action="index"/>

        <util:remoteSortableColumn property="qty" title="${message(code: 'book.name.label', default: 'Qty')}" update="content" action="index"/>

        <util:remoteSortableColumn property="unitPrice" title="${message(code: 'book.price.label', default: 'Unit Price')}" update="content" action="index"/>
        <util:remoteSortableColumn property="stkUnit" title="${message(code: 'book.price.label', default: 'Unit')}" update="content" action="index"/>
        <th>Action</th>
        </tr>
        </thead>
        <tbody>
            <g:each in="${stockItemList}" status="i" var="stockInstance">
                <tr>

                    <td>${i+1}<g:hiddenField name="id" id="iid${i}" value="${stockInstance?.id}" /></td>

                    <td>${fieldValue(bean: stockInstance, field: "itemName")}</td>

                    <td>${fieldValue(bean: stockInstance, field: "qty")}</td>

                    <td>${fieldValue(bean: stockInstance, field: "unitPrice")}</td>
                     <td>${fieldValue(bean: stockInstance, field: "stkUnit")}</td>
                    <td>

                        <g:form resource="${stockInstance}" onsubmit="if(confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}'))ajxSubmit(jQuery(this),'content');return false;" method="DELETE">
                            <g:link class="btn btn-success" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${stockInstance?.id}" controller="stockItem" action="show"><i class="fa fa-eye"></i></g:link>   
                            <g:link class="btn btn-info"  onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${stockInstance?.id}" controller="stockItem" action="edit"><i class="fa fa-pencil"></i></g:link>   
                            <%--input class="btn btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}"  /--%>
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
    
    
    <util:remotePaginate total="${stockItemCount}" update="content" action="index" pageSizes="[2: '2 on Page',5:'5 on Page',10:'10 on Page']"  />

</div>
