$(document).ready(function(){
//   var product_id=$('input[name=product_id]').val();
//   alert (product_id);
    $(".checkdomain").blur(function()
    {       
    /* minim 3 characters*/
        var option  = $(this).val();   
        var product_id=$('input[name=product_id]').val();
        alert(product_id)
        console.log(product_id);
        if(option.length < 3)
        {
            $("#result_name").html('<span class="error"> <i class="fa fa-exclamation-triangle icon checkko alert-danger"></i> <em>El nombre de usuario tiene que tener mínimo 3 carácteres</em></span>');
      console.log(option);
        }
 
        else if(option.length > 2)
        {       
            $("#result_name").html('<i class="fa fa-spinner fa-pulse fa-2x fa-fw margin-bottom"></i>');
            
            /*$.post("username-check.php", $("#reg-form").serialize())
                .done(function(data){
                $("#result").html(data);
            });*/
            
            $.ajax({
                
                type : 'POST',
                url  : 'catalog/view/theme/maadix-theme/proc/check_subdomain.php',
                //data : $(this).serialize(),
                //data: { option: option, product_id: product_id },
                data: "option="+option+"&product_id="+product_id,
                success : function(data)
                          {
                             $("#result_name").html(data);
              console.log(data);
                          }
                });
                return false;
            
        }
        else
        {
            $("#result_name").html('');
        }
    });

});
