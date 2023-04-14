$(document).ready(function(){
	$('#register-form').submit(function(event){
		
		event.preventDefault();  // Prevent form submission
		
		// Show loader
		
		$('#loader').removeClass('hidden');
		
		// Send form data to server for registration
		
		$.ajax({
			url: '/register',
			type: 'POST',
			data: $('#register-form').serialize(),
			success: function(response){
				// Once registration is successful
				registerSuccess();
			},
			
			error: function(xhr,textStatus,errorThrown){
				
				// HANDLE ERROR (if any)
				console.error(errorThrown);
			},
			
			complete: function(){
				
				// HIDE LOADER
				
				$('#loader').addClass('hidden');
			}
			
		});
	});
});

function registerSuccess(){
	// Hide loader
	$('#loader').addClass('hidden');
	
	// SHOW SUCCESS MESSAGE
	$('#success-msg').removeClass('hidden');
	
	// Reset form (optional)
	$('register-form')[0].reset();
}