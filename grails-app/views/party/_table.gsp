<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>

        <util:remoteSortableColumn property="id"  title="${message(code: 'book.id.label', default: 'Id')}" params="[type: params.type]" update="content" action="index"/>

        <util:remoteSortableColumn property="name" title="${message(code: 'book.author.label', default: 'Name')}" params="[type: params.type]" update="content" action="index"/>

        <util:remoteSortableColumn property="contractPrsnNm" title="${message(code: 'book.name.label', default: 'Contact Person')}" params="[type: params.type]" update="content" action="index"/>

        <util:remoteSortableColumn property="mobile" title="${message(code: 'book.price.label', default: 'Mobile')}" params="[type: params.type]" update="content" action="index"/>
         <util:remoteSortableColumn property="clsiPartyType" title="${message(code: 'book.price.label', default: 'Party Type')}" params="[type: params.type]" update="content" action="index"/>
        <th>Action</th>
        </tr>
        </thead>
        <tbody>
            <g:each in="${partyList}" status="i" var="partyInstance">
                <tr>

                    <td>${i+1}<g:hiddenField name="id" id="iid${i}" value="${partyInstance?.id}" /></td>

                    <td>${fieldValue(bean: partyInstance, field: "name")}</td>

                    <td>${fieldValue(bean: partyInstance, field: "contractPrsnNm")}</td>

                    <td>${fieldValue(bean: partyInstance, field: "mobile")}</td>
                     <td>${partyInstance?.clsiPartyType}</td>
                    <td>
                        <g:form resource="${partyInstance}" onsubmit="if(confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}'))ajxSubmit(jQuery(this),'content');return false;" method="DELETE">
                            <g:link class="btn btn-success" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${partyInstance?.id}" controller="party" action="show" params="[type: params.type]"><i class="fa fa-eye"></i></g:link>   
                            <g:link class="btn btn-info" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${partyInstance?.id}" controller="party" action="edit" params="[type: params.type]"><i class="fa fa-pencil"></i></g:link>   
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
    <util:remotePaginate total="${partyCount}" params="[type: params.type]" update="content" action="index" pageSizes="[2: '2 on Page',5:'5 on Page',10:'10 on Page']"  />
</div>
