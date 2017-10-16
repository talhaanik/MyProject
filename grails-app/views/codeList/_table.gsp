<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>

        <util:remoteSortableColumn property="id" title="${message(code: 'book.id.label', default: 'Id')}" update="menu_codeList" action="index"/>

        <util:remoteSortableColumn property="clsName" title="${message(code: 'book.author.label', default: 'Name')}" update="menu_codeList" action="index"/>

        <util:remoteSortableColumn property="clsCode" title="${message(code: 'book.name.label', default: 'Code')}" update="menu_codeList" action="index"/>

        <util:remoteSortableColumn property="isActive" title="${message(code: 'book.price.label', default: 'IsActive')}" update="menu_codeList" action="index"/>
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
                        <g:form resource="${codeListInstance}" onsubmit="if(confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}'))ajxSubmit(jQuery(this),'menu_codeList');return false;" method="DELETE">
                            <g:link class="btn btn-default btn-sm" onclick="ajxCallItem(jQuery(this),'menu_codeList');return false;"  id="${codeListInstance?.id}" controller="codeList" action="show">Show</g:link>   
                            <g:link class="btn btn-default btn-sm" onclick="ajxCallItem(jQuery(this),'menu_codeList');return false;"  id="${codeListInstance?.id}" controller="codeList" action="edit">Edit</g:link>   
                            <input class="btn btn-default btn-sm" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" />

                        </g:form>

                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</div>
<div class="pagination">
    <util:remotePaginate total="${codeListCount}" update="menu_codeList" action="index" pageSizes="[2: '2 on Page',5:'5 on Page',10:'10 on Page']"  />
</div>
