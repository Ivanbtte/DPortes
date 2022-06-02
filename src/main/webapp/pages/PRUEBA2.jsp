<%-- 
    Document   : PRUEBA2
    Created on : 27 may 2022, 12:08:08
    Author     : Ivanbtte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Instant - Bootstrap Personal Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <!-- Latest compiled and minified CSS -->
  <link rel='stylesheet' href='../webjars/bootstrap/3.2.0/css/bootstrap.min.css'>

  <!-- Libraries CSS Files -->
  <link rel='stylesheet' href='../webjars/fontawesome/4.7.0/css/font-awesome.min.css'>

  <!-- Main Stylesheet File -->
  <link rel='stylesheet' href='../Resourses/css/PRUEBA.css'>

  <!-- =======================================================
    Template Name: Instant
    Template URL: https://templatemag.com/instant-bootstrap-personal-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>

    <%
    int aux1=5;
    String aux;
    aux=request.getParameter("aux");
    if(aux1==5){
      out.println("<div class='navbar navbar-default navbar-fixed-top' role='navigation'><div class='container'><div class='navbar-header'><button type='button' class='navbar-toggle' data-toggle='collapse' data-target='.navbar-collapse'><span class='sr-only'>Toggle navigation</span><span class='icon-bar'></span><span class='icon-bar'></span><span class='icon-bar'></span></button><a class='navbar-brand' href='index.html'>DPortes</a></div><div class='navbar-collapse collapse'><ul class='nav navbar-nav navbar-right'><li class='active'><a href='index.html'>Home</a></li><li><a href='about.html'>Hombre</a></li><li><a href='works.html' class='smoothscroll'>Mujer</a></li><li><a href='contact.html' class='smoothscroll'>Contactanos</a></li></ul></div><!--/.nav-collapse --></div></div>");
    }
    
    %>
    <><>
    
  <!-- Static navbar -->
  <div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        <a class="navbar-brand" href="index.html">DPortes</a>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="index.html">Home</a></li>
          <li><a href="about.html">Hombre</a></li>
          <li><a href="works.html" class="smoothscroll">Mujer</a></li>
          <li><a href="contact.html" class="smoothscroll">Contactanos</a></li>
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </div>


  <div id="headerwrap">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
          <h4>Bienvenido al mejor mundo de los...</h4>
          <h1>DPortes</h1>
          <h4>Donde tus sueños se vuelven realidad</h4>
        </div>
      </div>
    </div>
    <!-- /container -->
  </div>

  <section id="works"></section>
  <div class="container">
    <div class="row centered mt mb">
      <h1>My Portfolio</h1>

      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="works.html"><img src="../images/FUT.jpg" class="img-responsive"></a>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="works.html"><img src="../images/BEI.jpg" class="img-responsive"></a>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="works.html"><img src="../images/BAS.jpg" class="img-responsive"></a>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="works.html"><img src="../images/VOL.jpg" class="img-responsive"></a>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="works.html"><img src="../images/RUN.jpg" class="img-responsive"></a>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <a href="works.html"><img src="../images/SKA.jpg" class="img-responsive"></a>
      </div>
    </div>
  </div>

  <div id="social">
    <div class="container">
      <div class="row centered">
        <div class="col-lg-2">
          <a href="#"><i class="fa fa-dribbble"></i></a>
        </div>
        <div class="col-lg-2">
          <a href="#"><i class="fa fa-facebook"></i></a>
        </div>
        <div class="col-lg-2">
          <a href="#"><i class="fa fa-twitter"></i></a>
        </div>
        <div class="col-lg-2">
          <a href="#"><i class="fa fa-linkedin"></i></a>
        </div>
        <div class="col-lg-2">
          <a href="#"><i class="fa fa-instagram"></i></a>
        </div>
        <div class="col-lg-2">
          <a href="#"><i class="fa fa-tumblr"></i></a>
        </div>

      </div>
    </div>
  </div>

<footer class="footer-bs">
            <div class="row">
                <div class="col-md-3 footer-brand animated fadeInLeft">
                    <h2>DPortes</h2>
                    <p>Empresa dedicada 100% a la venta de articulos deportivos, cualquier queja y sugerencia estaremos agradecidos de que nos lo hagan saber</p>
                    <p>© 2014 DP, Todos los derechos reservados</p>
                </div>
                <div class="col-md-4 footer-nav animated fadeInUp">
                    <h4>Menu —</h4>
                    <div class="col-md-6">
                        <ul class="pages">
                            <li><a href="#">Futbol</a></li>
                            <li><a href="#">Beisbol</a></li>
                            <li><a href="#">Basquetbol</a></li>
                            <li><a href="#">Volleyball</a></li>
                            <li><a href="#">Running</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <ul class="list">
                            <li><a href="#">Sobre nosotros</a></li>
                            <li><a href="#">Contacto</a></li>
                            <li><a href="#">Terminos y condiciones</a></li>
                            <li><a href="#">Politica de privacidad</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 footer-social animated fadeInDown">
                    <h4>Siguenos</h4>
                    <ul>
                        <li><a href="#">Facebook</a></li>
                        <li><a href="#">Twitter</a></li>
                        <li><a href="#">Instagram</a></li>
                    </ul>
                </div>
                <div class="col-md-3 footer-ns animated fadeInRight">

                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-envelope"></span></button>
                        </span>
                    </div><!-- /input-group -->
                    
                </div>
            </div>
        </footer>
  <!-- / copyrights -->

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/php-mail-form/validate.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
