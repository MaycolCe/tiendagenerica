<%@page import="Modelo.usuarioDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Conexion"%>
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

        <%
            ArrayList<usuarioDto> list = (ArrayList<usuarioDto>) request.getAttribute("Usuario");

            // print the information about every category of the list        
            /*for(usuarioDto cx: ((ArrayList<usuarioDto>)request.getAttribute("Usuario"))) {

            out.println( cx.getCedula());

            out.println(cx.getCorreo());

            out.println(cx.getNombre() );
            }*/
            // print the information about every category of the list
            /*for(usuarioDto category : list) {
                out.println(category.getCedula());
                out.println(category.getNombre());
                out.println(category.getCorreo());
            }*/

        %>

        <form action="Usuario" method="post">
            <div class="container" style="margin-top: 50px;">
                <div class="row">
                    <div class="col-4">
                    </div>
                    <div class="col-4">
                        <input type="submit" name="usuarios" class="btn btn-success" value="Listado de Usuarios" style="width: 200px;margin-top: 10px;">
                    </div>
                    <div class="col-4">
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                    </div>
                    <div class="col-4">
                        <input type="submit" name="clientes" class="btn btn-success" value="Listado de Clientes" style="width: 200px;margin-top: 10px;">
                    </div>
                    <div class="col-4">
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                    </div>
                    <div class="col-4">
                        <input type="submit" name="ventas" class="btn btn-success" value="Ventas Por Cliente" style="width: 200px;margin-top: 10px;">
                    </div>
                    <div class="col-4">
                    </div>
                </div>
            </div>

        </form>

        <div class="container">
            <div class="row">

                <div class="col-2">
                </div>

                <div class="col-8">

                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Cedula</th>
                                <th scope="col">Correo</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Usuario</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%                   if (list != null) {
                                    for (usuarioDto category : list) {
                                        usuarioDto actor = new usuarioDto(0, null, null, null, null);
                                        actor = category;

                            %>

                            <tr>
                                <td><%=actor.getCedula()%></td>
                                <td><%=actor.getCorreo()%></td>
                                <td><%=actor.getNombre()%></td>
                                <td><%=actor.getUsuario()%></td>                
                            </tr>
                            <%
                                    }
                                };
                            %>
                        </tbody>
                    </table>

                </div>

                <div class="col-2">
                </div>

            </div>
        </div>


        <!-- JQuery -->
        <script src="resources/js/jquery-3.5.0.min.js" type="text/javascript"></script>
        <!-- Popper.js -->
        <script src="resources/js/popper.min.js" type="text/javascript"></script>
        <!--csss bootstrap -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>    
    </body>
</html>
