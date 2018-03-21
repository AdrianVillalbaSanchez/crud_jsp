<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <link href="img/favicon.ico" rel="icon" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Jugadores de eSports</title>
  </head>
  <body class="mainBody modifica">
    <% request.setCharacterEncoding("UTF-8"); %>
    <div class="container">
      <br><br>
      <div class="panel panel-info">
        <div class="panel-heading text-center">Modificación de jugador</div>
          <form method="get" action="grabaJugadorModificado.jsp">
            <div class="form-group"> 
              <label>&nbsp;&nbsp;Código de Jugador:&nbsp;</label><input type="text" size="5" name="codJug" value="<%= request.getParameter("codJug") %>" readonly>
            </div>
            <div class="form-group"> 
              <label>&nbsp;&nbsp;Código de Equipo:&nbsp;</label><input type="text" size="5" name="EQUIPO_codEqui" value="<%= request.getParameter("EQUIPO_codEqui") %>">
            </div>
            <div class="form-group">
            <label>&nbsp;&nbsp;Nombre de Jugador:&nbsp;</label><input type="text" size="35" name="nomJug" value="<%= request.getParameter("nomJug") %>">
            </div>
            <div class="form-group">
            <label>&nbsp;&nbsp;Nick de Jugador:&nbsp;</label><input type="text" size="35" name="nickJug" value="<%= request.getParameter("nickJug") %>">
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;Nacionalidad&nbsp;</label><input type="text" name="nacionJug" size="35" value="<%= request.getParameter("nacionJug") %>">
            </div>
            <hr>
            &nbsp;&nbsp;<a href="listadoJugadores.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></a>
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span></button><br><br>
          </form>

      </div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
