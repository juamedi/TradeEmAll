<!DOCTYPE html>
<%@page import = "com.model.*, java.util.*"%>
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
    ArrayList<Trade> list_trade = new ArrayList<Trade>();
    if ((ArrayList<Trade>) request.getAttribute("list_trade") != null) {
        list_trade = (ArrayList<Trade>) request.getAttribute("list_trade");
    }
    int size = list_trade.size();
    
%>
  
  <body>
    <div class="background-image">
      <div class= "header">
        <a href="index.jsp"><img src='https://raw.githubusercontent.com/juamedi/SSW/main/tradeemall.png' alt= "Trade Em All Logo"></a>
      </div>
      <nav class="navbar">
        <form class="form-inline">
          <img src= "https://raw.githubusercontent.com/juamedi/SSW/main/logodark.png" class = "img-logo" alt= "Trade Em All Logo">
          <a class="boton-white" href="search.jsp">Search</a>
          <a class="boton-white" href="create.jsp">Create offer</a>
        </form>
        <form class="form-inline dropdown">    
          <button class="dropbtn"><%=username%>
            <img src=<%=pfp%> class = "img-icon">
          </button>
          <div class="dropdown-content">
              <a class="dropdown-item" href="profile.jsp">Your profile</a>
              <div class = "dropdown-divider"></div>
              <a class="dropdown-item quit" href="login.jsp">Quit</a>
          </div>
        </form>
      </nav>

      <form class = "panel-fluid" action = "SearchServlet" method = "get">
        <fieldset>
          <div class = "row-stats">
            <div class = "col-pkm-att">
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmname">Pokemon</label>
                </div>
                <div class = "col-6">
                  <input type="text" style = "margin: 2px 0px" id="pkmname" name = "pkmname" aria-describedby="pokemon-name" placeholder="Bulbasaur">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmnature">Nature</label>
                </div>
                <div class = "col-6">
                  <input type="text" style = "margin: 2px 0px" id="pkmnature" name = "pkmnature" aria-describedby="pokemon-nature" placeholder="Adamant">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmlevel">Level</label>
                </div>
                <div class = "col-6">
                  <input type="text" style = "margin: 2px 0px" id="pkmnlevel" name = "pkmlevel" aria-describedby="pokemon-nature" placeholder="1">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmgender">Gender</label>
                </div>
                <div class = "col-6">
                  <input type="text" style = "margin: 2px 0px" id="pkmgender" name = "pkmgender" aria-describedby="pokemon-nature" placeholder="Male">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmability">Ability</label>
                </div>
                <div class = "col-6">
                  <input type="text" style = "margin: 2px 0px" id="pkmability" name = "pkmability" aria-describedby="pokemon-ability" placeholder="Overgrow">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmshiny">Shiny</label>
                </div>
                <div class = "col-6">
                  <input type="checkbox" style = "margin: 2px 0px" id="shiny" name="pkmshiny">
                </div>
              </div>
            </div>
            <div class = "col-pkm-ev">
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
                    <input type="range" min="0" max="252" value="0" class="custom-range" id="range-hp" name="range-hp">
                  </div>
                </div>
                <div class = "col-ev">
                  <label id = "ev-hp">252</label>
                </div>
                <div class = "col-iv">
                  <input class = "input-stats" type="text" id="iv-hp" name = "iv-hp" placeholder="HP">
                </div>
              </div>
              <div class = "row-stats">
                <div class = "col-att">
                  <label class = "bold">ATK</label>
                </div>
                <div class = "col-range">
                  <div class="slidecontainer">
                    <input type="range" min="0" max="252" value="0" class="custom-range" id="range-atk" name="range-atk">
                  </div>
                </div>
                <div class = "col-ev">
                  <label id = "ev-atk">252</label>
                </div>
                <div class = "col-iv">
                  <input class = "input-stats" type="text" id="iv-atk" name = "iv-atk" placeholder="ATK">
                </div>
              </div>
              <div class = "row-stats">
                <div class = "col-att">
                  <label class = "bold">DEF</label>
                </div>
                <div class = "col-range">
                  <div class="slidecontainer">
                    <input type="range" min="0" max="252" value="0" class="custom-range" id="range-def" name="range-def">
                  </div>
                </div>
                <div class = "col-ev">
                  <label id = "ev-def">252</label>
                </div>
                <div class = "col-iv">
                  <input class = "input-stats" type="text" id="iv-def" name = "iv-def" placeholder="DEF">
                </div>
              </div>
              <div class = "row-stats">
                <div class = "col-att">
                  <label class = "bold">SPA</label>
                </div>
                <div class = "col-range">
                  <div class="slidecontainer">
                    <input type="range" min="0" max="252" value="0" class="custom-range" id="range-spa" name="range-spa">
                  </div>
                </div>
                <div class = "col-ev">
                  <label id = "ev-spa">252</label>
                </div>
                <div class = "col-iv">
                  <input class = "input-stats" type="text" id="iv-spa" name = "iv-spa" placeholder="SPA">
                </div>
              </div>
              <div class = "row-stats">
                <div class = "col-att">
                  <label class = "bold">SPD</label>
                </div>
                <div class = "col-range">
                  <div class="slidecontainer">
                    <input type="range" min="0" max="252" value="0" class="custom-range" id="range-spd" name="range-spd">
                  </div>
                </div>
                <div class = "col-ev">
                  <label id = "ev-spd">252</label>
                </div>
                <div class = "col-iv">
                  <input class = "input-stats" type="text" id="iv-spd" name = "iv-spd" placeholder="SPD">
                </div>
              </div>
              <div class = "row-stats">
                <div class = "col-att">
                  <label class = "bold">SPE</label>
                </div>
                <div class = "col-range">
                  <div class="slidecontainer">
                    <input type="range" min="0" max="252" value="0" class="custom-range" id="range-spe" name="range-spe">
                  </div>
                </div>
                <div class = "col-ev">
                  <label id = "ev-spe">252</label>
                </div>
                <div class = "col-iv">
                  <input class = "input-stats" type="text" id="iv-spe" name = "iv-spe" placeholder="SPE">
                </div>
              </div>
            </div>
            <div class = "col-pkm-moves">
              <div class = "row">
                <label class = "margin bold">Moveset</label>
                <input class = "input-stats" type="text" id="moveset1" name = "moveset1" placeholder="---">
                <input class = "input-stats" type="text" id="moveset2" name = "moveset2"  placeholder="---">
                <input class = "input-stats" type="text" id="moveset3" name = "moveset3"  placeholder="---">
                <input class = "input-stats" type="text" id="moveset4" name = "moveset4"  placeholder="---">
              </div>
              <div class = "row-pkm-search">
                <div col-3>
                  <button type="submit" class="boton-search">Search</button>
                </div>
              </div>
            </div>
          </div>
        </fieldset>
      </form>

      <div class = "panel-fluid">
        <div class = "row-card hide-overflow">
        <%
            if (size == 0) {
        %>
        <div class="card flex" style = "height: 200px">
          <div class = "row" style = "height: 100%">
            <div class = "col-12 text-align-center">
              <label class = "big bold" style = "align-self: center">No se ha encontrado ningun intercambio con esas caracter�sticas</label>
            </div>
          </div>
        </div>
        <%
            }
        %>
        <%
          for (int i = 0; i < size; i++) {
            String giveShiny = "No";
            String receiveShiny = "No";
            Trade trade = new Trade();
            trade = list_trade.get(i);
            if (trade.getGiveShiny()) {
                giveShiny = "Yes";
            }
            if (trade.getReceiveShiny()) {
                receiveShiny = "Yes";
            }

        %>
          <div class="card flex">
            <div class = "row justify-content-center">
              <div class = "col-5">
                <div class = "row">
                  <div class = "col-3">
                    <img src="<%="https://play.pokemonshowdown.com/sprites/bwani/" + trade.getGiveName().toLowerCase() + ".gif"%>" alt="Avatar" class = "card-img">
                  </div>
                  <div class = "col-card-stats">
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label class = "big bold"><%=trade.getGiveName()%></label>
                      </div>
                      <div class = "col-6">
                        <label>Owner</label>
                        <label class = "text-muted"><%=trade.getGiveUsername()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Level</label>
                        <label class = "text-muted"><%=trade.getGiveLevel()%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label>Nature</label>
                        <label class = "text-muted"><%=trade.getGiveNature()%></label>
                      </div>
                        <div class = "col-3">
                          <label>Ability</label>
                          <label class = "text-muted"><%=trade.getGiveAbility()%></label>
                        </div>
                      <div class = "col-3">
                        <label>Gender</label>
                        <label class = "text-muted"><%=trade.getGiveGender()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Shiny</label>
                        <label class = "text-muted"><%=giveShiny%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-2">
                        <label class = "bold">HP</label>
                        <label><%=trade.getGiveHPIVs()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">ATK</label>
                        <label><%=trade.getGiveAttackIVs()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">DEF</label>
                        <label><%=trade.getGiveDefenseIVs()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPA</label>
                        <label><%=trade.getGiveSAttackIVs()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPD</label>
                        <label><%=trade.getGiveSDefenseIVs()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPE</label>
                        <label><%=trade.getGiveSpeedIVs()%></label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class = "col-1">
                <div class = "row justify-content-center">
                  <img src = "https://raw.githubusercontent.com/juamedi/SSW/main/arrow.png" alt="Avatar" class = "card-img">
                </div>
              </div>
              <div class = "col-5">
                <div class = "row">
                  <div class = "col-3">
                    <img src="<%="https://play.pokemonshowdown.com/sprites/bwani/" + trade.getReceiveName().toLowerCase() + ".gif"%>" alt="Avatar" class = "card-img">
                  </div>
                  <div class = "col-card-stats">
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label class = "big bold"><%=trade.getReceiveName()%></label>
                      </div>
                      <div class = "col-6">
                        <label> </label>
                      </div>
                      <div class = "col-2">
                        <label>Level</label>
                        <label class = "text-muted"><%=trade.getReceiveLevel()%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label>Nature</label>
                        <label class = "text-muted"><%=trade.getReceiveNature()%></label>
                      </div>
                      <div class = "col-3">
                        <label>Ability</label>
                        <label class = "text-muted"><%=trade.getReceiveAbility()%></label>
                      </div>
                      <div class = "col-3">
                        <label>Gender</label>
                        <label class = "text-muted"><%=trade.getReceiveGender()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Shiny</label>
                        <label class = "text-muted"><%=receiveShiny%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-2">
                        <label class = "bold">HP</label>
                        <label><%=trade.getReceiveHPIVs()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">ATK</label>
                        <label><%=trade.getReceiveAttackIVs()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">DEF</label>
                        <label><%=trade.getReceiveDefenseIVs()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPA</label>
                        <label><%=trade.getReceiveSAttackIVs()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPD</label>
                        <label><%=trade.getReceiveSDefenseIVs()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPE</label>
                        <label><%=trade.getReceiveSpeedIVs()%></label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class = "row justify-content-between">
                <div class = "col-5 text-align-center">
                  <label class = "big bold" style = "text-align: end">You Receive</label>
                </div>
                <div class = "col-2 text-align-center py">
                  <button type = "submit" class = "boton-red">Post offer</button>
                </div>
                <div class = "col-5 text-align-center">
                  <label class = "big bold">You Give</label>
                </div>
            </div> 
          </div>
        <%
          }
        %>
        </div>
      </div>
    </div>
    <script>
        var sliderhp = document.getElementById("range-hp");
        var slideratk = document.getElementById("range-atk");
        var sliderdef = document.getElementById("range-def");
        var sliderspa = document.getElementById("range-spa");
        var sliderspd = document.getElementById("range-spd");
        var sliderspe = document.getElementById("range-spe");
        var outputhp = document.getElementById("ev-hp");
        var outputatk = document.getElementById("ev-atk");
        var outputdef = document.getElementById("ev-def");
        var outputspa = document.getElementById("ev-spa");
        var outputspd = document.getElementById("ev-spd");
        var outputspe = document.getElementById("ev-spe");
        outputhp.innerHTML = sliderhp.value;
        outputatk.innerHTML = slideratk.value;
        outputdef.innerHTML = sliderdef.value;
        outputspa.innerHTML = sliderspa.value;
        outputspd.innerHTML = sliderspd.value;
        outputspe.innerHTML = sliderspe.value;
        sliderhp.oninput = function() {outputhp.innerHTML = this.value;};
        slideratk.oninput = function() {outputatk.innerHTML = this.value;};
        sliderdef.oninput = function() {outputdef.innerHTML = this.value;};
        sliderspa.oninput = function() {outputspa.innerHTML = this.value;};
        sliderspd.oninput = function() {outputspd.innerHTML = this.value;};
        sliderspe.oninput = function() {outputspe.innerHTML = this.value;};
  </script>
  </body>
</html>

