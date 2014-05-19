 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head><!-- Created by Artisteer v4.1.0.59861 -->
    <meta charset="utf-8">
    <title>Membership Form</title>
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="style.css" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="style.responsive.css" media="all">



<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript"
	src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.8.1/jquery.validate.min.js"></script>
<script type="text/javascript" src="https://js.stripe.com/v1/"></script>
<script type="text/javascript">
          Stripe.setPublishableKey('pk_test_eHUjzDkkytD3OqupLk22OcLH');
            $(document).ready(function() {
                function addInputNames() {
                    // Not ideal, but jQuery's validate plugin requires fields to have names
                    // so we add them at the last possible minute, in case any javascript 
                    // exceptions have caused other parts of the script to fail.
                    $(".card-number").attr("name", "card-number")
                    $(".card-cvc").attr("name", "card-cvc")
                    $(".card-expiry-year").attr("name", "card-expiry-year")
                }
 
                function removeInputNames() {
                    $(".card-number").removeAttr("name")
                    $(".card-cvc").removeAttr("name")
                    $(".card-expiry-year").removeAttr("name")
                }
 
                function submit(form) {
                    // remove the input field names for security
                    // we do this *before* anything else which might throw an exception
                    removeInputNames(); // THIS IS IMPORTANT!
 
                    // given a valid form, submit the payment details to stripe
                    $(form['submit-button']).attr("disabled", "disabled")
 
                    Stripe.createToken({
                        number: $('.card-number').val(),
                        cvc: $('.card-cvc').val(),
                        exp_month: $('.card-expiry-month').val(), 
                        exp_year: $('.card-expiry-year').val()
                    }, function(status, response) {
                        if (response.error) {
                            // re-enable the submit button
                            $(form['submit-button']).removeAttr("disabled")
        
                            // show the error
                            $(".payment-errors").html(response.error.message);
 
                            // we add these names back in so we can revalidate properly
                            addInputNames();
                        } else {
                            // token contains id, last4, and card type
                            var token = response['id'];
 
                            // insert the stripe token
                            var input = $("<input name='stripeToken' value='" + token + "' style='display:none;' />");
                            form.appendChild(input[0])
 
                            // and submit
                            form.submit();
                        }
                    });
                    
                    return false;
                }
                
                // add custom rules for credit card validating
                jQuery.validator.addMethod("cardNumber", Stripe.validateCardNumber, "Please enter a valid card number");
                jQuery.validator.addMethod("cardCVC", Stripe.validateCVC, "Please enter a valid security code");
                jQuery.validator.addMethod("cardExpiry", function() {
                    return Stripe.validateExpiry($(".card-expiry-month").val(), 
                                                 $(".card-expiry-year").val())
                }, "Please enter a valid expiration");
 
                // We use the jQuery validate plugin to validate required params on submit
                $("#example-form").validate({
                    submitHandler: submit,
                    rules: {
                        "card-cvc" : {
                            cardCVC: true,
                            required: true
                        },
                        "card-number" : {
                            cardNumber: true,
                            required: true
                        },
                        "card-expiry-year" : "cardExpiry" // we don't validate month separately
                    }
                });
 
                // adding the input field names is the last step, in case an earlier step errors                
                addInputNames();
            });
        </script>
<script src="js/jquery-1.7.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.3.js"></script>
<script src="js/tms_presets.js"></script>
<script src="js/cufon-yui.js"></script>
<script src="js/Asap_400.font.js"></script>
<script src="js/Coolvetica_400.font.js"></script>
<script src="js/Kozuka_M_500.font.js"></script>
<script src="js/cufon-replace.js"></script>
<script src="js/FF-cash.js"></script>

<script>
$(window).load(function(){
	$('.slider')._TMS({
	prevBu:'.prev',
	nextBu:'.next',
	pauseOnHover:true,
	pagNums:false,
	duration:800,
	easing:'easeOutQuad',
	preset:'Fade',
	slideshow:7000,
	pagination:'.pagination',
	waitBannerAnimation:false,
	banners:'fade'
	})
}) 	
</script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->


    <script src="jquery.js"></script>
    <script src="script.js"></script>
    <script src="script.responsive.js"></script>

<c:forEach var="membershipLengthAmount" items="${list}">


</head>
<body>
<div id="art-main">
<header class="art-header">


    <div class="art-shapes">

            </div>




                <div id="art-flash-area">
                    <div id="art-flash-container">
                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="800" height="400" id="art-flash-object">
                    	<param name="movie" value="container.swf">
                    	<param name="quality" value="best">
                    	<param name="scale" value="default">
                    	<param name="wmode" value="transparent">
                    	<param name="flashvars" value="color1=0xFFFFFF&amp;alpha1=.70&amp;framerate1=15&amp;loop=true&amp;wmode=transparent&amp;clip=images/flash.swf&amp;radius=15&amp;clipx=-400&amp;clipy=0&amp;initalclipw=900&amp;initalcliph=225&amp;clipw=1600&amp;cliph=400&amp;width=800&amp;height=400&amp;textblock_width=0&amp;textblock_align=no&amp;hasTopCorners=true&amp;hasBottomCorners=true">
                        <param name="swfliveconnect" value="true">
                    	<!--[if !IE]>-->
                    	<object type="application/x-shockwave-flash" data="container.swf" width="800" height="400">
                    	    <param name="quality" value="best">
                    	    <param name="scale" value="default">
                    	    <param name="wmode" value="transparent">
                        	<param name="flashvars" value="color1=0xFFFFFF&amp;alpha1=.70&amp;framerate1=15&amp;loop=true&amp;wmode=transparent&amp;clip=images/flash.swf&amp;radius=15&amp;clipx=-400&amp;clipy=0&amp;initalclipw=900&amp;initalcliph=225&amp;clipw=1600&amp;cliph=400&amp;width=800&amp;height=400&amp;textblock_width=0&amp;textblock_align=no&amp;hasTopCorners=true&amp;hasBottomCorners=true">
                            <param name="swfliveconnect" value="true">
                    	<!--<![endif]-->
                    		<div class="art-flash-alt"><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player"></a></div>
                    	<!--[if !IE]>-->
                    	</object>
                    	<!--<![endif]-->
                    </object>
                    </div>
                    </div>
                    
