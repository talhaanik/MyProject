<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>

        <util:remoteSortableColumn property="id" title="${message(code: 'book.id.label', default: 'Id')}" update="content" action="index"/>

        <util:remoteSortableColumn property="clsName" title="${message(code: 'book.author.label', default: 'Name')}" update="content" action="index"/>

        <util:remoteSortableColumn property="clsCode" title="${message(code: 'book.name.label', default: 'Code')}" update="content" action="index"/>

        <util:remoteSortableColumn property="isActive" title="${message(code: 'book.price.label', default: 'IsActive')}" update="content" action="index"/>
        <th>Action</th>
        </tr>
        </thead>
        <tbody>
            <g:each in="${codeListList}" status="i" var="codeListInstance">
                <tr>

                    <td>${i+1}<g:hiddenField name="id" id="iid${i}" value="${codeListInstance?.id}" /></td>

                    <td>${fieldValue(bean: codeListInstance, field: "clsName")}</td>

                    <td>${fieldValue(bean: codeListInstance, field: "clsCode")}</td>

                    <td>${fieldValue(bean: codeListInstance, field: "isActive")}</td>
                    <td>
                        <g:form resource="${codeListInstance}" onsubmit="if(confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}'))ajxSubmit(jQuery(this),'content');return false;" method="DELETE">
                            <g:link class="btn btn-success" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${codeListInstance?.id}" controller="codeList" action="show"><i class="fa fa-eye"></i></g:link>   
                            <g:link class="btn btn-info" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${codeListInstance?.id}" controller="codeList" action="edit"><i class="fa fa-pencil"></i></g:link>   
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
    <util:remotePaginate total="${codeListCount}" update="content" action="index" pageSizes="[2: '2 on Page',5:'5 on Page',10:'10 on Page']"  />
</div>
