/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function deleteRow(ide) {
     $("#" + ide).remove();
}
function addRow(tab_id, clrtotal) {

    var nullCount = 0;
    var rowId= $('#' + tab_id + ' >tbody >tr:last').attr("id");
    console.log(rowId);
    var prsIndx=rowId.split("_");
    var indx=Number(prsIndx[3])+1;
   // var indx = $('#' + tab_id + ' >tbody >tr').length;
    var ro = $("<tr id='" + tab_id + "_row_" + indx + "'></tr>");
    var selectedValu;
    $('#' + tab_id + ' >tbody >tr:first >td').each(function (i, x) {
        var element = $(x).children().first().clone();
        var name = $(x).children().first().attr("name");
        var dname = name.split("_");
        if (element.is("select")) {


            var eid = $(x).children().first().attr("id");

            selectedValu = $("#" + eid + " option:selected").val();
            if (selectedValu == '') {
                nullCount++;
            }


            var selectedText = $("#" + eid + " option:selected").text();
            $("#d2").text(selectedText);
            var displayText = $("<input>").attr({
                "value": selectedText,
                "readonly": "true",
                "name": "vtext" + indx,
                "type": "text"
            });

            var hiddenId = $("<input>").attr({
                "value": selectedValu,
                "id": selectedValu,
                "readonly": "true",
                "name": dname[0] + "[" + indx + "]." + dname[1],
                "type": "hidden"
            });
            var col = $("<td></td>").append(displayText, hiddenId);
            $(col).appendTo(ro);

        } else if (element.is("button")) {
            if(clrtotal==''){
                 $(element).attr({
                "onclick": "deleteRow('" + tab_id + "_row_" + indx + "');return false;"
            });
            }else{
                 $(element).attr({
                "onclick": "" + clrtotal + "(" + indx + ");deleteRow('" + tab_id + "_row_" + indx + "');return false;"
            });
            }

           
            $(element).text("Remove");
            var col = $("<td></td>").append(element);
            $(col).appendTo(ro);

        } else {
            if ($(element).val() == '') {
                nullCount++;
            }
            
            $(element).attr({
                "value": $(element).val(),
                "name": dname[0] + "[" + indx + "]." + dname[1],
                "id": dname[0] + "[" + indx + "]." + dname[1],
                "readonly": "true"
            });
            var col = $("<td></td>").append(element);
            $(col).appendTo(ro);
        }

    });
    if ($("#" + selectedValu).is("input") || nullCount > 0) {
        alert("Item exist in list");
        return false;
    }
    $('#' + tab_id + ' >tbody').append(ro);
return true;

}
function calTotal() {
    var qty = $("#purchasesDtls_qty").val();
    var uprice = $("#purchasesDtls_unitPrice").val();
    $("#purchasesDtls_total").val(qty * uprice);
}

function clearTotal(index) {

    var jsv = document.getElementById("purchasesDtls[" + index + "].total").value;
    var total = Number($("#totalBill").val());
    var totalInRow = Number(jsv);
    $("#totalBill").val(total - totalInRow);

}
function calTotalOfTotal() {
    var total = Number($("#totalBill").val());
    var totalInRow = Number($("#purchasesDtls_total").val());
    $("#totalBill").val(total + totalInRow);
    $("#purchasesDtls_total").val('');
    $("#purchasesDtls_qty").val('');
    $("#purchasesDtls_unitPrice").val('');
}

function slscalTotal() {
    var qty = $("#salesDtls_qty").val();
    var uprice = $("#salesDtls_unitPrice").val();
    $("#salesDtls_total").val(qty * uprice);
}

function slsclearTotal(index) {

    var jsv = document.getElementById("salesDtls[" + index + "].total").value;
    var total = Number($("#totalBill").val());
    var totalInRow = Number(jsv);
    $("#totalBill").val(total - totalInRow);

}
function slscalTotalOfTotal() {
    var total = Number($("#totalBill").val());
    var totalInRow = Number($("#salesDtls_total").val());
    $("#totalBill").val(total + totalInRow);
    $("#salesDtls_total").val('');
    $("#salesDtls_qty").val('');
    $("#salesDtls_unitPrice").val('');
}