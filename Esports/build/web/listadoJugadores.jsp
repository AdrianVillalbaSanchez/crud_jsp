<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link href="img/favicon.ico" rel="icon" type="image/x-icon" />
        <title>Jugadores de eSports</title>
    </head>
    <body class="mainBody jugadores">
        <div class="container">
            <br><br>			
            <div class="panel panel-primary">
                <div class="panel-heading text-center"><h2>Jugadores de eSports</h2></div>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/esports", "root", "");
                    
                    Statement s = conexion.createStatement();
                    ResultSet listado = s.executeQuery("SELECT * FROM JUGADOR");
                    
                    Statement s2 = conexion.createStatement();
                    ResultSet listado2 = s2.executeQuery("SELECT * FROM EQUIPO");
                %>

                <table class="table table-striped">
                    <tr><th>Código de Jugador</th><th>Equipo</th><th>Nombre de Jugador</th><th>Nick de Jugador</th><th>Nacionalidad</th></tr>
                    <form method="get" action="grabaJugador.jsp">
                        <tr>
                            <td><input type="hidden" name="codJug" size="5"></td>
                            <td>
                                <select name="EQUIPO_codEqui">
                                    <%
                                      int cod = 1;
                                      while(listado2.next()){
                                          out.println("<option value="+"\""+listado2.getString("codEqui")+"\">"+listado2.getString("nomEqui")+"("+listado2.getString("codEqui")+")"+"</option>");
                                          cod++;
                                      }
                                    %>
                                </select>
                            </td>
                            <!--<td><input type="text" name="EQUIPO_codEqui" size="5"></td>-->
                            <td><input type="text" name="nomJug" size="30"></td>
                            <td><input type="text" name="nickJug" size="30"></td>
                            <td><input type="text" name="nacionJug" size="30"></td>
                            <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span></button></td><td></td>
                        </tr>           
                    </form>
                    <%
                        while (listado.next()) {
                            out.println("<tr><td>");
                            out.println(listado.getString("codJug") + "</td>");
                            out.println("<td>" + listado.getString("EQUIPO_codEqui") + "</td>");
                            out.println("<td>" + listado.getString("nomJug") + "</td>");
                            out.println("<td>" + listado.getString("nickJug") + "</td>");
                            out.println("<td>" + listado.getString("nacionJug") + "</td>");
                    %>
                    <td>
                        <form method="get" action="modificaJugador.jsp">
                            <input type="hidden" name="codJug" value="<%=listado.getString("codJug")%>">
                            <input type="hidden" name="EQUIPO_codEqui" value="<%=listado.getString("EQUIPO_codEqui")%>">
                            <input type="hidden" name="nomJug" value="<%=listado.getString("nomJug")%>">
                            <input type="hidden" name="nickJug" value="<%=listado.getString("nickJug")%>">
                            <input type="hidden" name="nacionJug" value="<%=listado.getString("nacionJug")%>">
                            <button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span></button>
                        </form>
                    </td>
                    <td>
                        <form method="post" action="borraJugador.jsp">
                            <input type="hidden" name="codJug" value="<%=listado.getString("codJug")%>"/>
                            <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></button>
                        </form>
                    </td></tr>
                    <%
                        } // while   

                        conexion.close();
                    %>

                </table>
            </div>
            <a href="listadoEquipos.jsp"><p>Ir a equipos</p></a>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
