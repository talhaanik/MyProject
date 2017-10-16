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
            <g:each in="${this.purchasesMst.purchasesDtls}" status="i" var="purchasesDtls">
                <tr>

                    <td>${purchasesDtls?.stockItem?.itemName}</td>

                    <td>${fieldValue(bean: purchasesDtls, field: "qty")}</td>

                    <td>${fieldValue(bean: purchasesDtls, field: "unitPrice")}</td>
                    <td>${fieldValue(bean: purchasesDtls, field: "prchUnit")}</td>
                    <td>${purchasesDtls.qty*purchasesDtls.unitPrice}</td>
                  
                </tr>
            </g:each>
        </tbody>
    </table>

</div>
