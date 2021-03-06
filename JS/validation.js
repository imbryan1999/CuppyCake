$(document).ready(function(){
 // For SignUp Page
   $('#checkpass').hide();
   $('#checkuser').hide();
   $('#checkfnm').hide();
   $('#checklnm').hide();
   $('#checkaddr').hide();
   $('#checkgender').hide();
   $('#checkmail').hide();
   $('#checkmob').hide();
   
 // For Contact us page  
   $('#checkfnm').hide();
   $('#checkmail').hide();
   $('#checknum').hide();
   $('#checksub').hide();
   $('#checkmsg').hide();
   
   var pass_err = true;
   var user_err = true;
   var first_err = true;
   var last_err = true;
   var addr_err = true;
   var gender_err = true;
   var email_err = true;
   var mob_err = true;
   
   // For Contact Us page
   var fnm_err = true;
   var mail_err = true;
   var num_err = true;
   var sub_err = true;
   var msg_err = true;
   
   $('#inputPassword').keyup(function(){
       password_check();
   });
   
   function password_check(){
       var pass_val = $('#inputPassword').val();
       
       if(pass_val.length == ""){
           $('#checkpass').show();
           $('#checkpass').html("**Please fill the Password");
           $('#checkpass').focus();
           $('#checkpass').css("color","red");
           $('#inputPassword').css("border","2px solid red");
           pass_err = false;
           return false;
       }
       else
       {
           $('#checkpass').hide();
           $('#inputPassword').css("border","2px solid green");
       }
       
       if((pass_val.length < 4) || (pass_val.length > 10)){
           $('#checkpass').show();
           $('#checkpass').html("**Password length must be between 4 anad 10");
           $('#checkpass').focus();
           $('#checkpass').css("color","red");
           $('#inputPassword').css("border","2px solid red");
           pass_err = false;
           return false;
       }
       else
       {
           $('#checkpass').hide();
           $('#inputPassword').css("border","2px solid green");
       }
   }
   
   $('#usernm').keyup(function(){
       username_check();
   });
   
   function username_check(){
       var user_val = $('#usernm').val();
       
       if(user_val.length == ""){
           $('#checkuser').show();
           $('#checkuser').html("**Please fill the Username");
           $('#checkuser').focus();
           $('#checkuser').css("color","red");
           $('#usernm').css("border","2px solid red");
           user_err = false;
           return false;
       }
       else
       {
           $('#checkuser').hide();  
           $('#usernm').css("border","2px solid green");
       }
       
       if((user_val.length <5)||(user_val.length > 15)){
           $('#checkuser').show();
           $('#checkuser').html("**Username length must be between 5 and 15");
           $('#checkuser').focus();
           $('#checkuser').css("color","red");
           $('#usernm').css("border","2px solid red");
           user_err = false;
           return false;
       }
       else
       {
           $('#checkuser').hide();
           $('#usernm').css("border","2px solid green");
       }
   }
   
   $('#fname').keyup(function(){
      fname_check(); 
   });
   
   function fname_check(){
       var fname_val = $('#fname').val();
       var pattern = /^[a-zA-Z]*$/;
       
       if(fname_val.length == ""){
           $('#checkfnm').show();
           $('#checkfnm').html("**Please fill the First Name");
           $('#checkfnm').focus();
           $('#checkfnm').css("color","red");
           $('#fname').css("border","2px solid red");
           first_err = false;
           return false;
       }  
       else
       {
           $('#checkfnm').hide();
           $('#fname').css("border","2px solid green");
       }
       
       if(pattern.test(fname_val) && fname_val !== ""){
           $('#checkfnm').hide();
           $('#fname').css("border","2px solid green");
       }
       else
       {
           $('#checkfnm').html("Should contain only Characters");
           $('#checkfnm').show();
           $('#checkfnm').focus();
           $('#checkfnm').css("color","red");
           $('#fname').css("border","2px solid red");
           first_err = false;
           return false;
       }
       
   }
   
   $('#lname').keyup(function(){
      lname_check(); 
   });
   
   function lname_check(){
       var lname_val = $('#lname').val();
       var pattern = /^[a-zA-z]*$/;
       
       if(lname_val.length == ""){
           $('#checklnm').show();
           $('#checklnm').html("**Please fill the Last Name");
           $('#checklnm').focus();
           $('#checklnm').css("color","red");
           $('#lname').css("border","2px solid red");
           first_err = false;
           return false;
       }  
       else
       {
           $('#checklnm').hide();
           $('#lname').css("border","2px solid green");
       }
       
       if(pattern.test(lname_val) && lname_val !== ""){
           $('#checklnm').hide();
           $('#inputPassword').css("border","2px solid green");
       }
       else
       {
           $('#checklnm').html("Should contain only Characters");
           $('#checklnm').show();
           $('#checklnm').css("color","red");
           $('#lname').css("border","2px solid red");
           last_err = false;
           return false;
       }
   }
   
   $('#addr').keyup(function(){
      addr_check(); 
   });
   
   function addr_check(){
       var addr_val = $('#addr').val();
       
       if(addr_val.length == ""){
          $('#checkaddr').show();
          $('#checkaddr').html("**Please fill the Address");
          $('#checkaddr').focus();
          $('#checkaddr').css("color","red");
          $('#addr').css("border","2px solid red");
       }
       else
       {
           $('#checkaddr').hide();
           $('#addr').css("border","2px solid green");
       }
   }
   
   $('#gender').keyup(function(){
      gender_check(); 
   });
   
   function gender_check(){
       var gender_val = $('#gender').val();
       
       if(gender_val.length == ""){
           $('#gender_val').show();
           $('#gender_val').html("**This field is required.");
           $('#gender_val').focus();
           $('#gender_val').css("color","red");
           $('#gender').css("border","2px solid red");
       }
       else
       {
           $('#gender_val').hide();
           $('#gender').css("border","2px solid green");
       }
   }
   
   $('#email').keyup(function(){
      check_email(); 
   });
   
   function check_email(){
       var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
       var email_val = $('#email').val();
       
       if(pattern.test(email_val) && email_val !== ""){
          $('#checkmail').hide();
          $('#email').css("border","2px solid green");
       }
       else
       {
           $('#checkmail').show();
           $('#checkmail').html("**Invalid Email");
           $('#checkmail').focus();
           $('#checkmail').css("color","red");
           $('#email').css("border","2px solid red");
           email_err = false;
           return false;
       }
   }
   
   
   $('#mob').keyup(function(){
      mob_check(); 
   });
   
   function mob_check(){
       var mob_val = $('#mob').val();
       var pattern = /^\d{10}$/;
       
       if(pattern.test(mob_val) && mob_val !== ""){
           $('#checkmob').hide();
           $('#mob').css("border","2px solid green");
       }
       else
       {
           $('#checkmob').show();
           $('#checkmob').html("**Invalid Number");
           $('#checkmob').focus();
           $('#checkmob').css("color","red");
           $('#mob').css("border","2px solid red");
           mob_err = false;
       }
   }
   
   //Validation for Contact Us page
   
   $('#fullnm').keyup(function(){
      fnm_check(); 
   });
   
   function fnm_check(){
       var fnm_val = $('#fullnm').val();
       var pattern = /^[a-zA-z]*$/;
       
       if(fnm_val.length == ""){
           $('#checkfnm').show();
           $('#checkfnm').html("**Please fill this field");
           $('#checkfnm').focus();
           $('#checkfnm').css("color","red");
           $('#fullnm').css("border","2px solid red");
           fnm_err = false;
           return false;
       }
       else
       {
           $('#checkfnm').hide();
           $('#fullnm').css("border","2px solid green");
       }
       
       if(pattern.test(fnm_val) && fnm_val !== ""){
           $('#checkfnm').hide();
           $('#fullnm').css("border","2px solid green");
       }
       else
       {
           $('#checkfnm').html("**Should contains only Characters");
           $('#checkfnm').show();
           $('#checkfnm').css("color","red");
           $('#fullnm').css("border","2px solid red");
           fnm_err = false;
           return false;
       }
       
   }
   
   $('#email').keyup(function(){
      email_check(); 
   });
   
   function email_check(){
       var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
       var email_val = $('#email').val();
       
       if(pattern.test(email_val) && email_val !== ""){
          $('#checkmail').hide();
          $('#email').css("border","2px solid green");
       }
       else
       {
           $('#checkmail').show();
           $('#checkmail').html("**Invalid Email");
           $('#checkmail').focus();
           $('#checkmail').css("color","red");
           $('#email').css("border","2px solid red");
           email_err = false;
           return false;
       }
   }
   
   $('#num').keyup(function(){
      mob_check(); 
   });
   
   function mob_check(){
       var mob_val = $('#num').val();
       var pattern = /^\d{10}$/;
       
       if(pattern.test(mob_val) && mob_val !== ""){
           $('#checknum').hide();
           $('#num').css("border","2px solid green");
       }
       else
       {
           $('#checknum').show();
           $('#checknum').html("**Invalid Number");
           $('#checknum').focus();
           $('#checknum').css("color","red");
           $('#num').css("border","2px solid red");
           num_err = false;
           return false;
       }
   }
   
   $('#subject').keyup(function(){
      sub_check(); 
   });
   
   function sub_check(){
       var sub_val = $('#subject').val();
       
       if(sub_val.length == ""){
           $('#checksub').show();
           $('#checksub').html("**Please fill this field");
           $('#checksub').focus();
           $('#checksub').css("color","red");
           $('#subject').css("border","2px solid red");
           sub_err = false;
           return false;
       }
       else
       {
           $('#checksub').hide();
           $('#subject').css("border","2px solid green");
       }
   }
   
   $('#message').keyup(function(){
      msg_check(); 
   });
   
   function msg_check(){
       var msg_val = $('#message').val();
       
       if(msg_val.length == ""){
           $('#checkmsg').show();
           $('#checkmsg').html("**Please fill this field");
           $('#checkmsg').focus();
           $('#checkmsg').css("color","red");
           $('#message').css("border","2px solid red");
           fnm_err = false;
           return false;
       }
       else
       {
           $('#checkmsg').hide();
           $('#message').css("border","2px solid green");
       }
   }
   
});






