<%@page import="com.emergentes.Estudiante"%>
<%
    Estudiante est= (Estudiante) request.getAttribute("miestudent");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Primer Parcial</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            width: 50%;
            margin: 10px auto;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .titulo {
            width: 50%;
            margin: 10px auto;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        td, th {
            padding: 10px;
            border: 1px solid #ccc;
        }
        input[type="text"], input[type="submit"] {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin: 5px 0;
            width: calc(100% - 20px);
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="titulo">
        <p>PRIMER PARCIAL TEMP-742 </p>
        <p>Nombre: MIlTON OSCAR CHOQUE RAMOS </p>                  
        <p>Carnet: 9916903</p>
    </div>
    <h2>Registro de Calificaciones</h2>
    <div class="container">
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>Id:</td>
                    <td><input type="text" name="id" value="<%=est.getId()%>" size="10" readonly></td>
                </tr>
                <tr>
                    <td>Nombre del estudiante:</td>
                    <td><input type="text" name="nombre" value="<%=est.getNombre()%>" size="10" placeholder></td>
                </tr>
                <tr>
                    <td>Primer Parcial (sobre 30 puntos)</td>
                    <td><input type="text" name="pp" value="<%=est.getPp()%>" size="3" max="30" placeholder=""></td>
                </tr>
                <tr>
                    <td>Segundo Parcial (sobre 30 puntos)</td>
                    <td><input type="text" name="sp" value="<%=est.getSp()%>" size="3" max="30" placeholder=""></td>
                </tr>
                <tr>
                    <td>Tercer Parcial (sobre 40 puntos)</td>
                    <td><input type="text" name="tp" value="<%=est.getTp()%>" size="3" max="40" placeholder=""></td>
                </tr>
            </table>
            <div><input type="submit" value="Enviar"></div>
        </form>
    </div>
</body>
</html>