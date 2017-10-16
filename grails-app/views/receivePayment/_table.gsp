<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>

        <util:remoteSortableColumn property="id" title="${message(code: 'book.id.label', default: 'Id')}" update="content" action="index"/>

        <util:remoteSortableColumn property="customer" title="${message(code: 'book.author.label', default: 'From')}" update="content" action="index"/>

        <util:remoteSortableColumn property="rcvDate" title="${message(code: 'book.name.label', default: 'Date')}" update="content" action="index"/>

        <util:remoteSortableColumn property="rcvAmount" title="${message(code: 'book.price.label', default: 'Amount')}" update="content" action="index"/>
         <util:remoteSortableColumn property="rcvType" title="${message(code: 'book.price.label', default: 'Type')}" update="content" action="index"/>
        <th>Action</th>
        </tr>
        </thead>
        <tbody>
            <g:each in="${receivePaymentList}" status="i" var="receivePaymentInstance">
                <tr>

                    <td>${i+1}<g:hiddenField name="id" id="iid${i}" value="${receivePaymentInstance?.id}" /></td>

                    <td>${fieldValue(bean: receivePaymentInstance, field: "customer")}</td>

                    <td><g:formatDate date="${receivePaymentInstance?.rcvDate}" formate="dd-MM-yyyy" /></td>

                    <td>${fieldValue(bean: receivePaymentInstance, field: "rcvAmount")}</td>
                     <td>${receivePaymentInstance?.rcvType}</td>
                    <td>
                        <g:form resource="${receivePaymentInstance}" onsubmit="if(confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}'))ajxSubmit(jQuery(this),'content');return false;" method="DELETE">
                            <g:link class="btn btn-success btn-sm" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${receivePaymentInstance?.id}" controller="receivePayment" action="show"><i class="fa fa-eye"></i></g:link>   
                            <g:link class="btn btn-info btn-sm" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${receivePaymentInstance?.id}" controller="receivePayment" action="edit"><i class="fa fa-pencil"></i></g:link>   
                           <button type="submit" class="btn btn-danger btn-sm">
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
    <util:remotePaginate total="${receivePaymentCount}" update="content" action="index" pageSizes="[2: '2 on Page',5:'5 on Page',10:'10 on Page']"  />
</div>
