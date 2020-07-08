
$( document ).ready(function($) {   
$("#converttemp").click(function(event){ 
	event.preventDefault();
	var formData = $("form.addcustomer").serializeArray();
	var customerData={};
	for(var i=0;i<formData.length;i++){
		customerData[formData[i]['name']]=formData[i]['value'];
	}
	console.log(customerData)       
	
	$.ajax({  
		type : "POST",
		contentType : "application/json",  
		//url: '${g.createLink( controller:'main', action:'conversion')}',
		url: '/CodeChallengeTwo/WebCalculator/conversion',
		data : JSON.stringify(customerData),
		dataType : 'json',				
		success : function(params) {
			$('#output').val(params[1]); 
			if(params[1]=="")
				$("#errormsg").show();
			else
				$("#errormsg").hide(); 
			console.log(params);
		},   
		error : function(e) {
			console.log("ERROR: ", e);
		},
		done : function(e) {
			console.log("DONE");         
		}
	});
});
});


