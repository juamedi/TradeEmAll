<!DOCTYPE html>
<html>

  <head>
    <title>Trade Em All</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="style-common.css">
    
    <link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.png" sizes="16x16">
    <link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.png" sizes="32x32">
    <link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.pngg" sizes="64x64">
  </head>

  <%
    String wpl = "false";
    if ((String) request.getAttribute("wrong_password_log") != null) {
      wpl = (String) request.getAttribute("wrong_password_log");
    }
  %>

  <body>
    <div class="background-image">
      <div class= "header">
        <a href="index.jsp"><img src='https://raw.githubusercontent.com/juamedi/SSW/main/tradeemall.png' alt= "Trade Em All Logo"></a>
      </div>
      <form class = "panel" action = "LoginServlet" method = "post">
        <fieldset>
          <legend>Login</legend>
          <div>
            <label for="login">Username / E-mail</label>
            <input type="text" id="username" name = "username" aria-describedby="login-help" placeholder="Username / E-mail" required class = "input-form">
          </div>
          <div>
            <label for="password">Password</label>
            <input type="password" id="password" name = "password" placeholder="Password" required class = "input-form">
          </div>
          <div class = "form-group">
            <button type="submit" class="boton-red">Login</button>
            <%
              if(wpl.equals("true")) {
            %>
            <label class = "big bold" style = "align-self: center">El usuario y la contrase�a no coinciden</label>
            <%
              }
            %>
            <a class="boton-red" href="register.jsp">Register now</a>
          </div>
        </fieldset>
      </form>
    </div>
  </body>
</html>