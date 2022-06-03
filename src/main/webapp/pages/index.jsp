<%-- 
    Document   : PRUEBA2
    Created on : 27 may 2022, 12:08:08
    Author     : Ivanbtte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<%@include file="common/headerInicio.jsp"%> 
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
