
$(document).ready(function(){
	console.log("loaded..")
	
	$('#reg-form').on('submit',function(event){
		event.preventDefault();
		
		let form = new FormData(this);
		
		$('#submit-btn').hide();
		$('#loader').show();
		
		// send register servlet;
		$.ajax({
			url: "RegisterServlet",
			type: 'POST',
			data: form,
			
			success: function (data,textStatus,jqXHR){
				console.log(data)
				$('#submit-btn').show();
				$('#loader').hide();
				
				if(data.trim() == 'Done')
				{
					swal("Registered successfully... we are redirecting to login page")
                        .then((value) => {
                          window.location="login_page.jsp"
                       });
				}else{
				
				swal(data);
				}
			},
			error: function(jqXHR, textStatus, errorThrown){
				$('#submit-btn').show();
				$('#loader').hide();
	              swal("Something went wrong.. try again!")		
             },
			processData: false,
			contentType: false
		});
	});
});
