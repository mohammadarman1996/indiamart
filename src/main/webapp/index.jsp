    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="com.mycompany.ecomproj.impl.ProductDAOImpl"%>
    <%@page import="com.mycompany.ecomproj.dao.ProductDAO"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>

    <%
            ProductDAO pdao = new ProductDAOImpl();

            request.setAttribute("productMap", pdao.getProductsByCategory());
   
    %>

    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>

    <c:import url="/header.jsp"/>
   
    </head>
    <body>
     <body style="background-color: #899DDF    ;">  
         
     <marquee behaviour="alternate" direction="left"> <h2> Welcome to IndiaMART</h2> </marquee>
     
         
    <!-- Carousel ------------>    
    <div class="container">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
    <div class="carousel-item active">
    <img class="d-block w-100" style="height: 300px;" class="center"src="images/I1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
    <img class="d-block w-100" style="height: 300px;" class="center"src="images/i2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
    <img class="d-block w-100" style="height: 300px;" class="center"src="images/i3.jpg" alt="Third slide">
    </div>
        <marquee behaviour="alternate" direction="left"> <h2> Welcome to IndiaMART</h2> </marquee>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
    </a>
    </div>
    <br>
    <hr>
    </div>    <br>
    <br>

    <!---        left and right bar ---->

    <div class="container-fluid">
    <div class="row">
        
        <!-- Left Bar --->
        
    <div class="col-md-3">
        <ul class="list-group">
            
            <li class="list-group-item" style="background-color: #FF6600;"><h4>Categories<h4></li>
            
            <c:forEach items="${productMap}" var="entry">
                
                <li class="list-group-item">${entry.key}<a style="float: right;" href="#" class="badge badge-secondary"><span>${entry.value.size()}</span></a></li>
            </c:forEach>
        </ul>
    </div>
        
        <!-- Right Bar  --->
        
        <div class="col-md-9">
            <div class="row">
                <c:forEach items="${productMap}" var="entry">
                    <c:forEach items="${entry.value}" var="prod">
                        <div class="col-md-4" style="margin: 0;">
                            <div class="card" style="margin: 0;">
                                <div class="card-body"  style="padding: 0; text-align: center;">
                                    <img class="card-img-top" src="${prod.getImagePath()}" alt="Card image cap" style="object-fit: cover; height: 200px;">
                                    <h5 class="card-title" style="margin-top: 5px;">${prod.getName()}</h5>
                                    <h5> ₹&nbsp${prod.getPrice()}</h5>
                                    <a href="Product/ViewSingleProduct.jsp?id=${prod.getId()}" class="btn btn-primary" style="color: white; width: 150px; margin-bottom: 10px;">View</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </c:forEach>
            </div>
        </div>
        </div>
        </div>
    
        <!-- Footer   --->

        <div class="jumbotron" style="color:white;background-color: black; margin-top: 60px; margin-bottom: 0;">
            <p>Welcome to IndiaMART</p><br>
            <h2>IndiaMART Terms and Conditions</h2><br>
            <p>PLEASE READ THE FOLLOWING TERMS AND CONDITIONS OF USE AGREEMENT CAREFULLY
The following agreement captures the terms and conditions of use ("Agreement"), applicable to Your use of IndiaMART.com ("Web Site"), which promotes business between suppliers and buyers globally. It is an agreement between You as the user of the Web Site and IndiaMART InterMESH Ltd. ("IIL"). The expressions “You” “Your” or “User(s)” refers to any person who accesses or uses the Web Site for any purpose.</p>
            
            
        </div>
        

        </body>
        </html>