</header>
<nav class="art-nav">
    <ul class="art-hmenu"><li><a href="home-2.html" class="">Home</a></li><li><a href="about.html" class="">About</a></li><li><a href="contact-us.html" class="">Contact Us</a></li><li><a href="membership.html" class="">Membership</a></li><li><a href="login.jsp" class="">Login</a></li></ul> 
    </nav>
<div class="art-sheet clearfix">
            <div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content"><article class="art-post art-article">
                               
                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell" style="width: 100%" >
 
 <form class="form-horizontal" name="input" action="MembershipController" method = "post">
<fieldset>

<!-- Form Name -->
<legend>Membership Form for ${membershipLengthAmount.length} Membership</legend>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="firstName">First Name:</label> <input type="text" id="firstName" class="controls" name="firstName"  placeholder="mike" class="input-medium" required>
    
  
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="lastName">Last Name:</label>
 
    <input id="lastName" name="lastName" type="text" placeholder="smith" class="input-medium" required>
    
 
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="email">Email:</label>
 
    <input id="email" name="email" type="text" placeholder="email@email.com" class="input-medium" required>
    
 
</div>

<!-- Password input-->
<div class="control-group">
  <label class="control-label" for="password">Password:</label>
  
    <input id="password" class="controls" name="password" type="password" placeholder="password" class="input-medium" required>
    
  
</div>

<!-- Password input-->
<div class="control-group">
  <label class="control-label" for="password2">re-type Password:</label>
 
    <input id="password2" class="controls" name="password2" type="password" placeholder="password" class="input-medium" required>
    

</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="phoneNum">Phone Number:</label>
 
    <input id="phoneNum" name="phoneNum" type="text" placeholder="087 555 1234" class="input-medium" required>
    
 
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="street">Street:</label>
     <input id="street" name="street" type="text" placeholder="50 baker st" class="input-medium" required>
    
 
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="town">Town/City:</label>
 
    <input id="town" name="town" type="text" placeholder="dublin" class="input-medium" required>
    

</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="county">County:</label>
  
    <input id="county" name="county" type="text" placeholder="dublin" class="input-medium" required>
    
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="dob">Date of Birth:</label>
    <input id="dob" name="dob" type="text" placeholder="22/04/1982" class="input-medium" required>
    
    
    
</div>
<p>

</form>
   
   
   
   <div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell" style="width: 100%" >
          <script src="https://checkout.stripe.com/checkout.js"
												class="stripe-button"
												data-key="pk_test_Oh74K4gFQ22xHXTclBsYLClD"
												data-image="images/headerForStripeForm.jpg" 
												data-name="M&C GYM"
												data-description="${membershipLengthAmount.length} Membership" 
												data-currency="EUR"
												data-amount="${membershipLengthAmount.amount}">
  </script>

</p>
</fieldset>

 
  
    </div>
    </div>
</div>
</div>
   </form> 
  
    </div>
    </div>
</div>



</article></div>
    
            </div><footer class="art-footer">
<div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-0" style="width: 23%">
        <p style="font: 18px Arial;">INFO</p>
        <br>
        <ul>
        <li><a href="#">About</a></li>
        <li><a href="#">Team</a></li>
        <li><a href="#">Prospects</a></li>
        </ul>
    </div><div class="art-layout-cell layout-item-0" style="width: 23%">
        <p style="font: 18px Arial;">COMPANY</p>
        <br>
        <ul>
        <li><a href="#">Directions</a></li>
        <li><a href="#"></a><a href="#">Address</a></li>
        <li><a href="#">Contacts</a></li>
        </ul>
    </div><div class="art-layout-cell layout-item-0" style="width: 18%">
        <p style="font: 18px Arial;">FOLLOW</p>
        <br>
        <ul>
        <li><a href="#"><img width="32" height="32" alt="" src="images/rss_32.png" class=""></a>&nbsp;<a href="#"><img width="32" height="32" alt="" src="images/facebook_32.png" class=""></a>&nbsp;<a href="#"><img width="32" height="32" alt="" src="images/twitter_32.png" class=""></a></li>
        </ul>
    </div><div class="art-layout-cell layout-item-0" style="width: 36%">
        <p style="text-align: right;"><br></p>
        <p style="text-align: right;"><br></p>
        <p style="text-align: right;">Copyright Â© 2011-2012.&nbsp;</p>
        <p style="text-align: right;">All Rights Reserved.<br></p>
    </div>
    </div>
</div>

</footer>

    </div>
    <p class="art-page-footer">
        <span id="art-footnote-links"><a href="http://www.artisteer.com/" target="_blank">Web Template</a> created with Artisteer.</span>
    </p>
</div>

</c:forEach>

</body></html>