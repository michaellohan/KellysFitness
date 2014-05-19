<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head><!-- Created by Artisteer v4.1.0.59861 -->
    <meta charset="utf-8">
    <title>Admin</title>
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="style.css" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="style.responsive.css" media="all">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>

    <script src="jquery.js"></script>
    <script src="script.js"></script>
    <script src="script.responsive.js"></script>
<c:forEach var="member" items="${memberList}" >

<script type="text/javascript">
function edit_button(clicked_id)
{
	$.post( "EditDeleteController", { memId: clicked_id, type: "edit"},
	function(data,status){
		
		
		console.log(data);
		
		document.getElementById("firstName").value = "${member.firstName}";
		document.getElementById("lastName").value = "${member.lastName}";
		document.getElementById("email").value = "${member.email}";
		document.getElementById("phoneNum").value = "${member.phoneNum}";
		document.getElementById("street").value = "${member.street}";
		document.getElementById("town").value = "${member.town}";
		document.getElementById("county").value = "${member.county}";
		document.getElementById("dob").value = "${member.dob}";
	
		
	  });
	$("#input").show((1000));
	 
     
}

function delete_button(clicked_id)
{
	
    $.post( "EditDeleteController", { memId: clicked_id, type: "delete"} );
  
}




</script>



<style>.art-content .art-postcontent-0 .layout-item-0 { margin-bottom: 10px;  }
.art-content .art-postcontent-0 .layout-item-1 { border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-left-width:1px;border-top-color:#A6A6A6;border-right-color:#A6A6A6;border-bottom-color:#A6A6A6;border-left-color:#A6A6A6;  }
.art-content .art-postcontent-0 .layout-item-2 { padding-right: 10px;padding-left: 10px;  }
.ie7 .art-post .art-layout-cell {border:none !important; padding:0 !important; }
.ie6 .art-post .art-layout-cell {border:none !important; padding:0 !important; }

</style></head>
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
    <ul class="art-hmenu"><li><a href="home-2.html" class="">Home</a></li><li><a href="about.html" class="">About</a></li><li><a href="contact-us.html" class="">Contact Us</a></li><li><a href="membership.html" class="">Membership</a></li><li><a href="login.html" class="">Login</a></li></ul> 
    </nav>
<div class="art-sheet clearfix">
            <div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content"><article class="art-post art-article">
                                <h2 class="art-postheader">Admin</h2>
                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout-wrapper layout-item-0">
<div class="art-content-layout layout-item-1">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-2" style="width: 100%" >
        <table class="art-article art-preview-show-borders-table" style="width: 100%; ">
    
     
            <c:forEach var="member" items="${memberList}" >
                <tr>
                 
                   <form name="${member.memId}" id="${member.memId}" action=EditDeleteController method="post"><tbody><tr><td style="width: 25%; " class="art-preview-show-borders-cell" >Name:  ${member.firstName} ${member.lastName}  Member ID: <label id="memeId" name="memID" >${member.memId}</label> </td><td style="width: 25%; " class="art-preview-show-borders-cell"><br></td><td style="width: 25%; text-align: center; " class="art-preview-show-borders-cell">&nbsp;<button type="button" id="${member.memId}" onClick="edit_button(this.id)" name="edit" class="art-button">Edit</button> &nbsp;<br></td><td style="width: 25%; text-align: center; " class="art-preview-show-borders-cell">&nbsp;<button type="submit" name="delete" id="${member.memId}" onClick="delete_button(this.id)" class= "art-button">Delete</button>&nbsp;<br></td></tr><tr><td style="width: 25%; " class="art-preview-show-borders-cell">
                       </form>       
                     </tr>
            </c:forEach>

   
   </table>
   
    </div>
    </div>
</div>
</div>
<div class="art-content-layout-wrapper layout-item-0">
<div class="art-content-layout layout-item-1">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-2" style="width: 100%" >
        <table class="art-article art-preview-show-borders-table" style="width: 100%; "><tbody><tr><td style="width: 34%; text-align: center; " class="art-preview-show-borders-cell"><span style="font-size: 20px;">Find By Id:</span></td><td style="width: 33%; " class="art-preview-show-borders-cell"><input type="text"><br></td><td style="width: 33%; text-align: center; " class="art-preview-show-borders-cell">&nbsp;<a href="" class="art-button" >Find</a>&nbsp;<br></td></tr></tbody></table>
   
    </div>
    </div>
</div>
</div>
</div>
<div class="art-content-layout-wrapper layout-item-0">
<div class="art-content-layout layout-item-1">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-2" style="width: 100%" >
<div name="input" id ="input" style="display:none">
<form  id="input" class="form-horizontal" name="input" action="UpdateController" method = "post">
<fieldset>

<!-- Form Name -->
<legend>Edit Member Form</legend>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="firstName">First Name:</label> <input type="text" id="firstName" class="controls" name="firstName" value="input" placeholder="mike" class="input-medium" required>
    
  
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
    
    <input id="memId" type="hidden" value="${member.memId}">
    
</div>
<p>
<button type="submit" id="${member.memId}" onclick="update_button" name="updateMember" class="art-button">Update Member</button> 
</form>  
</div>
 </div>
    </div>
</div>
</div>
</div>

</article></div>
  
                    </div>
                </div>
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
        <p style="text-align: right;">Copyright © 2011-2012.&nbsp;</p>
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