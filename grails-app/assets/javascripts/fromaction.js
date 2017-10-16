/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function submitfun(){
			var frm = $("#editFrm");
       			console.log(frm.attr('method'));
			console.log(frm.attr('action'));

       			 $.ajax({
            			type: frm.attr('method'),
           			url: frm.attr('action'),
            			data: frm.serialize(),
            			success: function (data) {
                                $("#content").html("");
                		$("#content").html(data);
                	
            			},
            			error: function (data) {
                		console.log('An error occurred.');
                		console.log(data);
           			 }
        		});
 
    }
    
    function ajxSubmit(fromObj,target){
        var frm = fromObj;
       			console.log(frm.attr('method'));
			console.log(frm.attr('action'));

       			 $.ajax({
            			type: frm.attr('method'),
           			url: frm.attr('action'),
            			data: frm.serialize(),
            			success: function (data) {
                                $("#"+target).html("");
                		document.getElementById(target).innerHTML = data;
                	
            			},
            			error: function (data) {
                		console.log('An error occurred.');
                		console.log(data);
           			 }
        		});
    }
    function submitfunName(name){
        console.log(name);
			var frm = $(name);
       			console.log(frm.attr('method'));
			console.log(frm.attr('action'));

       			 $.ajax({
            			type: frm.attr('method'),
           			url: frm.attr('action'),
            			data: frm.serialize(),
            			success: function (data) {
                                $("#home").html("");
                		$("#home").html(data);
                	
            			},
            			error: function (data) {
                		console.log('An error occurred.');
                		console.log(data);
           			 }
        		});
 
    }