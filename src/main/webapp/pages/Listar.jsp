<%-- 
Autor: Ivan Guadalupe Bustamante Cortés
Fecha creación: 01/05/2022
Fecha actualización: 10/05/2022
Descripción: Pagina para listar usuarios
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel='stylesheet' href='webjars/fontawesome/4.7.0/css/font-awesome.min.css'>
        <link rel='stylesheet' href='Resourses/css/listar.css'>
        <script src="webjars/jquery/3.6.0/dist/jquery.min.js"></script>
        <script src="Resourses/js/CrearRegistro.js"></script>
        <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
        <link rel='stylesheet' href='webjars/bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>
        <script src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="webjars/bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
    </head>
    <body style="height:1500px; background-color: #e3e3e3">
    <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="pages/index.html">DPortes</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="pages/index.html">Home</a></li>
                        <li><a href="pages/CrearRegistro.html">Registrar</a></li>
                        <li><a href="GuardarUsuarioServlet?action=listar">Listar</a></li>
                        <li><a href="GuardarUsuarioServlet?action=listar">Eliminar</a></li>
                        <li><a href="#">Acerca de</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <section class="container">
            <br>
        <br>
        <br>
        <br>
        <br>
        <h1 class="titulo">Lista</h1>
        <table id="customers">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Dirección</th>
                <th>Telefono</th>
                <th>Correo</th>
                <th>Sexo</th>
                <th>Contraseña</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <c:forEach var="usuario" items="${listaUsuario}">
                <tr>
                    <td><c:out value="${usuario.codigo}"/></td>
                    <td><c:out value="${usuario.nombre}"/></td>
                    <td><c:out value="${usuario.apellido}"/></td>
                    <td><c:out value="${usuario.direccion}"/></td>
                    <td><c:out value="${usuario.telefono}"/></td>
                    <td><c:out value="${usuario.correo}"/></td>
                    <td><c:out value="${usuario.sexo}"/></td>
                    <td><c:out value="${usuario.contraseña}"/></td>
                    <td><a href="GuardarUsuarioServlet?action=editar&id=<c:out value="${usuario.codigo}"/>">Editar</a></td>
                    <td><a href="GuardarUsuarioServlet?action=eliminar&id=<c:out value="${usuario.codigo}"/>">Eliminar</a></td>
                </tr>
            </c:forEach>    
        </table>
        </section>

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
            </p>
        </div>
    </div>
</footer>
    </body>
</html>
