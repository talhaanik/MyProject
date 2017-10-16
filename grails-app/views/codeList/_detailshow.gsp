<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>

                <th>Name</th>
                <th>Code</th>
                <th>Description</th>
                <th>Is Active</th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${this.codeList.codeListItems}" status="i" var="codeListItems">
                <tr>

                    <td>${codeListItems?.clsiName}</td>

                    <td>${fieldValue(bean: codeListItems, field: "clsiCode")}</td>

                    <td>${fieldValue(bean: codeListItems, field: "clsiDscrptn")}</td>

                    <td>${fieldValue(bean: codeListItems, field: "isActive")}</td>
                  
                </tr>
            </g:each>
        </tbody>
    </table>

</div>
