<%@page import="Modelo.Conexion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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
        <form action="Productos" method="post" enctype="multipart/form-data">
            <div class="container" style="margin-top: 50px;">

                <div class="row">

                    <div class="col-3">
                    </div>

                    <div class="col-7"> 
                        <label style="font-weight: bold;">Nombre Archivo</label><input type="file" name="archivo" class="form-control">
                    </div>

                    <div class="col-3">
                    </div>

                </div>




                <div class="row" style="padding: 20px;"> 
                    <div class="col-3">
                    </div>


                    <div class="col-6">
                        <input type="submit" name="cargar" class="btn btn-success" value="Cargar">
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
