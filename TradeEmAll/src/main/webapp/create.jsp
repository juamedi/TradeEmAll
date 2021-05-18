<!DOCTYPE html>
<%@page import = "com.model.User"%>
<html>
  <head>
      <title>Trade Em All</title>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="style-common.css">
      <link rel="stylesheet" href="style-grid.css">

      <link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.png" sizes="16x16">
      <link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.png" sizes="32x32">   
      <link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.pngg" sizes="64x64">
  </head>
  
<%
    User user = (User) session.getAttribute("user");
    String username = user.getUsername();
    String email = user.getEmail();
    String pfp = user.getProfilePicture();
%>
  
  <body>
    <div class="background-image">
      <div class= "header">
        <a><img src='https://raw.githubusercontent.com/juamedi/SSW/main/tradeemall.png' alt= "Trade Em All Logo"></a>
      </div>

      <nav class="navbar">
        <form class="form-inline">
          <img src= "https://raw.githubusercontent.com/juamedi/SSW/main/logodark.png" class = "img-logo" alt= "Trade Em All Logo">
          <a class="boton-white" href="SearchStartServlet">Search</a>
          <a class="boton-white" href="create.jsp">Create Trade</a>
        </form>
        <form class="form-inline dropdown">    
          <button class="dropbtn"><%=username%>
            <img src=<%=pfp%> class = "img-icon">
          </button>
          <div class="dropdown-content">
            <a class="dropdown-item" href="profile.jsp">Your profile</a>
            <div class = "dropdown-divider"></div>
            <a class="dropdown-item quit" href="index.jsp">Quit</a>
          </div>
        </form>
      </nav>

      <form class = "row just" action="CreateServlet" method="post">
        <div class = "col-6">
          <div class = "row justify-content-center">  
            <div class = panel-fluid-double>
              <fieldset>
                <legend>Given</legend>
                <div class = "row-stats">
                  <div class = "col-4">
                    <img id = "cimg1" src='' alt="Pokemon image" class = "img-create">
                  </div>
                  <div class = "col-8">
                    <div class ="row">
                      <div class = "col-2">
                        <label class = "bold">Name</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="cname1" name="pkm-give-name" aria-describedby="pokemon-name" placeholder="Bulbasaur" required>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Level</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="level" name="pkm-give-lvl" aria-describedby="pokemon-level" placeholder="1" required>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Gender</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="gender" name="pkm-give-gender" aria-describedby="pokemon-gender" placeholder="Male" required>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Ability</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="ability" name="pkm-give-ability" aria-describedby="pokemon-gender" placeholder="Overgrow" required>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Shiny</label>
                      </div>
                      <div class = "col-10">
                        <input type="checkbox" style = "margin: 2px 0px" id="shiny" name="pkm-give-shiny">
                      </div>
                    </div>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                  </div>
                  <div class = "col-ev-help">
                    <label class = "stat-help bold">EVs</label>
                  </div>
                  <div class = "col-iv">
                    <label class = "stat-help bold">IVs</label>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">HP</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="give-range-hp" name="pkm-give-ev-hp">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-hp">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-hp" placeholder="HP" name="pkm-give-iv-hp" required>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">ATK</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="give-range-atk" name="pkm-give-ev-atk">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-atk">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-atk" placeholder="ATK" name="pkm-give-iv-atk" required>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">DEF</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="give-range-def" name="pkm-give-ev-def">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-def">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-def" placeholder="DEF" name="pkm-give-iv-def" required>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPA</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="give-range-spa" name="pkm-give-ev-spa">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-spa">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spa" placeholder="SPA" name="pkm-give-iv-spa" required>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPD</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="give-range-spd" name="pkm-give-ev-spd">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-spd">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spd" placeholder="SPD" name="pkm-give-iv-spd" required>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPE</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="give-range-spe" name="pkm-give-ev-spe">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-spe">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="SPE" name="pkm-give-iv-spe" required>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-6">
                    <label class = "margin bold">Moveset</label>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-give-move-1" required>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-give-move-2" required>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-give-move-3" required>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-give-move-4" required>
                  </div>
                  <div class = "col-5">
                    <div class = "row-stats">
                      <div class = "col-3">
                        <label class = "bold">Nature</label>
                      </div>
                      <div class = "col-8">
                        <input type = "text" id = "nature" aria-describedby = "pokemon-nature" placeholder="Adamant" name="pkm-give-nature" required>
                      </div>
                    </div>
                  </div>
                </div>
              </fieldset>
            </div>
          </div>
        </div>
        <div class ="col-6">
          <div class ="row justify-content-center">
            <div class="panel-fluid-double">
              <fieldset>
                <legend>Received</legend>
                <div class = "row-stats">
                  <div class = "col-4">
                    <img id = "cimg2" src='https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png' alt="Pokemon image" class="img-create">
                  </div>
                  <div class = "col-8">
                    <div class ="row">
                      <div class = "col-2">
                        <label class = "bold">Name</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="cname2" aria-describedby="pokemon-name" placeholder="Bulbasaur" name="pkm-receive-name">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Level</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="level" aria-describedby="pokemon-level" placeholder="1" name="pkm-receive-lvl">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Gender</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="gender" aria-describedby="pokemon-gender" placeholder="Male" name="pkm-receive-gender">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Ability</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="ability" aria-describedby="pokemon-gender" placeholder="Overgrow" name="pkm-receive-ability">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Shiny</label>
                      </div>
                      <div class = "col-10">
                        <input type="checkbox" style = "margin: 2px 0px" id="shiny"  name="pkm-receive-shiny">
                      </div>
                    </div>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                  </div>
                  <div class = "col-ev-help">
                    <label class = "stat-help bold">EVs</label>
                  </div>
                  <div class = "col-iv">
                    <label class = "stat-help bold">IVs</label>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">HP</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="receive-range-hp" name="pkm-receive-ev-hp">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "receive-ev-hp">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-hp" placeholder="HP" name="pkm-receive-iv-hp">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">ATK</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="receive-range-atk" name="pkm-receive-ev-atk">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "receive-ev-atk">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-atk" placeholder="ATK" name="pkm-receive-iv-atk">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">DEF</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="receive-range-def" name="pkm-receive-ev-def">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "receive-ev-def">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-def" placeholder="DEF" name="pkm-receive-iv-def">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPA</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="receive-range-spa" name="pkm-receive-ev-spa">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "receive-ev-spa">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spa" placeholder="SPA" name="pkm-receive-iv-spa">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPD</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="receive-range-spd" name="pkm-receive-ev-spd">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "receive-ev-spd">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spd" placeholder="SPD" name="pkm-receive-iv-spd">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPE</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" step="4" class="custom-range" id="receive-range-spe" name="pkm-receive-ev-spe">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "receive-ev-spe">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="SPE" name="pkm-receive-iv-spe">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-6">
                    <label class = "margin bold">Moveset</label>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-receive-move-1">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-receive-move-2">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-receive-move-3">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-receive-move-4">
                  </div>
                  <div class = "col-5">
                    <div class = "row-stats">
                      <div class = "col-3">
                        <label class = "bold">Nature</label>
                      </div>
                      <div class = "col-8">
                        <input type = "text" id = "nature" aria-describedby = "pokemon-nature" placeholder="Adamant" name="pkm-receive-nature">
                      </div>
                    </div>
                  </div>
                </div>
              </fieldset>
            </div>
          </div>
        </div>
        <div class = "row-last justify-content-center">
          <button type="submit" class="boton-red">Publish</button>
        </div>
      </form>
    </div>

    <script>
        var cimg1 = document.getElementById("cimg1");
        var cimg2 = document.getElementById("cimg2");
        var cname1 = document.getElementById("cname1");
        var cname2 = document.getElementById("cname2");
        cname1.oninput = function() {cimg1.src = "https://play.pokemonshowdown.com/sprites/bwani/" + this.value.toLowerCase() + ".gif";};
        cname2.oninput = function() {cimg2.src = "https://play.pokemonshowdown.com/sprites/bwani/" + this.value.toLowerCase() + ".gif";};
    </script>

    <script>
        var give_sliderhp = document.getElementById("give-range-hp");
        var give_slideratk = document.getElementById("give-range-atk");
        var give_sliderdef = document.getElementById("give-range-def");
        var give_sliderspa = document.getElementById("give-range-spa");
        var give_sliderspd = document.getElementById("give-range-spd");
        var give_sliderspe = document.getElementById("give-range-spe");
        var give_outputhp = document.getElementById("give-ev-hp");
        var give_outputatk = document.getElementById("give-ev-atk");
        var give_outputdef = document.getElementById("give-ev-def");
        var give_outputspa = document.getElementById("give-ev-spa");
        var give_outputspd = document.getElementById("give-ev-spd");
        var give_outputspe = document.getElementById("give-ev-spe");
        give_outputhp.innerHTML = give_sliderhp.value;
        give_outputatk.innerHTML = give_slideratk.value;
        give_outputdef.innerHTML = give_sliderdef.value;
        give_outputspa.innerHTML = give_sliderspa.value;
        give_outputspd.innerHTML = give_sliderspd.value;
        give_outputspe.innerHTML = give_sliderspe.value;
        give_sliderhp.oninput = function() {give_outputhp.innerHTML = this.value;};
        give_slideratk.oninput = function() {give_outputatk.innerHTML = this.value;};
        give_sliderdef.oninput = function() {give_outputdef.innerHTML = this.value;};
        give_sliderspa.oninput = function() {give_outputspa.innerHTML = this.value;};
        give_sliderspd.oninput = function() {give_outputspd.innerHTML = this.value;};
        give_sliderspe.oninput = function() {give_outputspe.innerHTML = this.value;};
        
        var receive_sliderhp = document.getElementById("receive-range-hp");
        var receive_slideratk = document.getElementById("receive-range-atk");
        var receive_sliderdef = document.getElementById("receive-range-def");
        var receive_sliderspa = document.getElementById("receive-range-spa");
        var receive_sliderspd = document.getElementById("receive-range-spd");
        var receive_sliderspe = document.getElementById("receive-range-spe");
        var receive_outputhp = document.getElementById("receive-ev-hp");
        var receive_outputatk = document.getElementById("receive-ev-atk");
        var receive_outputdef = document.getElementById("receive-ev-def");
        var receive_outputspa = document.getElementById("receive-ev-spa");
        var receive_outputspd = document.getElementById("receive-ev-spd");
        var receive_outputspe = document.getElementById("receive-ev-spe");
        receive_outputhp.innerHTML = receive_sliderhp.value;
        receive_outputatk.innerHTML = receive_slideratk.value;
        receive_outputdef.innerHTML = receive_sliderdef.value;
        receive_outputspa.innerHTML = receive_sliderspa.value;
        receive_outputspd.innerHTML = receive_sliderspd.value;
        receive_outputspe.innerHTML = receive_sliderspe.value;
        receive_sliderhp.oninput = function() {receive_outputhp.innerHTML = this.value;};
        receive_slideratk.oninput = function() {receive_outputatk.innerHTML = this.value;};
        receive_sliderdef.oninput = function() {receive_outputdef.innerHTML = this.value;};
        receive_sliderspa.oninput = function() {receive_outputspa.innerHTML = this.value;};
        receive_sliderspd.oninput = function() {receive_outputspd.innerHTML = this.value;};
        receive_sliderspe.oninput = function() {receive_outputspe.innerHTML = this.value;};
    </script>
  </body>
</html>

