<%-- 
    Document   : listar
    Created on : 22 mar. 2023, 10:32:27
    Author     : Alejandro Rodriguez
--%>


<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <div class="container mt-4">
            <div class="row">
                <%
                    ProductoDAO dao = new ProductoDAO();
                    List<Producto> list = dao.listar();
                    Iterator<Producto> iter=list.iterator();
                    Producto per = null;                
                    Producto pr = null;
                    while(iter.hasNext()){
                        pr=iter.next();
                %>
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <label><%= pr.getNombres()%></label>
                        </div>
                        <div class="card-body">
                            <i><%=pr.getDescripcion()%></i>
                            <img src="" width="200" height="180">
                        </div>
                        <div class="card-footer text-center">
                            <label><%=pr.getPrecio()%></label>     
                            <div>
                                <a href="" class="btn btn-outline-info">Agregar a Carrito</a>
                                <a href="" class="btn btn-danger">Comprar</a>
                            </div>
                        </div>
                    </div>
                </div>
                 <%}%>
            </div>
        </div>
                    
              
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
              
    </body>
</html>
