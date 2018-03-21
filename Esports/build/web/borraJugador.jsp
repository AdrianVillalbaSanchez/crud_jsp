<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Jugadores de eSports</title>
    <link href="img/favicon.ico" rel="icon" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body class="mainBody">
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/esports","root", "");
      Statement s = conexion.createStatement();

      s.execute ("DELETE FROM JUGADOR WHERE codJug=" + Integer.valueOf(request.getParameter("codJug")));
    %>	
    <script>
        window.location.href = "listadoJugadores.jsp";
    </script>
  </body>

</html>
