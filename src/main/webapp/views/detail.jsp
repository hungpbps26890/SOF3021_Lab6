<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/tablib.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--
Victory HTML CSS Template
https://templatemo.com/tm-507-victory
-->
        <title>Detail</title>
        
        <%@ include file="/common/head.jsp" %>
    </head>

<body>
    <%@ include file="/common/header.jsp" %>
    <!--/.header-->

    <section class="breakfast-menu">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="breakfast-menu-content">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="left-image">
                                    <img src="img/breakfast_menu.jpg" alt="Breakfast">
                                </div>
                            </div>
                            <div class="col-md-7">
                                <h2>Cà phê sữa đá</h2>
                                <div id="owl-breakfast" class="owl-carousel owl-theme">
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/breakfast_item.jpg" alt="">
                                            <div class="price">$3.50</div>
                                            <div class="text-content">
                                                <h4>Kale Chips Art Party</h4>
                                                <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/lunch_item.jpg" alt="">
                                            <div class="price">$7.25</div>
                                            <div class="text-content">
                                                <h4>Drink Vinegar Prism</h4>
                                                <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/dinner_item.jpg" alt="">
                                            <div class="price">$11.50</div>
                                            <div class="text-content">
                                                <h4>Taiyaki Gastro Tousled</h4>
                                                <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <section class="lunch-menu">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="lunch-menu-content">
                        <div class="row">
                            <div class="col-md-7">
                                <h2>Related Drinks</h2>
                                <div id="owl-lunch" class="owl-carousel owl-theme">
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/lunch_item.jpg" alt="">
                                            <div class="price">$6.50</div>
                                            <div class="text-content">
                                                <h4>Mumble Ditch Corn</h4>
                                                <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/breakfast_item.jpg" alt="">
                                            <div class="price">$11.75</div>
                                            <div class="text-content">
                                                <h4>Wayfare Lomo Core</h4>
                                                <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/dinner_item.jpg" alt="">
                                            <div class="price">$16.50</div>
                                            <div class="text-content">
                                                <h4>Taiyaki Gastro Tousled</h4>
                                                <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="left-image">
                                    <img src="img/lunch_menu.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/java-script.jsp" %>
</body>
</html>