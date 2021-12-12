<%@page import="Modelo.Conexion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%!
        String codigo, iva = "", total = "", valor = "";
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
                codigo = "";iva = "";total = "";valor = "";

            }

            if (request.getParameter("cod") != null) {
                codigo = request.getParameter("cod");
                iva = request.getParameter("iva");
                total = request.getParameter("total");
                valor = request.getParameter("valor");

            }  
        
        %>

        <form action="Ventas" method="post">
            <div class="container" style="margin-top: 50px;">
                <div class="row">

                    <div class="col-1">
                    </div>
                    <div class="col-2">
                        <label style="font-weight: bold;">cedula</label><input type="text" name="cedula"  class="form-control">
                    </div>
                    <div class="col-2" style="margin-top: 24px;">
                        <input type="submit" name="consultar" class="btn btn-primary" value="Consultar">
                    </div>
                    <div class="col-2">                        
                        <label style="font-weight: bold;">cliente</label><input type="text" name="cliente" class="form-control">
                    </div>
                    <div class="col-2">
                        <label style="font-weight: bold;">consecutivo</label><input type="text" name="consecutivo" class="form-control">
                    </div>
                    <div class="col-1">
                    </div>
                </div>
            </div>
        </form>

        <form action="Ventas" method="post">
            <div class="container" style="margin-top: 50px;">

                <div class="row">  

                    <div class="col-1">
                    </div>

                    <div class="col-2">   
                        <label style="font-weight: bold;">Cod. Producto</label><input type="text" name="codigo" value="<%=codigo%>" class="form-control">                        
                    </div>
                    <div class="col-2" style="margin-top: 20px;">   
                        <input type="submit" name="consultardos" class="btn btn-primary" value="Consultar">
                    </div>

                    <div class="col-2">  
                        <!--<label style="font-weight: bold;">Iva</label><input type="text" name="iva" class="form-control">-->
                    </div>
                    <div class="col-2">  
                        <label style="font-weight: bold;">Iva</label><input type="text" name="total" value="<%=iva%>"  class="form-control">
                      <!--  <label style="font-weight: bold;">Nombre Producto</label><input type="text" name="producto"  class="form-control">
                        <label style="font-weight: bold;">Cant</label><input type="text" name="cantidad"  class="form-control">-->
                        <label style="font-weight: bold;">Vlr. Total</label><input type="text" name="valor"  value="<%=valor%>" class="form-control">
                    </div>

                    <div class="col-3">
                    </div>

                </div>

                <div class="row" style="padding: 20px;"> 
                    <div class="col-3">
                    </div>


                    <div class="col-7">
                        <input type="submit" name="confirmar" class="btn btn-success" value="Confirmar">
                    </div>     

                    <div class="col-2">
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
