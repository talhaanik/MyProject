<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>

                <th>Name</th>
                <th>Qty</th>
                <th>Unit Price</th>
                <th>Unit</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${this.salesMst.salesDtls}" status="i" var="salesDtls">
                <tr>

                    <td>${salesDtls?.stockItem?.itemName}</td>

                    <td>${fieldValue(bean: salesDtls, field: "qty")}</td>

                    <td>${fieldValue(bean: salesDtls, field: "unitPrice")}</td>
                    <td>${fieldValue(bean: salesDtls, field: "slsUnit")}</td>

                    <td>${salesDtls.qty*salesDtls.unitPrice}</td>
                  
                </tr>
            </g:each>
        </tbody>
    </table>

</div>
