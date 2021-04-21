<!DOCTYPE html>
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
          <button class="dropbtn">Juamedi 
            <img src="https://raw.githubusercontent.com/juamedi/SSW/main/cejaperro.png" class = "img-icon">
          </button>
          <div class="dropdown-content">
              <a class="dropdown-item" href="profile.jsp">Your profile</a>
              <div class = "dropdown-divider"></div>
              <a class="dropdown-item quit" href="login.jsp">Quit</a>
          </div>
        </form>
      </nav>

      <form class = "panel-fluid">
        <fieldset>
          <div class = "row-stats">
            <div class = "col-pkm-att">
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmname">Pokemon</label>
                </div>
                <div class = "col-6">
                  <input type="text" id="pkmname" aria-describedby="pokemon-name" placeholder="Bulbasaur">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmnature">Nature</label>
                </div>
                <div class = "col-6">
                  <input type="text" id="pkmnature" aria-describedby="pokemon-nature" placeholder="Adamant">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmlevel">Level</label>
                </div>
                <div class = "col-6">
                  <input type="text" id="pkmnlevel" aria-describedby="pokemon-nature" placeholder="1">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmgender">Gender</label>
                </div>
                <div class = "col-6">
                  <input type="text" id="pkmgender" aria-describedby="pokemon-nature" placeholder="Male">
                </div>
              </div>
              <div class = "row">
                <div class = "col-6">
                  <label class = "bold" for="pkmshiny">Shiny</label>
                </div>
                <div class = "col-6">
                  <input type="checkbox" id="shiny" name="shiny">
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
            </div>
            <div class = "col-pkm-moves">
              <div class = "row">
                <label class = "margin bold">Moveset</label>
                <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
                <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
                <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
                <input class = "input-stats" type="text" id="iv-spe" placeholder="---">
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
                      <label class = "text-muted">Choscar</label>
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
          </div>
          <div class = "col-card">
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
                      <label class = "text-muted">Gonzautist</label>
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
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

