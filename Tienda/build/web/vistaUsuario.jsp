<%@page import="Modelo.Conexion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>JSP Page</title>
    </head>
    <%!
        String cedula = "", correo = "", nombre = "", pass = "", usuario = "";
    %>

    <body>
        <nav  class=" navbar navbar-expand-lg navbar-dark bg-dark">
            <ul class="navbar-nav">
                <li><a class="nav-link active" style="margin-right: 23px;margin-left: 30px;" href="vistaUsuario.jsp">Usuarios</a></li> 
                <li><a class="nav-link active" style="margin-right: 23px;margin-left: 30px;" href="vistaClientes.jsp">Clientes</a></li> 
                <li><a class="nav-link active" style="margin-right: 23px;margin-left: 30px;" href="vistaProveedores.jsp">Proveedores</a></li> 
                <li><a class="nav-link active" style="margin-right: 23px;margin-left: 30px;" href="vistaProductos.jsp">Productos</a></li> 
                <li><a class="nav-link active" style="margin-right: 23px;margin-left: 30px;" href="vistaVentas.jsp">Ventas</a></li> 
                <li><a class="nav-link active" style="margin-right: 23px;margin-left: 30px;" href="vistaReportes.jsp">Reportes</a></li> 
            </ul> 
        </nav>

        <%
            if (request.getParameter("men") != null) {
                String mensaje = request.getParameter("men");
                out.print("<script>alert('" + mensaje + "')</script>");
                cedula = "";
                correo = "";
                nombre = "";
                pass = "";
                usuario = "";
            }

            if (request.getParameter("ced") != null) {
                cedula = request.getParameter("ced");
                correo = request.getParameter("correo");
                nombre = request.getParameter("nom");
                pass = request.getParameter("pass");
                usuario = request.getParameter("usu");
            }
        %> 


        <form action="Usuario" method="post">
            <div class="container" style="margin-top: 50px;">
                <div class="row">  

                    <div class="col-3">
                    </div>
                    <div class="col-3">
                        <label style="font-weight: bold;">Cédula:</label><input type="text" name="cedula" required class="form-control"/>
                    </div>
                    <div class="col-3" style="margin-top: 24px;">
                        <input type="submit" name="consultar" class="btn btn-primary" value="Consultar"/>
                    </div>
                    <div class="col-3">                        
                    </div>

                </div>
            </div>
        </form>


        <form action="Usuario" method="post">

            <div class="container" style="margin-top: 50px;">

                <div class="row">  

                    <div class="col-3">
                    </div>

                    <div class="col-2">   
                        <label style="font-weight: bold;">Cédula:</label> <input type="text" name="cedula" value="<%=cedula%>" required  class="form-control"/>
                        <label style="font-weight: bold;"> Correo:</label> <input type="email" name="correo" value="<%=correo%>" required  class="form-control"/>
                    </div> 

                    <div class="col-2">   
                        <label style="font-weight: bold;">Nombre:</label> <input type="text" name="nombre"value="<%=nombre%>" required  class="form-control"/>
                        <label style="font-weight: bold;">Contraseña:</label><input type="password" name="pass" value="<%=pass%>"required  class="form-control"/> 
                    </div>

                    <div class="col-2">   
                        <label style="font-weight: bold;">usuario:</label><input type="text" name="usuario" value="<%=usuario%>" required  class="form-control"/> 
                    </div>

                    <div class="col-3">
                    </div>

                </div>

                <div class="row" style="padding: 20px;"> 
                    <div class="col-3">
                    </div>


                    <div class="col-6">
                        <input type="submit" name="registrar" class="btn btn-success" value="Registrar" required/>
                        <input type="submit" name="actualizar" class="btn btn-warning" value="Actualizar">
                        <input type="submit" name="borrar" class="btn btn-danger" value="Borrar">               

                    </div>   

                    <div class="col-3">
                    </div>

                </div> 
            </div>  
        </form>


        <!-- JQuery -->

        <script src="resources/js/jquery-3.5.0.min.js" type="text/javascript"></script>
        <!-- Popper.js -->
        <script src="resources/js/popper.min.js" type="text/javascript"></script>
        <!--csss bootstrap -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    </body>
</html>
