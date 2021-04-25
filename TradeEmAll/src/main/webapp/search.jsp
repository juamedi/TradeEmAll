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
    ArrayList<Offer> list_offer = new ArrayList<Offer>();
    if ((ArrayList<Offer>) request.getAttribute("list_offer") != null) {
        list_offer = (ArrayList<Offer>) request.getAttribute("list_offer");
    }
    int size = list_offer.size();
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
            <img src="https://raw.githubusercontent.com/juamedi/SSW/main/cejaperro.png" class = "img-icon">
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
                  <input type="text" id="pkmname" name = "pkmname" aria-describedby="pokemon-name" placeholder="Bulbasaur">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmnature">Nature</label>
                </div>
                <div class = "col-6">
                  <input type="text" id="pkmnature" name = "pkmnature" aria-describedby="pokemon-nature" placeholder="Adamant">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmlevel">Level</label>
                </div>
                <div class = "col-6">
                  <input type="text" id="pkmnlevel" name = "pkmlevel" aria-describedby="pokemon-nature" placeholder="1">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmgender">Gender</label>
                </div>
                <div class = "col-6">
                  <input type="text" id="pkmgender" name = "pkmgender" aria-describedby="pokemon-nature" placeholder="Male">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmshiny">Shiny</label>
                </div>
                <div class = "col-6">
                  <input type="checkbox" id="shiny" name="pkmshiny">
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
        <div class = "row-card">    
          <div class = "col-card">
          <%
            for (int i = 0; i < size; i = i+2) {
              Offer offer = new Offer();
              offer = list_offer.get(i);
              
          %>
            <div class="card">
              <div class = "row">
                <div class = "col-3">
                  <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "card-img">
                </div>
                <div class = "col-card-stats">
                  <div class = "row justify-content-between">
                    <div class = "col-6">
                      <label class = "big bold">Bulbasaur</label>
                    </div>
                    <div class = "col-6">
                      <label>Owner</label>
                      <label class = "text-muted">Goba</label>
                    </div>
                  </div>
                  <div class = "row-blank"></div>
                  <div class = "row justify-content-between">
                    <div class = "col-4">
                      <label>Nature</label>
                      <label class = "text-muted">Adamant</label>
                    </div>
                    <div class = "col-3">
                      <label>Level</label>
                      <label class = "text-muted">100</label>
                    </div>
                    <div class = "col-3">
                      <label>Gender</label>
                      <label class = "text-muted">Male</label>
                    </div>
                    <div class = "col-2">
                      <label>Shiny</label>
                      <label class = "text-muted"></label>
                    </div>
                  </div>
                  <div class = "row-blank"></div>
                  <div class = "row justify-content-between">
                    <div class = "col-2">
                      <label class = "bold">HP</label>
                      <label>31</label>
                    </div>
                    <div class = "col-2">
                      <label class = "bold">ATK</label>
                      <label><%=offer.getAttackIVs()%></label>
                    </div>
                    <div class = "col-2">
                      <label class = "bold">DEF</label>
                      <label>31</label>
                    </div>
                    <div class = "col-2">
                      <label class = "bold">SPA</label>
                      <label>31</label>
                    </div>
                    <div class = "col-2">
                      <label class = "bold">SPD</label>
                      <label>31</label>
                    </div>
                    <div class = "col-2">
                      <label class = "bold">SPE</label>
                      <label>31</label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          <%
            }
          %>
          </div>

          <div class = "col-card">
          <%
            for (int i = 1; i < size; i = i+2) {
              Offer offer = new Offer();
              offer = list_offer.get(i);
          %>
            <div class="card">
              <div class = "row">
                <div class = "col-3">
                  <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "card-img">
                </div>
                <div class = "col-card-stats">
                  <div class = "row justify-content-between">
                    <div class = "col-6">
                      <label class = "big bold">Bulbasaur</label>
                    </div>
                    <div class = "col-6">
                      <label>Owner</label>
                      <label class = "text-muted">Thedi88</label>
                    </div>
                  </div>
                  <div class = "row-blank"></div>
                  <div class = "row justify-content-between">
                    <div class = "col-4">
                      <label>Nature</label>
                      <label class = "text-muted">Adamant</label>
                    </div>
                    <div class = "col-3">
                      <label>Level</label>
                      <label class = "text-muted">100</label>
                    </div>
                    <div class = "col-3">
                      <label>Gender</label>
                      <label class = "text-muted">Male</label>
                    </div>
                    <div class = "col-2">
                      <label>Shiny</label>
                      <label class = "text-muted">No</label>
                    </div>
                  </div>
                  <div class = "row-blank"></div>
                  <div class = "row justify-content-between">
                    <div class = "col-2">
                      <label class = "bold">HP</label>
                      <label>31</label>
                    </div>
                    <div class = "col-2">
                      <label class = "bold">ATK</label>
                      <label>31</label>
                    </div>
                    <div class = "col-2">
                      <label class = "bold">DEF</label>
                      <label>31</label>
                    </div>
                    <div class = "col-2">
                      <label class = "bold">SPA</label>
                      <label>31</label>
                    </div>
                    <div class = "col-2">
                      <label class = "bold">SPD</label>
                      <label>31</label>
                    </div>
                    <div class = "col-2">
                      <label class = "bold">SPE</label>
                      <label>31</label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          <%
            }
          %>  
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

