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
    String password = user.getPassword();
    String email = user.getEmail();
    String pfp = user.getProfilePicture();
%>
  
  <body>
    <div class="background-image">
      <div class= "header">
        <a href="index.jsp"><img src='https://raw.githubusercontent.com/juamedi/SSW/main/tradeemall.png' alt= "Trade Em All Logo"></a>
      </div>
        
      <nav class="navbar">
        <form class="form-inline">
          <img src= "https://raw.githubusercontent.com/juamedi/SSW/main/logodark.png" class = "img-logo" alt= "Trade Em All Logo">
          <a class="boton-white" href="SearchStartServlet">Search</a>
          <a class="boton-white" href="create.jsp">Create offer</a>
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
          
      <div class = "row">
        <div class = "col-6">
          <div class ="row justify-content-center">
            <form class = "panel-fluid-double">
              <fieldset>
                <legend>Given</legend>
                <div class = "row-stats">
                  <div class = "col-4">
                    <img id = "cimg1" src='https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png' alt="Pokemon image" class = "img-create">
                  </div>
                  <div class = "col-8">
                    <div class ="row">
                      <div class = "col-2">
                        <label class = "bold">Name</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" id="cname1" aria-describedby="pokemon-name" placeholder="Bulbasaur">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Level</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" id="level" aria-describedby="pokemon-level" placeholder="1">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Gender</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" id="gender" aria-describedby="pokemon-gender" placeholder="Male">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Ability</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" id="gender" aria-describedby="pokemon-gender" placeholder="Overgrow">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Shiny</label>
                      </div>
                      <div class = "col-10">
                        <input type="checkbox" id="shiny" name="shiny">
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
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-hp">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-hp">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-hp" placeholder="HP">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">ATK</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-atk">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-atk">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-atk" placeholder="ATK">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">DEF</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-def">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-def">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-def" placeholder="DEF">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPA</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-spa">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-spa">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spa" placeholder="SPA">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPD</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-spd">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-spd">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spd" placeholder="SPD">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPE</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-spe">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-spe">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="SPE">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-6">
                    <label class = "margin bold">Moveset</label>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
                  </div>
                  <div class = "col-5">
                    <div class = "row-stats">
                      <div class = "col-3">
                        <label class = "bold">Nature</label>
                      </div>
                      <div class = "col-8">
                        <input type = "text" id = "nature" aria-describedby = "pokemon-nature" placeholder="Adamant">
                      </div>
                    </div>
                    <div class = "row">
                      <label class = "bold">Comments</label>
                    </div>
                    <div class = "row">
                      <textarea id="comments" name="comments" rows = "6" cols = "40">Write any extra information here.
                      </textarea>
                    </div>
                  </div>
                </div>
              </fieldset>
            </form>
          </div>
        </div>
        <div class = "col-6">
          <div class = "row justify-content-center">
            <form class = "panel-fluid-double">
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
                        <input type="text" id="cname2" aria-describedby="pokemon-name" placeholder="Bulbasaur">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Level</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" id="level" aria-describedby="pokemon-level" placeholder="1">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Gender</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" id="gender" aria-describedby="pokemon-gender" placeholder="Male">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Ability</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" id="gender" aria-describedby="pokemon-gender" placeholder="Overgrow">
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Shiny</label>
                      </div>
                      <div class = "col-10">
                        <input type="checkbox" id="shiny" name="shiny">
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
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-hp">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-hp">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-hp" placeholder="HP">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">ATK</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-atk">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-atk">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-atk" placeholder="ATK">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">DEF</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-def">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-def">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-def" placeholder="DEF">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPA</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-spa">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-spa">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spa" placeholder="SPA">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPD</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-spd">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-spd">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spd" placeholder="SPD">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPE</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="0" class="custom-range" id="range-spe">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "ev-spe">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="SPE">
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-6">
                    <label class = "margin bold">Moveset</label>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
                  </div>
                  <div class = "col-5">
                    <div class = "row-stats">
                      <div class = "col-3">
                        <label class = "bold">Nature</label>
                      </div>
                      <div class = "col-8">
                        <input type = "text" id = "nature" aria-describedby = "pokemon-nature" placeholder="Adamant">
                      </div>
                    </div>
                    <div class = "row">
                      <label class = "bold">Comments</label>
                    </div>
                    <div class = "row">
                      <textarea id="comments" name="comments" rows = "6" cols = "40">Write any extra information here.
                      </textarea>
                    </div>
                  </div>
                </div>
              </fieldset>
            </form>
          </div>
        </div>
      </div>
      <div class = "row-last justify-content-center">
          <button type="submit" class="boton-red">Publish</button>
      </div>
    </div>
    <script>
        var cimg1 = document.getElementById("cimg1");
        var cimg2 = document.getElementById("cimg2");
        var cname1 = document.getElementById("cname1");
        var cname2 = document.getElementById("cname2");
        cname1.oninput = function() {cimg1.src = "https://play.pokemonshowdown.com/sprites/bwani/" + this.value.toLowerCase() + ".gif";};
        cname2.oninput = function() {cimg2.src = "https://play.pokemonshowdown.com/sprites/bwani/" + this.value.toLowerCase() + ".gif";};
  </script>
  </body>
</html>

