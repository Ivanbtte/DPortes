<%-- 
    Document   : IniciarSesion
    Created on : 6 jun 2022, 8:38:47
    Author     : labso02
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
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
        <link rel='stylesheet' href='${pageContext.request.contextPath}/webjars/bootstrap/3.2.0/css/bootstrap.min.css'>

        <!-- Libraries CSS Files -->
        <link rel='stylesheet' href='${pageContext.request.contextPath}/webjars/fontawesome/4.7.0/css/font-awesome.min.css'>

        <!-- Main Stylesheet File -->
        <link rel='stylesheet' href='${pageContext.request.contextPath}/Resourses/css/Nuevo.css'>
        <script src="${pageContext.request.contextPath}/webjars/jquery/2.1.3/dist/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/Resourses/js/Nuevo.js"></script>



    </head>

    <body>    
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
                        <li><a href="contact.html" class="smoothscroll"><i class="fa fa-user"></i> Perfil</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
        <br>
        <br>
        <br>
        <br>



        <div class="form">

            <ul class="tab-group">
                <li class="tab active"><a href="#signup">Crear cuenta</a></li>
                <li class="tab"><a href="#login">Iniciar sesión</a></li>
            </ul>

            <div class="tab-content">
                <div id="signup">   
                    <h1>Crear cuenta gratis</h1>

                    <form action="../GuardarUsuarioServlet?action=create" method="post">

                        <div class="top-row">
                            <div class="field-wrap">
                                <label><i class="fa fa-user"></i>
                                    Nombre<span class="req">*</span>
                                </label>
                                <input name="Nombre" type="text" required autocomplete="off" />
                            </div>

                            <div class="field-wrap">
                                <label><i class="fa fa-user"></i>
                                    Apellido<span class="req">*</span>
                                </label>
                                <input name="Apellido" type="text"required autocomplete="off"/>
                            </div>
                        </div>

                        <div class="field-wrap">
                            <label><i class="fa fa-envelope"></i>
                                Correo electronico<span class="req">*</span>
                            </label>
                            <input name="email" type="email"required autocomplete="off"/>
                        </div>

                        <div class="field-wrap">
                            <label><i class="fa fa-asterisk"></i>
                                Contraseña<span class="req">*</span>
                            </label>
                            <input name="Contra" type="password" required autocomplete="off"/>
                        </div>

                        <div class="field-wrap">
                            <label><i class="fa fa-home"></i>
                                Dirección<span class="req">*</span>
                            </label>
                            <input name="Direccion" type="text" required autocomplete="off" />
                        </div>

                        <div class="field-wrap">
                            <label><i class="fa fa-list"></i>
                                Sexo<span class="req">*</span>
                            </label>
                            <input name="state" type="text" required autocomplete="off" />
                        </div>

                        <div class="field-wrap">
                            <label><i class="fa fa-phone"></i>
                                Telefono<span class="req">*</span>
                            </label>
                            <input name="phone" type="tel" required autocomplete="off" pattern="[0-9]{10}"/>
                        </div>


                        <button type="submit" class="button button-block"/>Crear cuenta</button>

                    </form>

                </div>

                <div id="login">   
                    <h1>Bienvenido de nuevo</h1>

                    <form action="../GuardarUsuarioServlet?action=validar" method="post">

                        <div class="field-wrap">
<!--                            <label>
                                Correo electronico<span class="req">*</span>
                            </label>-->
                            <input name="email" value="lupitobtte_17@hotmail.com" type="email"required autocomplete="off"/>
                        </div>

                        <div class="field-wrap">
<!--                            <label>
                                Contraseña<span class="req">*</span>
                            </label>-->
                            <input name="Contra" value="adasfasdfs" type="password"required autocomplete="off"/>
                        </div>

                        <button class="button button-block"/>Iniciar sesión</button>

                    </form>

                </div>

            </div><!-- tab-content -->

        </div> <!-- /form -->

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
        <script src="${pageContext.request.contextPath}/lib/jquery/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/php-mail-form/validate.js"></script>

        <!-- Template Main Javascript File -->
        <script src="${pageContext.request.contextPath}/js/main.js"></script>

    </body>
</html>
