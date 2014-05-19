<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head><!-- Created by Artisteer v4.1.0.59861 -->
    <meta charset="utf-8">
    <title>Profile</title>
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="style.css" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="style.responsive.css" media="all">


    <script src="jquery.js"></script>
    <script src="script.js"></script>
    <script src="script.responsive.js"></script>
	<c:forEach var="member" items="${profileList}">


<style>.art-content .art-postcontent-0 .layout-item-0 { border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-left-width:1px;border-top-color:#A6A6A6;border-right-color:#A6A6A6;border-bottom-color:#A6A6A6;border-left-color:#A6A6A6;  }
.ie7 .art-post .art-layout-cell {border:none !important; padding:0 !important; }
.ie6 .art-post .art-layout-cell {border:none !important; padding:0 !important; }

</style>

<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

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
                                <h2 class="art-postheader">Profile</h2>
                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-0" style="width: 50%" >
        <p><img width="300" height="203" alt="" class="art-lightbox" src="images/${member.image}.jpg" style="margin-top: 0px; margin-bottom: 0px; "><br></p>
    </div><div class="art-layout-cell layout-item-0" style="width: 50%" >
    
        <table class="table table-bordered table-condensed" style="width: 100%; "><tbody><tr><td height="10" style="width: 50%; " class="text-center">Name:</td><td style="width: 50%; " class="text-center"><br>${member.firstName} ${member.lastName}</td></tr><tr><td style="width: 50%; " class="text-center">DOB:</td><td style="width: 50%; " class=""><br>${member.dob}</td></tr><tr><td style="width: 50%; " class="">Email:</td><td style="width: 50%; " class=""><br>${member.email}</td></tr><tr><td style="width: 50%; " class="">Street:</td><td style="width: 50%; " class=""><br>${member.street}</td></tr><tr><td style="width: 50%; " class="">Town:</td><td style="width: 50%; " class=""><br>${member.town}</td></tr><tr><td style="width: 50%; " class="">County:</td><td style="width: 50%; " class=""><br>${member.county}</td></tr><tr><td style="width: 50%; " class="">Phone Number:</td><td style="width: 50%; " class=""><br>${member.phoneNum}</td></tr><tr><td style="width: 50%; " class="">Start Date:</td><td style="width: 50%; " class=""><br></td></tr><tr><td style="width: 50%; " class="">End Date:</td><td style="width: 50%; " class=""><br></td></tr><tr><td style="width: 50%; " class="">Days Left:</td><td style="width: 50%; " class=""><br></td></tr><tr><td style="width: 50%; " class="">Extend Membership:</td><td style="text-align: center; width: 50%; " class="">&nbsp;<a href="" class="btn btn-primary btn-small" style="color:#fff">Pay Now</a>&nbsp;<br></td></tr></tbody></table>
   
    </div>
    </div>
</div>
<div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell" style="width: 100%" >
        <p><span style="font-size: 22px; text-shadow: rgba(23, 23, 23, 0.496094) 1.4px 1.4px 0px; color: #F665F6;">About Me:</span></p><form name="update" action="UpdateController" method="post" ><textarea name ="update" id="update" cols="92" maxlength="240">${member.about} </textarea></p><p><br><input type = "hidden" name ="email" id = "email" value = "${member.email}"><input type = "hidden" name ="password" id = "password" value = "${member.password}"><input type="submit" class="btn btn-default btn-primary btn-block" value="Press Button to Update and Save your Profile"></form></p><p><br></p><p><br></p><p><br></p><p>&nbsp;&nbsp;<br></p>
    </div>
    </div>
</div>
<div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell" style="width: 100%" >
        <p><span style="font-size: 20px; color: #E2341D;">Urgent! You need to pay your membership!</span></p>
    </div>
    </div>
</div>
<div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell" style="width: 100%" >
        <p><br></p>
    </div>
    </div>
</div>
</div>


</article></div>
                        <div class="art-layout-cell art-sidebar1"><div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t">Search</h3>
        </div>
        <div class="art-blockcontent"><div>
  <form action="#" class="art-search" method="get" name="searchform">
    <input type="text" value="" name="s" />
    <input type="submit" value="Search" name="search" class="art-search-button" />
  </form>
</div></div>
</div><div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t">Blogroll</h3>
        </div>
        <div class="art-blockcontent"><div>
  <ul>
    <li>
      <a href="#">My first blog</a>
    </li>
    <li>
      <a href="#">Who will prevail?</a>
    </li>
    <li>
      <a href="#">Stay positive!</a>
    </li>
    <li>
      <a href="#">Oil still going up</a>
    </li>
    <li>
      <a href="#">Gripes and Grins</a>
    </li>
    <li>
      <a href="#">2012 Olympics</a>
    </li>
    <li>
      <a href="#">How to SEO</a>
    </li>
    <li>
      <a href="#">On Global Warming</a>
    </li>
    <li>
      <a href="#">Can you guess?</a>
    </li>
  </ul>
</div></div>
</div></div>
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