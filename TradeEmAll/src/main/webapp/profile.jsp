<!DOCTYPE html>
<%@page import = "com.model.*, java.util.*"%>
<html>
    <head>
            <title>Trade Em All</title>
            <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
            <link rel="stylesheet" href="style-common.css">
            <link rel="stylesheet" href="style-grid.css">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.1/css/all.css">

            <link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.png" sizes="16x16">
            <link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.png" sizes="32x32">
            <link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.pngg" sizes="64x64">  
    </head>


<%
    User user = (User) session.getAttribute("user");
    int id = user.getId();
    String username = user.getUsername();
    String password = user.getPassword();
    String email = user.getEmail();
    String pfp = user.getProfilePicture();

    ArrayList<Trade> list_trade = new ArrayList<Trade>();
    ArrayList<Offer> list_offer = new ArrayList<Offer>();
    ArrayList<Trade> active_trade = new ArrayList<Trade>();
    ArrayList<Trade> list_hist = new ArrayList<Trade>();
    if ((ArrayList<Trade>) session.getAttribute("list_trade_user") != null) {
      list_trade = (ArrayList<Trade>) session.getAttribute("list_trade_user");
    }
    if ((ArrayList<Offer>) session.getAttribute("list_offer_user") != null) {
      list_offer = (ArrayList<Offer>) session.getAttribute("list_offer_user");
    }
    if ((ArrayList<Trade>) session.getAttribute("active_trade_user") != null) {
      active_trade = (ArrayList<Trade>) session.getAttribute("active_trade_user");
    }
    if ((ArrayList<Trade>) session.getAttribute("hist_list_user") != null) {
      list_hist = (ArrayList<Trade>) session.getAttribute("hist_list_user");
    }
    int size = list_trade.size();
 
