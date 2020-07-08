$(document)
			.ready(
					function($) {
						$("#converttemp")
								.click(
										function(event) {
											event.preventDefault();
											var form = jQuery("#uploadfile")
													.find('input[type="file"]');
											var picData = new FormData();
											picData.append("filesList", form
													.get(0).files[0]);
											if (typeof (form.get(0).files[0]) == 'undefined'
													&& form.get(0).files[0] == null) {
												$("#error").show();
												return false;     
											}
											else{
												$("#error").hide();
											}
											$
													.ajax({
														type : "POST",
														contentType : "application/json",
														url : '/CodeChallengeOne/fileUpload/upload',
														data : picData,
														dataType : 'json',
														enctype : "multipart/form-data",
														contentType : false,
														processData : false,
														success : function(
																params) {
															$("#records_table").show(); 
															 var trHTML = '';
															 if(params[0].userId){
																 $("#tbcontent").html("");
																 $(".errorinfo").html("");
																 $.each(params, function (i, item) {
																		trHTML += '<tr><th>'+item.userId+'</th><td>' + item.coin + '</td><td>' + item.userName + '</td></tr>';	  
																});
																 
															 }
															 else{
																 $("#tbcontent").html("");
																 $(".errorinfo").html("");
																 $.each(params, function (i, item) {     
																	 trHTML +='<tr><td><div style="color:red" class="errorinfo">Error at line no: '+item+'</div></td></tr>' 
																});
															 }    
															
															$('#records_table').append(trHTML);  
											  
														},
														error : function(e) {
															console.log(
																	"ERROR: ",
																	e);
														},
														done : function(e) {
															console.log("DONE");
														}
													});
										});
					});