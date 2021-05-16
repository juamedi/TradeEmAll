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
    String wpr = "false";
    if ((String) request.getAttribute("wrong_password_reg") != null) {
      wpr = (String) request.getAttribute("wrong_password_reg");
    }
  %>

  <body>
    <div class="background-image">
      <div class= "header">
        <a href="index.jsp"><img src='https://raw.githubusercontent.com/juamedi/SSW/main/tradeemall.png' alt= "Trade Em All Logo"></a>
      </div>
      <form class = "panel col" action = "RegisterServlet" method = "post">
        <fieldset>
          <legend>Register</legend>
          <div>
            <label for="login">Username</label>
            <input type="text" id = "username" name = "username" aria-describedby="login-help" placeholder="Username" required class = "input-form">
          </div>
          <div>
            <label for="password">Password</label>
            <input type="password" id = "password" name = "password" placeholder="Password" required class = "input-form">
          </div>
          <div>
            <label for="password">Repeat password</label>
            <input type="password" id="repeat-password" name = "repeat-password" placeholder="Repeat password" required class = "input-form">
          </div>
          <div>
            <label for="login">E-mail</label>
            <input type="text" id = "e-mail" name = "e-mail" aria-describedby="email-help" placeholder="E-mail" required pattern="^[^@]+@[^@]+\.[a-zA-Z]{2,}$" class = "input-form">
          </div>
          <div class = "form-group" style = "text-align: end">
            <button type="submit" class="boton-red">Register</button>
            <%
              if(wpr.equals("true")) {
            %>
            <label class = "big bold" style = "align-self: center">Passwords do not match</label>
            <%
              }
            %>
          </div>
        </fieldset>
      </form>
    </div>
  </body>
</html>