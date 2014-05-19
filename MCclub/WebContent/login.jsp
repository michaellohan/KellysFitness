<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head><!-- Created by Artisteer v4.1.0.59861 -->
    <meta charset="utf-8">
    <title>Login</title>
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="style.css" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="style.responsive.css" media="all">


    <script src="jquery.js"></script>
    <script src="script.js"></script>
    <script src="script.responsive.js"></script>



<style>.art-content .art-postcontent-0 .layout-item-0 { border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-left-width:1px;border-top-color:#A6A6A6;border-right-color:#A6A6A6;border-bottom-color:#A6A6A6;border-left-color:#A6A6A6;  }
.ie7 .art-post .art-layout-cell {border:none !important; padding:0 !important; }
.ie6 .art-post .art-layout-cell {border:none !important; padding:0 !important; }

</style></head>
<body>

<div id="art-main">
<header class="art-header-login">


    <div class="art-shapes">

            </div>




           
                    
</header>
<nav class="art-nav">
    <ul class="art-hmenu"><li><a href="home-2.html" class="">Home</a></li><li><a href="about.html" class="">About</a></li><li><a href="contact-us.html" class="">Contact Us</a></li><li><a href="membership.html" class="">Membership</a></li><li><a href="login.jsp" class="active">Login</a></li></ul> 
    </nav>
   
<div class="art-sheet clearfix">
            <div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content"><article class="art-post art-article">
                                <h2 class="art-postheader">Login</h2>
                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-0" style="width: 100%" >
     <form action="LoginController" name = "input" method="post">
        <p>&nbsp;Email: &nbsp;<input type="email" name="email">&nbsp; Password: &nbsp;<input type="password" name="password">&nbsp; &nbsp;&nbsp;<input class="art-button"
															type="submit" value="Login">&nbsp;</p>
    </form>
    ${error}
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

</body></html>