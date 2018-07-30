$( document ).ready( function() {

	$( "#button" ).click( function() {

		var fname = $("#fname").val();
		var lname = $("#lname").val();
		var email = $("#email").val();
		var password = $("#password").val();
		var password1 = $("#pasword1").val();
			console.log('P'+ password);
			console.log(password1);

		if( fname == '' || lname == '' || email == '' || password == '' || password1 == '') {
			$('input[type="text"],input[type="password"]').css("border","2px solid red");
			$('input[type="text"],input[type="password"]').css("box-shadow","0 0 3px red");
			alert("Please fill all fields...!");
		}
		else if ( password !== password1 ) {
			$('input[type="text"],input[type="password"]').css("border","2px solid red");
			$('input[type="text"],input[type="password"]').css("box-shadow","0 0 3px red");
			alert("Password Mismatch...!");
		}
		else
		{
			$.post("register.php",{ email1: email, password1:password}, function( data ) {

				if( data=='Invalid Email...' ) {
					$( 'input[type="text"]' ).css( {"border":"2px solid red","box-shadow":"0 0 3px red"} );
					$( 'input[type="password"]' ).css( {"border":"2px solid #00F5FF","box-shadow":"0 0 5px #00F5FF"} );
					alert(data);
				}
				else if( data=='Email or Password is wrong...!' ) {
					$( 'input[type="text"],input[type="password"]' ).css( {"border":"2px solid red","box-shadow":"0 0 3px red"} );
					alert( data );
				}
				else if( data=='Successfully Logged in...' ) {
					$( "form" )[0].reset();
					$( 'input[type="text"],input[type="password"]' ).css( {"border":"2px solid #00F5FF","box-shadow":"0 0 5px #00F5FF"} );
					alert( data );
				}
				else {
					alert( data );
				}
			});
		}
	});
});

$(document).ready ( function () {
	$( '#check' ).click( function() {
		var uname = $("#uname").val();
		
		if( uname == '') {
			$( '#uname' ).css("border","2px solid red");
			$( '#uname' ).css( {"border":"2px solid #00F5FF","box-shadow":"0 0 5px #00F5FF"} );
			alert("Please fill the Username to Check Availability...!");
		}

	});
});