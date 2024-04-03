<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Estudiante"%>
<%
    if(session.getAttribute("Califestud")== null){
        ArrayList<Estudiante> Calest= new ArrayList<Estudiante>();
        session.setAttribute("Califestud", Calest);
    }
    ArrayList<Estudiante> calificaciones =(ArrayList<Estudiante>) session.getAttribute("Califestud");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parcial Practico</title>
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .titulo {
            background-color: #ddd;
            padding: 10px;
            text-align: center;
            border-radius: 5px 5px 0 0;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #555;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        a {
            text-decoration: none;
            color: #007bff;
            transition: color 0.3s ease;
        }
        a:hover {
            color: #0056b3;
        }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="titulo">
                <p>PRIMER PARCIAL TEMP-742 </p>
                <p>Nombre: MILTON OSCAR CHOQUE RAMOS </p>                  
                <p>Carnet: 9916903</p>
            </div>
            <h2>Registro de Calificaciones</h2>
            <a href="MainServlet?op=nuevo">Nuevo</a>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>P1(30)</th>
                    <th>P2(30)</th>
                    <th>P3(40)</th>
                    <th></th>
                    <th></th>
                </tr>
                <% if (calificaciones != null){
                    for(Estudiante item: calificaciones){
                %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getNombre()%></td>
                    <td><%= item.getPp()%></td>
                    <td><%= item.getSp() %></td>
                    <td><%= item.getTp() %></td>
                    <td><a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a></td>
                    <td><a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                           onclick="return(confirm('¿Seguro desea eliminar?'))">Borrar</a></td>
                </tr>
                <% }
                } %>
            </table>
        </div>
    </body>
</html>