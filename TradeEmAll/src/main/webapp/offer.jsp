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
    String pfp = user.getProfilePicture();
    int id_trade = (Integer) request.getAttribute("id_trade");
    ArrayList<Trade> list_trade = new ArrayList<Trade>();
    if ((ArrayList<Trade>) request.getAttribute("list_trade") != null) {
      list_trade = (ArrayList<Trade>) request.getAttribute("list_trade");
    }

    Trade trade = new Trade();
    Pokemon give_pkm = new Pokemon();
    Pokemon receive_pkm = new Pokemon();

    String give_shiny = "";
    String give_img = "https://raw.githubusercontent.com/juamedi/SSW/main/unknown_pokemon.png";
    String give_name = "Any";
    String give_ability = "Any";
    String give_nature = "Any";
    String give_gender = "Any";
    String give_lvl = "Any";

    String receive_shiny = "";
    String receive_img = "";
    String receive_name = "";
    String receive_ability = "";
    String receive_nature = "";
    String receive_gender = "";
    String receive_lvl = "";
    String receive_evhp = "" + receive_pkm.getEVHP();
    String receive_evatk = "" + receive_pkm.getEVATK();
    String receive_evdef = "" + receive_pkm.getEVDEF();
    String receive_evspa = "" + receive_pkm.getEVSPA();
    String receive_evspd = "" + receive_pkm.getEVSPD();
    String receive_evspe = "" + receive_pkm.getEVSPE();
    String receive_ivhp = "min = \"" + receive_pkm.getIVHP()+ "\"";
    String receive_ivatk = "min = \"" + receive_pkm.getIVATK() + "\"";
    String receive_ivdef = "min = \"" + receive_pkm.getIVDEF() + "\"";
    String receive_ivspa = "min = \"" + receive_pkm.getIVSPA() + "\"";
    String receive_ivspd = "min = \"" + receive_pkm.getIVSPD() + "\"";
    String receive_ivspe = "min = \"" + receive_pkm.getIVSPE() + "\"";
    String receive_move1 = "";
    String receive_move2 = "";
    String receive_move3 = "";
    String receive_move4 = "";

    trade = list_trade.get(id_trade);
    give_pkm = trade.getGivePkm();
    receive_pkm = trade.getReceivePkm();

    if (give_pkm.getShiny()) {give_shiny = "checked";}
    if (give_pkm.getName() != null) {
        give_img = "https://play.pokemonshowdown.com/sprites/bwani/" + give_pkm.getName().toLowerCase() + ".gif";
        give_name = give_pkm.getName();
    }
    if (give_pkm.getAbility() != null) {give_ability = give_pkm.getAbility();}
    if (give_pkm.getNature() != null) {give_nature = give_pkm.getNature();}
    if (give_pkm.getGender() != null) {give_gender = give_pkm.getGender();}
    if (give_pkm.getLvl() != 0) {give_lvl = "" + give_pkm.getLvl();}

    if (receive_pkm.getShiny()) {receive_shiny = "checked";}
    if (receive_pkm.getName() != null) {
        receive_img = "https://play.pokemonshowdown.com/sprites/bwani/" + receive_pkm.getName().toLowerCase() + ".gif";
        receive_name = "value = \"" + receive_pkm.getName() + "\" disabled";
    }
    if (receive_pkm.getAbility() != null) {receive_ability = "value = \"" + receive_pkm.getAbility() + "\" disabled";}
    if (receive_pkm.getNature() != null) {receive_nature = "value = \"" + receive_pkm.getNature() + "\" disabled";}
    if (receive_pkm.getGender() != null) {receive_gender = "value = \"" + receive_pkm.getGender() + "\" disabled";}
    if (receive_pkm.getLvl() != 0) {receive_lvl = "value = \"" + receive_pkm.getLvl() + "\" disabled";}
    if (receive_pkm.getMove1() != null) {receive_move1 = "value = \"" + receive_pkm.getMove1() + "\" disabled";}
    if (receive_pkm.getMove2() != null) {receive_move2 = "value = \"" + receive_pkm.getMove2() + "\" disabled";}
    if (receive_pkm.getMove3() != null) {receive_move3 = "value = \"" + receive_pkm.getMove3() + "\" disabled";}
    if (receive_pkm.getMove4() != null) {receive_move4 = "value = \"" + receive_pkm.getMove4() + "\" disabled";}
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

      <form class = "row just" action="CreateServlet" method="post">
        <div class = "col-6">
          <div class = "row justify-content-center">  
            <div class = panel-fluid-double>
              <fieldset>
                <legend>Given</legend>
                <div class = "row-stats">
                  <div class = "col-4">
                    <img id = "cimg1" src="<%=give_img%>" alt="Pokemon image" class = "img-create">
                  </div>
                  <div class = "col-8">
                    <div class ="row">
                      <div class = "col-2">
                        <label class = "bold">Name</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="cname1" name="pkm-give-name" aria-describedby="pokemon-name" placeholder="Bulbasaur" value="<%=give_name%>" disabled>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Level</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="level" name="pkm-give-lvl" aria-describedby="pokemon-level" placeholder="1" value="<%=give_lvl%>" disabled>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Gender</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="gender" name="pkm-give-gender" aria-describedby="pokemon-gender" placeholder="Male" value="<%=give_gender%>" disabled>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Ability</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="ability" name="pkm-give-ability" aria-describedby="pokemon-gender" placeholder="Overgrow" value="<%=give_ability%>" disabled>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Shiny</label>
                      </div>
                      <div class = "col-10">
                        <input class="cbx-shiny" type="checkbox" style = "margin: 2px 0px" id="shiny" name="pkm-give-shiny" <%=give_shiny%> disabled>
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
                      <input type="range" min="0" max="252" value="<%=give_pkm.getEVHP()%>" class="custom-range" id="give-range-hp" name="pkm-give-ev-hp" disabled>
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-hp">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-hp" placeholder="HP" name="pkm-give-iv-hp" value="<%=give_pkm.getIVHP()%>" disabled>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">ATK</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="<%=give_pkm.getEVATK()%>" class="custom-range" id="give-range-atk" name="pkm-give-ev-atk" disabled>
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-atk">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-atk" placeholder="ATK" name="pkm-give-iv-atk" value="<%=give_pkm.getIVATK()%>" disabled>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">DEF</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="<%=give_pkm.getEVDEF()%>" class="custom-range" id="give-range-def" name="pkm-give-ev-def" disabled>
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-def">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-def" placeholder="DEF" name="pkm-give-iv-def" value="<%=give_pkm.getIVDEF()%>" disabled>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPA</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="<%=give_pkm.getEVSPA()%>" class="custom-range" id="give-range-spa" name="pkm-give-ev-spa" disabled>
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-spa">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spa" placeholder="SPA" name="pkm-give-iv-spa" value="<%=give_pkm.getIVSPA()%>" disabled>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPD</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="<%=give_pkm.getEVSPD()%>" class="custom-range" id="give-range-spd" name="pkm-give-ev-spd" disabled>
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-spd">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spd" placeholder="SPD" name="pkm-give-iv-spd" value="<%=give_pkm.getIVSPD()%>" disabled>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPE</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="0" max="252" value="<%=give_pkm.getEVSPE()%>" class="custom-range" id="give-range-spe" name="pkm-give-ev-spe" disabled>
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "give-ev-spe">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="SPE" name="pkm-give-iv-spe" value="<%=give_pkm.getIVSPE()%>" disabled>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-6">
                    <label class = "margin bold">Moveset</label>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-give-move-1" value="<%=give_pkm.getMove1()%>" disabled>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-give-move-2" value="<%=give_pkm.getMove2()%>" disabled>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-give-move-3" value="<%=give_pkm.getMove3()%>" disabled>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-give-move-4" value="<%=give_pkm.getMove4()%>" disabled>
                  </div>
                  <div class = "col-5">
                    <div class = "row-stats">
                      <div class = "col-3">
                        <label class = "bold">Nature</label>
                      </div>
                      <div class = "col-8">
                        <input type = "text" id = "nature" aria-describedby = "pokemon-nature" placeholder="Adamant" name="pkm-give-nature" value="<%=give_nature%>" disabled>
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
                    <img id = "cimg2" src="<%=receive_img%>" alt="Pokemon image" class="img-create">
                  </div>
                  <div class = "col-8">
                    <div class ="row">
                      <div class = "col-2">
                        <label class = "bold">Name</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="cname2" aria-describedby="pokemon-name" placeholder="Bulbasaur" name="pkm-receive-name" <%=receive_name%>>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Level</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="level" aria-describedby="pokemon-level" placeholder="1" name="pkm-receive-lvl" <%=receive_lvl%>>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Gender</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="gender" aria-describedby="pokemon-gender" placeholder="Male" name="pkm-receive-gender" <%=receive_gender%>>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Ability</label>
                      </div>
                      <div class = "col-10">
                        <input type="text" style = "margin: 2px 0px" id="ability" aria-describedby="pokemon-gender" placeholder="Overgrow" name="pkm-receive-ability" <%=receive_ability%>>
                      </div>
                    </div>
                    <div class = "row">
                      <div class = "col-2">
                        <label class = "bold">Shiny</label>
                      </div>
                      <div class = "col-10">
                        <input type="checkbox" style = "margin: 2px 0px" id="shiny"  name="pkm-receive-shiny" <%=receive_shiny%>>
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
                      <input type="range" min="<%=receive_evhp%>" max="252" value="0" step="4" class="custom-range" id="receive-range-hp" name="pkm-receive-ev-hp">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "receive-ev-hp">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-hp" placeholder="HP" name="pkm-receive-iv-hp" <%=receive_ivhp%>>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">ATK</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="<%=receive_evatk%>" max="252" value="0" step="4" class="custom-range" id="receive-range-atk" name="pkm-receive-ev-atk">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "receive-ev-atk">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-atk" placeholder="ATK" name="pkm-receive-iv-atk" <%=receive_ivatk%>>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">DEF</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="<%=receive_evdef%>" max="252" value="0"  step="4" class="custom-range" id="receive-range-def" name="pkm-receive-ev-def">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "receive-ev-def">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-def" placeholder="DEF" name="pkm-receive-iv-def" <%=receive_ivdef%>>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-att">
                    <label class = "bold">SPA</label>
                  </div>
                  <div class = "col-range">
                    <div class="slidecontainer">
                      <input type="range" min="<%=receive_evspa%>" max="252" value="<%=receive_evspa%>" step="4" class="custom-range" id="receive-range-spa" name="pkm-receive-ev-spa">
                    </div>
                  </div>
                  <div class = "col-ev">
                    <label id = "receive-ev-spa">252</label>
                  </div>
                  <div class = "col-iv">
                    <input class = "input-stats" type="text" id="iv-spa" placeholder="SPA" name="pkm-receive-iv-spa" <%=receive_ivspa%>>
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
                    <input class = "input-stats" type="text" id="iv-spd" placeholder="SPD" name="pkm-receive-iv-spd" <%=receive_ivspd%>>
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
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="SPE" name="pkm-receive-iv-spe" <%=receive_ivspe%>>
                  </div>
                </div>
                <div class = "row-stats">
                  <div class = "col-6">
                    <label class = "margin bold">Moveset</label>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-receive-move-1" <%=receive_move1%>>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-receive-move-2" <%=receive_move2%>>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-receive-move-3" <%=receive_move3%>>
                    <input class = "input-stats" type="text" id="iv-spe" placeholder="---" name="pkm-receive-move-4" <%=receive_move4%>>
                  </div>
                  <div class = "col-5">
                    <div class = "row-stats">
                      <div class = "col-3">
                        <label class = "bold">Nature</label>
                      </div>
                      <div class = "col-8">
                        <input type = "text" id = "nature" aria-describedby = "pokemon-nature" placeholder="Adamant" name="pkm-receive-nature" <%=receive_nature%>>
                      </div>
                    </div>
                    <div class = "row">
                      <label class = "bold">Comments</label>
                    </div>
                    <div class = "row">
                      <textarea id="comments" name="comments" rows = "6" cols = "40">Write any extra information here.</textarea>
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
        var cimg2 = document.getElementById("cimg2");
        var cname2 = document.getElementById("cname2");
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