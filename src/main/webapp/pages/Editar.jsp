<%-- 
Autor: Ivan Guadalupe Bustamante Cortés
Fecha creación: 01/05/2022
Fecha actualización: 10/05/2022
Descripción: Pagina para editar
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <body style="height:1500px">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">DPortes</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html">Home</a></li>
                        <li><a href="CrearRegistro.html">Registrar</a></li>
                        <li><a href="GuardarUsuarioServlet?action=listar">Listar</a></li>
                        <li><a href="GuardarUsuarioServlet?action=listar">Eliminar</a></li>
                        <li><a href="#">Acerca de</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container" style="margin-top:50px">

            <form class="well form-horizontal" action='GuardarUsuarioServlet?action=guardar' method='POST'  id="contact_form">
                <fieldset>

                    <!-- Form Name -->
                    <legend>Editar usuario</legend>

                    <input type='hidden' name='id' value="<c:out value="${usuario.codigo}"/>">
                    
                    <!-- Text input-->
                    
                    <div class="form-group">
                        <label class="col-md-4 control-label">Nombre</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input  name="Nombre" placeholder="Nombre" class="form-control"  type="text" value="<c:out value="${usuario.nombre}"/>">
                            </div>
                        </div>
                    </div>

                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label" >Apellido</label> 
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input name="Apellido" placeholder="Apellido" class="form-control"  type="text" value="<c:out value="${usuario.apellido}"/>">
                            </div>
                        </div>
                    </div>


                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label">E-Mail</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                <input name="email" placeholder="E-Mail" class="form-control"  type="text" value="<c:out value="${usuario.correo}"/>">
                            </div>
                        </div>
                    </div>
                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label" >Contraseña</label> 
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
                                <input name="Contraseña" placeholder="Contraseña" class="form-control"  type="password">
                            </div>
                        </div>
                    </div>

                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label">Telefono</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                <input name="phone" placeholder="+52" class="form-control" type="text" value="<c:out value="${usuario.telefono}"/>">
                            </div>
                        </div>
                    </div>

                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label">Direccion</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-home"></i></span>
                                <input name="Direccion" placeholder="Dirección" class="form-control" type="text" value="<c:out value="${usuario.direccion}"/>">
                            </div>
                        </div>
                    </div>


                    <!-- Select Basic -->

                    <div class="form-group"> 
                        <label class="col-md-4 control-label">Sexo</label>
                        <div class="col-md-4 selectContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                <select name="state" class="form-control selectpicker" >
                                    <option value="<c:out value="${usuario.sexo}"/>" >Porfavor seleccione su sexo</option>
                                    <option>Hombre</option>
                                    <option>Mujer</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <!-- Imagen -->

                    <div class="form-group">
                        <label class="col-md-4 control-label" >Imagen</label> 
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-picture-o"></i></span>
                                <input type="file" name="image" class="form-control"/>
                            </div>
                        </div>
                    </div>

                    <!-- Success message -->
                    <div class="alert alert-success" role="alert" id="success_message">Success <i class="fa fa-thumbs-up"></i> Su cambio ha sido guardado</div>

                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                            <button href="GuardarUsuarioServlet?action=listar" type="submit" class="btn btn-warning" >Enviar <span class="fa fa-send"></span></button>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
    </div><!-- /.container -->
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
            </p>
        </div>
    </div>
</footer>
    </body>
</html>
