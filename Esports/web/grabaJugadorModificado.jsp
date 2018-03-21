<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <link href="img/favicon.ico" rel="icon" type="image/x-icon" />
    <title>Jugadores de eSports</title>
  </head>
  <body class="mainBody">
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Esports","root", "");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      /*
      String insercion = "INSERT INTO JUGADOR VALUES (" + Integer.valueOf(request.getParameter("codJug"))
                         + ", '" + request.getParameter("nomJug")
                         + "', '" + request.getParameter("nickJug")
                         + "', '" + request.getParameter("nacionJug") 
                         + "', " + Integer.valueOf(request.getParameter("EQUIPO_codEqui")) + ")";
      */
      
      String actualizacion = "UPDATE JUGADOR SET "
                           + "nomJug='" + request.getParameter("nomJug")
                           + "', nickJug='" + request.getParameter("nickJug")
                           + "', nacionJug='" + request.getParameter("nacionJug")
                           + "', EQUIPO_codEqui="+ Integer.valueOf(request.getParameter("EQUIPO_codEqui"))
                           + " WHERE codJug=" + Integer.valueOf(request.getParameter("codJug"));
      s.execute(actualizacion);
      out.println("Jugador actualizado correctamente.");
      
      conexion.close();
    %>
    <br>
    <script>
        window.location.href = "listadoJugadores.jsp";
    </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>