%>
<body>
    <div class="background-image">
        <div class="header">
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
              
    <div id="Info" class="tabcontent">
      <div class="tab">
        <button class="tablinks bold big" onclick="openTab(event, 'Info')" id="defaultOpen">Info</button>
        <%
            if (list_offer.size() != 0) {
        %>
        <button class="tablinks bold big" onclick="openTab(event, 'Offers received')" style = "color: #D42727">Offers received (new)</button>
        <%
            } else {
        %>
        <button class="tablinks bold big" onclick="openTab(event, 'Offers received')">Offers received</button>
        <%
            }
        %>
        <button class="tablinks bold big" onclick="openTab(event, 'History')">History</button>
        <button class="tablinks bold big" onclick="openTab(event, 'Your Offers')">Your Offers</button>
      </div>
      <div class = "panel-fluid-profile row" style="min-height: 600px; align-items: flex-start">
      <div class="col-profile">
      <div class="row py">
        <img src=<%=pfp%> class = "img-profile" alt= "Profile picture">
      </div>
      <div class="row py">
        <div class = "col-3 py">
          <label class = "bold">Username:</label>
        </div>
        <div class = "col-4 py">    
            <input readonly="True" value="<%=username + " #" + id%>"></input> 
        </div>
        <div class = "col-4 py">    
        </div>
      </div>
      <div class="row py justify-content-between">
        <div class = "col-3 py">
          <label class = "bold">Email:</label>
        </div>
        <div class = "col-9 py">    
          <label><%=email%></label> 
        </div>
      </div>
      <div class="row py">
        <div class = "col-3 py">
          <label class = "bold">Password:</label>
        </div>
        <div class = "col-4 py">    
          <input type="password" readonly="True" value=<%=password%>></input> 
        </div>
        <div class = "col-4 py">    
        </div>
      </div>
     
    </div>
    <div class="col-active-post">
      <div class="row justify-content-center">
        <label class = "bold" style="font-size: 150%; padding-bottom: 10px">Active posts</label>
      </div>
      <div class = "row-card-profile">
          <%
            if (size == 0) {
          %>
          <div class="card flex" style = "height: 200px">
            <div class = "row" style = "height: 100%">
              <div class = "col-12 text-align-center">
                <label class = "big bold" style = "align-self: center">No se ha encontrado ningun intercambio con esas características</label>
              </div>
            </div>
          </div>
          <%
            }
          %>
          <%
            for (int i = 0; i < size; i++) {
              String give_shiny = "Any";
              String receive_shiny = "Any";
              String receive_img = "https://raw.githubusercontent.com/juamedi/SSW/main/unknown_pokemon.png";
              String receive_name = "Any";
              String receive_ability = "Any";
              String receive_nature = "Any";
              String receive_gender = "Any";
              String receive_lvl = "Any";

              Trade trade = new Trade();
              Pokemon give_pkm = new Pokemon();
              Pokemon receive_pkm = new Pokemon();
              
              trade = list_trade.get(i);
              give_pkm = trade.getGivePkm();
              receive_pkm = trade.getReceivePkm();

              if (give_pkm.getShiny()) {
                  give_shiny = "Yes";
              }
              if (receive_pkm.getShiny()) {
                  receive_shiny = "Yes";
              }

              if (receive_pkm.getName() != null) {
                  receive_img = "https://play.pokemonshowdown.com/sprites/bwani/" + receive_pkm.getName().toLowerCase() + ".gif";
                  receive_name = receive_pkm.getName();
              }
              
              if (receive_pkm.getAbility() != null) {
                  receive_ability = receive_pkm.getAbility();
              }

              if (receive_pkm.getNature() != null) {
                  receive_nature = receive_pkm.getNature();
              }

              if (receive_pkm.getGender() != null) {
                  receive_gender = receive_pkm.getGender();
              }

              if (receive_pkm.getLvl() != 0) {
                  receive_lvl = "" + receive_pkm.getLvl();
              }
          %>
        <div class="card flex">
            <div class = "row justify-content-center">
              <div class = "col-5">
                <div class = "row">
                  <div class = "col-3">
                    <img src="<%="https://play.pokemonshowdown.com/sprites/bwani/" + give_pkm.getName().toLowerCase() + ".gif"%>" alt="Avatar" class = "card-img">
                  </div>
                  <div class = "col-card-stats">
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label class = "big bold"><%=give_pkm.getName()%></label>
                      </div>
                      <div class = "col-6">
                        <label>Owner</label>
                        <label class = "text-muted"><%=trade.getGiveUsername()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Level</label>
                        <label class = "text-muted"><%=give_pkm.getLvl()%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label>Nature</label>
                        <label class = "text-muted"><%=give_pkm.getNature()%></label>
                      </div>
                        <div class = "col-3">
                          <label>Ability</label>
                          <label class = "text-muted"><%=give_pkm.getAbility()%></label>
                        </div>
                      <div class = "col-3">
                        <label>Gender</label>
                        <label class = "text-muted"><%=give_pkm.getGender()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Shiny</label>
                        <label class = "text-muted"><%=give_shiny%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-2">
                        <label class = "bold">HP</label>
                        <label><%=give_pkm.getIVHP()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">ATK</label>
                        <label><%=give_pkm.getIVATK()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">DEF</label>
                        <label><%=give_pkm.getIVDEF()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPA</label>
                        <label><%=give_pkm.getIVSPA()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPD</label>
                        <label><%=give_pkm.getIVSPD()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPE</label>
                        <label><%=give_pkm.getIVSPE()%></label>
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
                    <img src="<%=receive_img%>" alt="Avatar" class = "card-img">
                  </div>
                  <div class = "col-card-stats">
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label class = "big bold"><%=receive_name%></label>
                      </div>
                      <div class = "col-6">
                        <label> </label>
                      </div>
                      <div class = "col-2">
                        <label>Level</label>
                        <label class = "text-muted"><%=receive_lvl%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label>Nature</label>
                        <label class = "text-muted"><%=receive_nature%></label>
                      </div>
                      <div class = "col-3">
                        <label>Ability</label>
                        <label class = "text-muted"><%=receive_ability%></label>
                      </div>
                      <div class = "col-3">
                        <label>Gender</label>
                        <label class = "text-muted"><%=receive_gender%></label>
                      </div>
                      <div class = "col-2">
                        <label>Shiny</label>
                        <label class = "text-muted"><%=receive_shiny%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-2">
                        <label class = "bold">HP</label>
                        <label><%=receive_pkm.getIVHP()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">ATK</label>
                        <label><%=receive_pkm.getIVATK()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">DEF</label>
                        <label><%=receive_pkm.getIVDEF()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPA</label>
                        <label><%=receive_pkm.getIVSPA()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPD</label>
                        <label><%=receive_pkm.getIVSPD()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPE</label>
                        <label><%=receive_pkm.getIVSPE()%></label>
                      </div>
                    </div>
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

    <div id="Offers received" class="tabcontent">
      
      <div class="tab">
        <button class="tablinks bold big" onclick="openTab(event, 'Info')" id="defaultOpen">Info</button>
        <%
            if (list_offer.size() != 0) {
        %>
        <button class="tablinks bold big" onclick="openTab(event, 'Offers received')" style = "color: #D42727">Offers received (new)</button>
        <%
            } else {
        %>
        <button class="tablinks bold big" onclick="openTab(event, 'Offers received')">Offers received</button>
        <%
            }
        %>
        <button class="tablinks bold big" onclick="openTab(event, 'History')">History</button>
        <button class="tablinks bold big" onclick="openTab(event, 'Your Offers')">Your Offers</button>
      </div>
      <div class = "panel-fluid-profile row" style="min-height: 600px; align-items: flex-start">
      <div class = "col">
        <div class="row justify-content-center">
          <label class = "bold" style="font-size: 150%; padding-bottom: 10px ">Offers received</label>
        </div>
        <div class = "row-card-profile">
          <%
            if (list_offer.size() == 0) {
          %>
          <div class="card flex" style = "height: 200px">
            <div class = "row" style = "height: 100%">
              <div class = "col-12 text-align-center">
                <label class = "big bold" style = "align-self: center">No offers received</label>
              </div>
            </div>
          </div>
          <%
            }
          %>
          <%
            for (int i = 0; i < list_offer.size(); i++) {
              String give_shiny = "Any";
              String receive_shiny = "Any";
              String receive_img = "https://raw.githubusercontent.com/juamedi/SSW/main/unknown_pokemon.png";
              String receive_name = "Any";
              String receive_ability = "Any";
              String receive_nature = "Any";
              String receive_gender = "Any";
              String receive_lvl = "Any";

              Trade t = new Trade();
              Trade trade = new Trade();
              Offer offer = new Offer();
              Pokemon give_pkm = new Pokemon();
              Pokemon receive_pkm = new Pokemon();

              offer = list_offer.get(i);

              int j_index = 0;
              for (int j = 0; j < size; j++) {
                t = list_trade.get(j);
                if (t.getTradeId() == offer.getTradeId()) {
                    trade = list_trade.get(j);
                    j_index = j;
                }
              }

              give_pkm = trade.getGivePkm();
              receive_pkm = offer.getPkm();

              if (give_pkm.getShiny()) {
                  give_shiny = "Yes";
              }
              if (receive_pkm.getShiny()) {
                  receive_shiny = "Yes";
              }

              if (receive_pkm.getName() != null) {
                  receive_img = "https://play.pokemonshowdown.com/sprites/bwani/" + receive_pkm.getName().toLowerCase() + ".gif";
                  receive_name = receive_pkm.getName();
              }
              
              if (receive_pkm.getAbility() != null) {
                  receive_ability = receive_pkm.getAbility();
              }

              if (receive_pkm.getNature() != null) {
                  receive_nature = receive_pkm.getNature();
              }

              if (receive_pkm.getGender() != null) {
                  receive_gender = receive_pkm.getGender();
              }

              if (receive_pkm.getLvl() != 0) {
                  receive_lvl = "" + receive_pkm.getLvl();
              }
          %>
            <form class="card flex">
              <div class = "row justify-content-between">
                <div class = "col-5">
                <div class = "row">
                  <div class = "col-3">
                    <img src="<%="https://play.pokemonshowdown.com/sprites/bwani/" + give_pkm.getName().toLowerCase() + ".gif"%>" alt="Avatar" class = "card-img">
                  </div>
                  <div class = "col-card-stats">
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label class = "big bold"><%=give_pkm.getName()%></label>
                      </div>
                      <div class = "col-6">
                        <label>Owner</label>
                        <label class = "text-muted"><%=trade.getGiveUsername()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Level</label>
                        <label class = "text-muted"><%=give_pkm.getLvl()%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label>Nature</label>
                        <label class = "text-muted"><%=give_pkm.getNature()%></label>
                      </div>
                        <div class = "col-3">
                          <label>Ability</label>
                          <label class = "text-muted"><%=give_pkm.getAbility()%></label>
                        </div>
                      <div class = "col-3">
                        <label>Gender</label>
                        <label class = "text-muted"><%=give_pkm.getGender()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Shiny</label>
                        <label class = "text-muted"><%=give_shiny%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-2">
                        <label class = "bold">HP</label>
                        <label><%=give_pkm.getIVHP()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">ATK</label>
                        <label><%=give_pkm.getIVATK()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">DEF</label>
                        <label><%=give_pkm.getIVDEF()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPA</label>
                        <label><%=give_pkm.getIVSPA()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPD</label>
                        <label><%=give_pkm.getIVSPD()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPE</label>
                        <label><%=give_pkm.getIVSPE()%></label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                <div class = "col-5">
                <div class = "row">
                  <div class = "col-3">
                    <img src="<%=receive_img%>" alt="Avatar" class = "card-img">
                  </div>
                  <div class = "col-card-stats">
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label class = "big bold"><%=receive_name%></label>
                      </div>
                      <div class = "col-6">
                        <label>Owner</label>
                        <label class = "text-muted"><%=offer.getUsername()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Level</label>
                        <label class = "text-muted"><%=receive_lvl%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label>Nature</label>
                        <label class = "text-muted"><%=receive_nature%></label>
                      </div>
                      <div class = "col-3">
                        <label>Ability</label>
                        <label class = "text-muted"><%=receive_ability%></label>
                      </div>
                      <div class = "col-3">
                        <label>Gender</label>
                        <label class = "text-muted"><%=receive_gender%></label>
                      </div>
                      <div class = "col-2">
                        <label>Shiny</label>
                        <label class = "text-muted"><%=receive_shiny%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-2">
                        <label class = "bold">HP</label>
                        <label><%=receive_pkm.getIVHP()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">ATK</label>
                        <label><%=receive_pkm.getIVATK()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">DEF</label>
                        <label><%=receive_pkm.getIVDEF()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPA</label>
                        <label><%=receive_pkm.getIVSPA()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPD</label>
                        <label><%=receive_pkm.getIVSPD()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPE</label>
                        <label><%=receive_pkm.getIVSPE()%></label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                <div class = "col-2">
                  <div class = "row justify-content-center">
                    <div class = "col-3">
                      <a class = "offer-input" type="submit" id="boton-aceptar" href="AcceptOfferServlet?id-list-trade=<%=j_index%>&id-list-offer=<%=i%>">
                        <img src="https://raw.githubusercontent.com/juamedi/SSW/main/accepted.png" class = "img-logo" style="margin: 0px">
                      </a>
                    </div>
                    <div class = "col-3">
                      <a class = "offer-input" type="submit" id="boton-rechazar" href="RejectOfferServlet?id-list-trade=<%=j_index%>&id-list-offer=<%=i%>">
                        <img src="https://raw.githubusercontent.com/juamedi/SSW/main/denied.png" class = "img-logo" style="margin: 0px">
                      </a>
                    </div>
                  </div>
                </div>
              </div>    
            </form>
        <%
            }
        %>
          </div>
        </div>
      </div>
    </div>
  
  <div id="History" class="tabcontent">
    <div class="tab">
        <button class="tablinks bold big" onclick="openTab(event, 'Info')" id="defaultOpen">Info</button>
        <%
            if (list_offer.size() != 0) {
        %>
        <button class="tablinks bold big" onclick="openTab(event, 'Offers received')" style = "color: #D42727">Offers received (new)</button>
        <%
            } else {
        %>
        <button class="tablinks bold big" onclick="openTab(event, 'Offers received')">Offers received</button>
        <%
            }
        %>
        <button class="tablinks bold big" onclick="openTab(event, 'History')">History</button>
        <button class="tablinks bold big" onclick="openTab(event, 'Your Offers')">Your Offers</button>
      </div>
    <div class = "panel-fluid-profile row" style="min-height: 600px; align-items: flex-start">
    
      <div class = "col">
        <div class="row justify-content-center">
          <label class = "bold" style="font-size: 150%; padding-bottom: 10px ">History</label>
        </div>
        <div class = "row-card-profile">
        <%
            if (list_hist.size() == 0) {
          %>
          <div class="card flex" style = "height: 200px">
            <div class = "row" style = "height: 100%">
              <div class = "col-12 text-align-center">
                <label class = "big bold" style = "align-self: center">No history avaliable</label>
              </div>
            </div>
          </div>
          <%
            }
          %>
          <%
            for (int i = 0; i < list_hist.size(); i++) {
              String give_shiny = "Any";
              String receive_shiny = "Any";
              String receive_img = "https://raw.githubusercontent.com/juamedi/SSW/main/unknown_pokemon.png";
              String receive_name = "Any";
              String receive_ability = "Any";
              String receive_nature = "Any";
              String receive_gender = "Any";
              String receive_lvl = "Any";

              Trade trade = new Trade();
              Pokemon give_pkm = new Pokemon();
              Pokemon receive_pkm = new Pokemon();
              
              trade = list_hist.get(i);
              give_pkm = trade.getGivePkm();
              receive_pkm = trade.getReceivePkm();

              if (give_pkm.getShiny()) {
                  give_shiny = "Yes";
              }
              if (receive_pkm.getShiny()) {
                  receive_shiny = "Yes";
              }

              if (receive_pkm.getName() != null) {
                  receive_img = "https://play.pokemonshowdown.com/sprites/bwani/" + receive_pkm.getName().toLowerCase() + ".gif";
                  receive_name = receive_pkm.getName();
              }
              
              if (receive_pkm.getAbility() != null) {
                  receive_ability = receive_pkm.getAbility();
              }

              if (receive_pkm.getNature() != null) {
                  receive_nature = receive_pkm.getNature();
              }

              if (receive_pkm.getGender() != null) {
                  receive_gender = receive_pkm.getGender();
              }

              if (receive_pkm.getLvl() != 0) {
                  receive_lvl = "" + receive_pkm.getLvl();
              }
          %>
        <div class="card flex">
            <div class = "row justify-content-center">
              <div class = "col-5">
                <div class = "row">
                  <div class = "col-3">
                    <img src="<%="https://play.pokemonshowdown.com/sprites/bwani/" + give_pkm.getName().toLowerCase() + ".gif"%>" alt="Avatar" class = "card-img">
                  </div>
                  <div class = "col-card-stats">
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label class = "big bold"><%=give_pkm.getName()%></label>
                      </div>
                      <div class = "col-6">
                        <label>Owner</label>
                        <label class = "text-muted"><%=trade.getGiveUsername()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Level</label>
                        <label class = "text-muted"><%=give_pkm.getLvl()%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label>Nature</label>
                        <label class = "text-muted"><%=give_pkm.getNature()%></label>
                      </div>
                        <div class = "col-3">
                          <label>Ability</label>
                          <label class = "text-muted"><%=give_pkm.getAbility()%></label>
                        </div>
                      <div class = "col-3">
                        <label>Gender</label>
                        <label class = "text-muted"><%=give_pkm.getGender()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Shiny</label>
                        <label class = "text-muted"><%=give_shiny%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-2">
                        <label class = "bold">HP</label>
                        <label><%=give_pkm.getIVHP()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">ATK</label>
                        <label><%=give_pkm.getIVATK()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">DEF</label>
                        <label><%=give_pkm.getIVDEF()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPA</label>
                        <label><%=give_pkm.getIVSPA()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPD</label>
                        <label><%=give_pkm.getIVSPD()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPE</label>
                        <label><%=give_pkm.getIVSPE()%></label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class = "col-1">
                <div class = "row justify-content-center">
                <%
                  if (trade.getGiveUsername().equals(username)) {
                %>
                  <img src = "https://raw.githubusercontent.com/juamedi/SSW/main/arrow.png" alt="Avatar" class = "card-img">
                <%
                  } else {
                %>
                  <img src = "https://raw.githubusercontent.com/juamedi/SSW/main/arrow-reverse.png" alt="Avatar" class = "card-img">
                <%
                    }
                %>
                </div>
              </div>
              <div class = "col-5">
                <div class = "row">
                  <div class = "col-3">
                    <img src="<%=receive_img%>" alt="Avatar" class = "card-img">
                  </div>
                  <div class = "col-card-stats">
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label class = "big bold"><%=receive_name%></label>
                      </div>
                      <div class = "col-6">
                        <label>Owner</label>
                        <label class = "text-muted"><%=trade.getReceiveUsername()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Level</label>
                        <label class = "text-muted"><%=receive_lvl%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label>Nature</label>
                        <label class = "text-muted"><%=receive_nature%></label>
                      </div>
                      <div class = "col-3">
                        <label>Ability</label>
                        <label class = "text-muted"><%=receive_ability%></label>
                      </div>
                      <div class = "col-3">
                        <label>Gender</label>
                        <label class = "text-muted"><%=receive_gender%></label>
                      </div>
                      <div class = "col-2">
                        <label>Shiny</label>
                        <label class = "text-muted"><%=receive_shiny%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-2">
                        <label class = "bold">HP</label>
                        <label><%=receive_pkm.getIVHP()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">ATK</label>
                        <label><%=receive_pkm.getIVATK()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">DEF</label>
                        <label><%=receive_pkm.getIVDEF()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPA</label>
                        <label><%=receive_pkm.getIVSPA()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPD</label>
                        <label><%=receive_pkm.getIVSPD()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPE</label>
                        <label><%=receive_pkm.getIVSPE()%></label>
                      </div>
                    </div>
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
    <div id="Your Offers" class="tabcontent">
      <div class="tab">
          <button class="tablinks bold big" onclick="openTab(event, 'Info')" id="defaultOpen">Info</button>
        <%
            if (list_offer.size() != 0) {
        %>
        <button class="tablinks bold big" onclick="openTab(event, 'Offers received')" style = "color: #D42727">Offers received (new)</button>
        <%
            } else {
        %>
        <button class="tablinks bold big" onclick="openTab(event, 'Offers received')">Offers received</button>
        <%
            }
        %>
          <button class="tablinks bold big" onclick="openTab(event, 'History')">History</button>
          <button class="tablinks bold big" onclick="openTab(event, 'Your Offers')">Your Offers</button>
      </div>
      <div class = "panel-fluid-profile row" style="min-height: 600px; align-items: flex-start">
      <div class = "col">
        <div class="row justify-content-center">
          <label class = "bold" style="font-size: 150%; padding-bottom: 10px ">Your Offers</label>
        </div>
        <div class = "row-card-profile">
          <%
            if (active_trade.size() == 0) {
          %>
          <div class="card flex" style = "height: 200px">
            <div class = "row" style = "height: 100%">
              <div class = "col-12 text-align-center">
                <label class = "big bold" style = "align-self: center">You have no offer</label>
              </div>
            </div>
          </div>
          <%
            }
          %>
          <%
            for (int i = 0; i < active_trade.size(); i++) {
              String give_shiny = "Any";
              String receive_shiny = "Any";
              String receive_img = "https://raw.githubusercontent.com/juamedi/SSW/main/unknown_pokemon.png";
              String receive_name = "Any";
              String receive_ability = "Any";
              String receive_nature = "Any";
              String receive_gender = "Any";
              String receive_lvl = "Any";
              String offer_estado = "";

              Trade trade = new Trade();
              Pokemon give_pkm = new Pokemon();
              Pokemon receive_pkm = new Pokemon();
              
              trade = active_trade.get(i);
              give_pkm = trade.getGivePkm();
              receive_pkm = trade.getReceivePkm();

              if (trade.getOfferEstado().equals("Accepted")) {
                offer_estado = "style =  \"background-color: rgb(105, 184, 115)\"";
              }

              if (trade.getOfferEstado().equals("Rejected")) {
                offer_estado = "style =  \"background-color: rgb(214, 110, 110)\"";
              }

              if (give_pkm.getShiny()) {
                  give_shiny = "Yes";
              }
              if (receive_pkm.getShiny()) {
                  receive_shiny = "Yes";
              }

              if (receive_pkm.getName() != null) {
                  receive_img = "https://play.pokemonshowdown.com/sprites/bwani/" + receive_pkm.getName().toLowerCase() + ".gif";
                  receive_name = receive_pkm.getName();
              }
              
              if (receive_pkm.getAbility() != null) {
                  receive_ability = receive_pkm.getAbility();
              }

              if (receive_pkm.getNature() != null) {
                  receive_nature = receive_pkm.getNature();
              }

              if (receive_pkm.getGender() != null) {
                  receive_gender = receive_pkm.getGender();
              }

              if (receive_pkm.getLvl() != 0) {
                  receive_lvl = "" + receive_pkm.getLvl();
              }
          %>
        <div class="card flex" <%=offer_estado%>>
            <div class = "row justify-content-center">
              <div class = "col-5">
                <div class = "row">
                  <div class = "col-3">
                    <img src="<%="https://play.pokemonshowdown.com/sprites/bwani/" + give_pkm.getName().toLowerCase() + ".gif"%>" alt="Avatar" class = "card-img">
                  </div>
                  <div class = "col-card-stats">
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label class = "big bold"><%=give_pkm.getName()%></label>
                      </div>
                      <div class = "col-6">
                        <label>Owner</label>
                        <label class = "text-muted"><%=trade.getGiveUsername()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Level</label>
                        <label class = "text-muted"><%=give_pkm.getLvl()%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label>Nature</label>
                        <label class = "text-muted"><%=give_pkm.getNature()%></label>
                      </div>
                        <div class = "col-3">
                          <label>Ability</label>
                          <label class = "text-muted"><%=give_pkm.getAbility()%></label>
                        </div>
                      <div class = "col-3">
                        <label>Gender</label>
                        <label class = "text-muted"><%=give_pkm.getGender()%></label>
                      </div>
                      <div class = "col-2">
                        <label>Shiny</label>
                        <label class = "text-muted"><%=give_shiny%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-2">
                        <label class = "bold">HP</label>
                        <label><%=give_pkm.getIVHP()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">ATK</label>
                        <label><%=give_pkm.getIVATK()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">DEF</label>
                        <label><%=give_pkm.getIVDEF()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPA</label>
                        <label><%=give_pkm.getIVSPA()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPD</label>
                        <label><%=give_pkm.getIVSPD()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPE</label>
                        <label><%=give_pkm.getIVSPE()%></label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class = "col-1">
                <div class = "row justify-content-center">
                  <img src = "https://raw.githubusercontent.com/juamedi/SSW/main/arrow-reverse.png" alt="Avatar" class = "card-img">
                </div>
              </div>
              <div class = "col-5">
                <div class = "row">
                  <div class = "col-3">
                    <img src="<%=receive_img%>" alt="Avatar" class = "card-img">
                  </div>
                  <div class = "col-card-stats">
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label class = "big bold"><%=receive_name%></label>
                      </div>
                      <div class = "col-6">
                        <label> </label>
                      </div>
                      <div class = "col-2">
                        <label>Level</label>
                        <label class = "text-muted"><%=receive_lvl%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-4">
                        <label>Nature</label>
                        <label class = "text-muted"><%=receive_nature%></label>
                      </div>
                      <div class = "col-3">
                        <label>Ability</label>
                        <label class = "text-muted"><%=receive_ability%></label>
                      </div>
                      <div class = "col-3">
                        <label>Gender</label>
                        <label class = "text-muted"><%=receive_gender%></label>
                      </div>
                      <div class = "col-2">
                        <label>Shiny</label>
                        <label class = "text-muted"><%=receive_shiny%></label>
                      </div>
                    </div>
                    <div class = "row-blank"></div>
                    <div class = "row justify-content-between">
                      <div class = "col-2">
                        <label class = "bold">HP</label>
                        <label><%=receive_pkm.getIVHP()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">ATK</label>
                        <label><%=receive_pkm.getIVATK()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">DEF</label>
                        <label><%=receive_pkm.getIVDEF()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPA</label>
                        <label><%=receive_pkm.getIVSPA()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPD</label>
                        <label><%=receive_pkm.getIVSPD()%></label>
                      </div>
                      <div class = "col-2">
                        <label class = "bold">SPE</label>
                        <label><%=receive_pkm.getIVSPE()%></label>
                      </div>
                    </div>
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
  </div>
  
      </div>  
    </div>
  </div>
    </div>
  </div>
  <script>
      // Gestiona el cambio de tabs en el apartado "Profile"
      function openTab(evt, tabName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
          tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
          tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(tabName).style.display = "block";
        evt.currentTarget.className += " active";
      }
      document.getElementById("defaultOpen").click();

      // Cambia color para estados entre aceptado y rechazado en "Offers received"
      let y = document.getElementsByClassName("offer-input");
      for (let i = 0; i < y.length; i++) {
        y[i].onclick = function({target}) {
          if (!target.parentElement.parentElement.parentElement.style.backgroundColor) {
            if(target.id === "boton-aceptar"){
                target.parentElement.parentElement.parentElement.style.backgroundColor = "rgb(105, 184, 115)";
            }else{
                target.parentElement.parentElement.parentElement.style.backgroundColor = "rgb(214, 110, 110)"; 
            }
          }
        };
      }
      

    </script>
</body>
</html>