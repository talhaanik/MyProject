/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 function ajxCallItem(obj,target){
           
	console.log(obj); 
            
            $.ajax({
            url: obj.attr("href"),
            type:"post",
            dataType: 'html',
          
            success: function(data) {
                document.getElementById(target).innerHTML ="";
		document.getElementById(target).innerHTML = data;
                initialize();
            },
            error: function(xhr){
               
		$("item_details").html(xhr.responseText);
            }
        });
        
            }

function initialize(){

$(".select2-A").select2({
      placeholder: "Select a state",
      allowClear: true
    });
console.log("init complite"); 
$( "#datepicker" ).datepicker({
	inline: true,
        dateFormat: 'dd/mm/yy'
});
   $( function() {
    
    $( "#auto" ).autocomplete({
      source: "/productVendor/vendorList",
       focus: function( event, ui ) {
                  $( "#auto" ).val( ui.item.label );
                     return false;
               },
         select: function (event, ui ) {
             $("#vendoeId").val(ui.item.value);
             $("#auto").val(ui.item.label);
        console.log('You selected: ' + ui.item.label+ ', ' + ui.item.value );
        return false;
    }
    });
    
    
     $( "#pur_auto" ).autocomplete({
      source: "/stockItem/itemlist",
       focus: function( event, ui ) {
                  $( "#pur_auto" ).val( ui.item.label );
                     return false;
               },
         select: function (event, ui ) {
             $("#stockItemId").val(ui.item.value);
             $("#pur_auto").val(ui.item.label);
        console.log('You selected: ' + ui.item.label+ ', ' + ui.item.value );
        return false;
    }
    });
  } );
  



  
}
function onChangeSelect(val,url,target){
     $.ajax({
            url: url,
            type:"post",
            dataType: 'html',
            data:{key:val},
            success: function(data) {
                document.getElementById(target).innerHTML ="";
		document.getElementById(target).innerHTML = data;
                initialize();
            },
            error: function(xhr){
               
		$("item_details").html(xhr.responseText);
            }
        });
}