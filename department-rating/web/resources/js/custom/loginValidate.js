$(document).ready(function(){
    var validate = new FormValidator('loginForm',[
        {
            name:'email',
            display:'email',
            rules: 'required|valid_email'
        },
        {
            name:'password',
            display:'password',
            rules:'required|min_length[2]'
        }
    ],
        function(errors, event)
        {
            if(errors.length > 0)
            {
                event.preventDefault();
                var form = $('[name=loginForm]');
                form.find('.is-invalid').removeClass('is-invalid');
                form.find('.errors').remove();
                $(errors[0].element).addClass('is-invalid').after('<small class="errors text-danger">' + errors[0].message + '</small>');
                $(errors[0].element)[0].focus();
            }
            else{
                var form = $('[name=loginForm]');
                form.find('.is-invalid').removeClass('is-invalid');
                form.find('.errors').remove();
            }
        });
        
       var resetValidate = new FormValidator('resetForm',[
        {
            name:'email',
            display:'email',
            rules: 'required|valid_email'
        }
    ],
        function(errors, event)
        {
            if(errors.length > 0)
            {
                event.preventDefault();
                var form = $('[name=resetForm]');
                form.find('.is-invalid').removeClass('is-invalid');
                form.find('.errors').remove();
                $(errors[0].element).addClass('is-invalid').after('<small class="errors text-danger">' + errors[0].message + '</small>');
                $(errors[0].element)[0].focus();
            }
            else{
                var form = $('[name=resetForm]');
                form.find('.is-invalid').removeClass('is-invalid');
                form.find('.errors').remove();
            }
        });
        
        var passwordValidate = new FormValidator('passwordForm',[
        {
            name:'password',
            display:'password',
            rules: 'required|min_length[5]|max_length[32]'
        },
        {
            name:'confirmPassword',
            display:'Confirm password',
            rules: 'required|matches[password]'
        }
    ],
        function(errors, event)
        {
            if(errors.length > 0)
            {
                event.preventDefault();
                var form = $('[name=passwordForm]');
                form.find('.is-invalid').removeClass('is-invalid');
                form.find('.errors').remove();
                $(errors[0].element).addClass('is-invalid').after('<small class="errors text-danger">' + errors[0].message + '</small>');
                $(errors[0].element)[0].focus();
            }
            else{
                var form = $('[name=passwordForm]');
                form.find('.is-invalid').removeClass('is-invalid');
                form.find('.errors').remove();
            }
        });
});