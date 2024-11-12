<%@page import="beans.PersonaBean"%>

<%
    String curpPersona = "DIRA000711HOCZZLA9";
    String apellidosPersona = "DIAZ RUIZ";
    String nombrePersona = "ALEJANDRO";
    boolean generoPersona = true;
%>

<jsp:useBean id="persona_bean" class="beans.PersonaBean"/>
<jsp:setProperty name="persona_bean" property="curpPersona" value="<%=curpPersona%>"/>
<jsp:setProperty name="persona_bean" property="apellidosPersona" value="<%=apellidosPersona%>"/>
<jsp:setProperty name="persona_bean" property="nombrePersona" value="<%=nombrePersona%>"/>
<jsp:setProperty name="persona_bean" property="generoPersona" value="<%=generoPersona%>"/>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
              crossorigin="anonymous">
        <script 
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
            crossorigin="anonymous">
        </script>

    </head>
    <body>
        <div class="container">
            <br>
            <div class="row">
                <div class="col-6" >
                    <div class="card" style="background-color: #ccccff">
                        <div class="card-body">
                            <h3 class="card-title">Datos personales</h3>
                            <%
                                out.println("<h4>Curp: " + persona_bean.getCurpPersona() + "</h4>");
                                out.println("<h4>Apellido: " + persona_bean.getApellidosPersona() + "</h4>");
                                out.println("<h4>Nombre: " + persona_bean.getNombrePersona() + "</h4>");
                                out.println("<h4>Género: " + persona_bean.isGeneroPersona() + "</h4>");
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>