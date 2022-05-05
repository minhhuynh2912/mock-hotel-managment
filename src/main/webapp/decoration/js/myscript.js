$(document).ready(function () {

    $.validator.addMethod("regex", function (value, element, regularExpression) {
      var re = new RegExp(regularExpression)
      return this.optional(element) || re.test(value);
    });
    
    
    $('#signInForm').validate({
        rules: {
            username: {
                required: true,
            },
            password: {
                required: true,
            }
        },
        
        
        errorPlacement: function(error, element) 
        {
               error.insertAfter(element.parent("div"))
         },
    });
    
    

    $('#registerForm').validate({
        rules: {
            username: {
                required: true,
                minlength: 5,
                maxlength: 30,
            },
            password: {
                required: true,
                minlength: 8,
                regex: /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/,
            },
            repassword: {
                required: true,
                equalTo: '#password-field',
            },
            idenityNumber: {
                required: true,
                regex: /^[0-9]{9}$/,
            }
        },
        
        messages: {
        	password: {
                regex: "Must contain at least one digit, one uppercase character and one lowercase character",
            },
            idenityNumber: {
                regex: "Must be numbers and 9 digits"
            }
        },
        
        errorPlacement: function(error, element) 
        {
               error.insertAfter(element.parent("div"))
         },
        
        
    });

});