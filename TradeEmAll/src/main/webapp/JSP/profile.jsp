<!DOCTYPE html>
<html>

<head>
	<title>Trade Em All</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="style-common.css">
	<link rel="stylesheet" href="style-grid.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.1/css/all.css">

	<link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.png" sizes="16x16">
	<link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.png" sizes="32x32">
	<link rel="icon" type="image/png" href="https://raw.githubusercontent.com/juamedi/SSW/main/favicon.pngg" sizes="64x64">
</head>

<body>
	<div class="background-image">
		<div class="header">
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
    <div id="Info" class="tabcontent">
      <div class="tab">
        <button class="tablinks bold big" onclick="openTab(event, 'Info')" id="defaultOpen">Info</button>
        <button class="tablinks bold big" onclick="openTab(event, 'Offers')">Offers</button>
        <button class="tablinks bold big" onclick="openTab(event, 'Reviews')">Reviews</button>
      </div>
      <div class = "panel-fluid-profile row">
      <div class="col-profile">
      <div class="row py">
        <img src='https://raw.githubusercontent.com/juamedi/SSW/main/cejaperro.png' class = "img-profile"alt= "Profile picture">
      </div>
      <div class="row py">
        <div class = "col-3 py">
          <label class = "bold">Username:</label>
        </div>
        <div class = "col-4 py">    
          <input readonly="True" value="Juamedi"></input> 
        </div>
        <div class = "col-4 py">    
          <a class="boton-white" href="#">Change</a>
        </div>
      </div>
      <div class="row py justify-content-between">
        <div class = "col-3 py">
          <label class = "bold">Email:</label>
        </div>
        <div class = "col-9 py">    
          <label>elperrocejon@example.com</label> 
        </div>
      </div>
      <div class="row py">
        <div class = "col-3 py">
          <label class = "bold">Password:</label>
        </div>
        <div class = "col-4 py">    
          <input type="password" readonly="True" value="contraseña"></input> 
        </div>
        <div class = "col-4 py">    
          <a class="boton-white" href="#">Change</a>
        </div>
      </div>
      <div class = "row py">
        <label class = "bold">Extra Info:</label>
      </div>
      <div class = "row">
        <textarea id="comments" name="comments" rows = "5" cols = "50">Check out my bulbasaurs c:
        </textarea>
      </div>
    </div>
    <div class="col-active-post">
      <div class="row">
        <label class = "bold">Active posts</label>
      </div>
      <div class = "row-active-post">
        <div class="card">
          <div class = "row">
            <div class = "col-3">
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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

    <div id="Offers" class="tabcontent">
      
      <div class="tab">
        <button class="tablinks bold big" onclick="openTab(event, 'Info')">Info</button>
        <button class="tablinks bold big" onclick="openTab(event, 'Offers')">Offers</button>
        <button class="tablinks bold big" onclick="openTab(event, 'Reviews')">Reviews</button>
      </div>
      <div class = "panel-fluid-profile row">
    <div class="col-offers">
      <div class="row">
        <label class = "bold">Offers</label>
      </div>
      <div class = "grid-offers">
        <div class="card">
          <div class = "row">
            <div class = "col-3">
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
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

        <div class="card">
          <div class = "row">
            <div class = "col-3">
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
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
  
  <div id="Reviews" class="tabcontent">
    <div class="tab">
        <button class="tablinks bold big" onclick="openTab(event, 'Info')">Info</button>
        <button class="tablinks bold big" onclick="openTab(event, 'Offers')">Offers</button>
        <button class="tablinks bold big" onclick="openTab(event, 'Reviews')">Reviews</button>
    </div>
    <div class = "panel-fluid-profile row">
    
    <div class = "col-historial">
      <div class="row">
        <label class = "bold">Reviews</label>
      </div>
      <div class = "slider-reviews">
        <div class="card">
          <div class = "row">
            <div class = "col-3">
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/cejaperro.png" class = "img-review">
            </div>
              <div class = "col-card-stats">
                <div class = "row-reviews">
                  <div class = "row">
                    <div class = "col-3">
                      <label class = "big bold">albgoza</label>
                    </div>
                    <div class = "col-6">
                      <div class = "rating">
                        <input type="radio" class = "input-star" id="st1" value="1" checked />
                        <label class = "label-star fas" for="st1"></label>
                        <input type="radio" class = "input-star" id="st2" value="2" />
                        <label class = "label-star fas"for="st2"></label>
                        <input type="radio" class = "input-star" id="st3" value="3" />
                        <label class = "label-star fas"for="st3"></label>
                        <input type="radio" class = "input-star" id="st4" value="4" />
                        <label class = "label-star fas"for="st4"></label>
                        <input type="radio" class = "input-star" id="st5" value="5" />
                        <label class = "label-star fas"for="st5"></label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class = "col-4">
                  <label>Comments:</label>
                  <textarea id="comments" name="comments" rows = "3" cols = "40">Thanks for everything, the trade went as expected!
                  </textarea>
                </div>   
                <div class = "row-blank"></div>
                <div class = "row-blank"></div>
              </div>
        </div>
        </div>
        <div class="card">
          <div class = "row">
            <div class = "col-3">
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/cejaperro.png" href = "" class = "img-review">
            </div>
              <div class = "col-card-stats">
                <div class = "row-reviews">
                  <div class = "row">
                    <div class = "col-3">
                      <label class = "big bold">albgoza</label>
                    </div>
                    <div class = "col-6">
                      <div class = "rating">
                        <input type="radio" class = "input-star" id="st1" value="1" readonly/>
                        <label class = "label-star fas" for="st1"></label>
                        <input type="radio" class = "input-star" id="st2" value="2" readonly/>
                        <label class = "label-star fas"for="st2"></label>
                        <input type="radio" class = "input-star" id="st3" value="3" checked />
                        <label class = "label-star fas"for="st3"></label>
                        <input type="radio" class = "input-star" id="st4" value="4" disabled/>
                        <label class = "label-star fas"for="st4"></label>
                        <input type="radio" class = "input-star" id="st5" value="5" disabled/>
                        <label class = "label-star fas"for="st5"></label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class = "col-4">
                  <label>Comments:</label>
                  <textarea id="comments" name="comments" rows = "3" cols = "40">Had to wait for Juamedi for a few days but I finally got what I wanted.
                  </textarea>
                </div>   
                <div class = "row-blank"></div>
                <div class = "row-blank"></div>
              </div>
        </div>
        </div>
        <div class="card">
          <div class = "row">
            <div class = "col-3">
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/cejaperro.png" class = "img-review">
            </div>
              <div class = "col-card-stats">
                <div class = "row-reviews">
                  <div class = "row">
                    <div class = "col-3">
                      <label class = "big bold">albgoza</label>
                    </div>
                    <div class = "col-6">
                      <div class = "rating">
                        <input type="radio" class = "input-star" id="st1" value="1" />
                        <label class = "label-star fas" for="st1"></label>
                        <input type="radio" class = "input-star" id="st2" value="2" />
                        <label class = "label-star fas"for="st2"></label>
                        <input type="radio" class = "input-star" id="st3" value="3" />
                        <label class = "label-star fas"for="st3"></label>
                        <input type="radio" class = "input-star" id="st4" value="4" />
                        <label class = "label-star fas"for="st4"></label>
                        <input type="radio" class = "input-star" id="st5" value="5" checked/>
                        <label class = "label-star fas"for="st5"></label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class = "col-4">
                  <label>Comments:</label>
                  <textarea id="comments" name="comments" rows = "3" cols = "40">Didn't get what I wanted, take care with this user.
                  </textarea>
                </div>   
                <div class = "row-blank"></div>
                <div class = "row-blank"></div>
              </div>
        </div>
        </div>
        <div class="card">
          <div class = "row">
            <div class = "col-3">
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/cejaperro.png" class = "img-review">
            </div>
              <div class = "col-card-stats">
                <div class = "row-reviews">
                  <div class = "row">
                    <div class = "col-3">
                      <label class = "big bold">albgoza</label>
                    </div>
                    <div class = "col-6">
                      <div class = "rating">
                        <input type="radio" class = "input-star" id="st1" value="1" />
                        <label class = "label-star fas" for="st1"></label>
                        <input type="radio" class = "input-star" id="st2" value="2" />
                        <label class = "label-star fas"for="st2"></label>
                        <input type="radio" class = "input-star" id="st3" value="3" checked/>
                        <label class = "label-star fas"for="st3"></label>
                        <input type="radio" class = "input-star" id="st4" value="4" />
                        <label class = "label-star fas"for="st4"></label>
                        <input type="radio" class = "input-star" id="st5" value="5" />
                        <label class = "label-star fas"for="st5"></label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class = "col-4">
                  <label>Comments:</label>
                  <textarea id="comments" name="comments" rows = "3" cols = "40">
                  </textarea>
                </div>   
                <div class = "row-blank"></div>
                <div class = "row-blank"></div>
              </div>
        </div>
        </div>
        <div class="card">
          <div class = "row">
            <div class = "col-3">
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/cejaperro.png" class = "img-review">
            </div>
              <div class = "col-card-stats">
                <div class = "row-reviews">
                  <div class = "row">
                    <div class = "col-3">
                      <label class = "big bold">albgoza</label>
                    </div>
                    <div class = "col-6">
                      <div class = "rating">
                        <input type="radio" class = "input-star" id="st1" value="1" />
                        <label class = "label-star fas" for="st1"></label>
                        <input type="radio" class = "input-star" id="st2" value="2" />
                        <label class = "label-star fas"for="st2"></label>
                        <input type="radio" class = "input-star" id="st3" value="3" />
                        <label class = "label-star fas"for="st3"></label>
                        <input type="radio" class = "input-star" id="st4" value="4" checked/>
                        <label class = "label-star fas"for="st4"></label>
                        <input type="radio" class = "input-star" id="st5" value="5" />
                        <label class = "label-star fas"for="st5"></label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class = "col-4">
                  <label>Comments:</label>
                  <textarea id="comments" name="comments" rows = "3" cols = "40">El intercambio fue bien pero su pokemon no me gusta :c
                  </textarea>
                </div>   
                <div class = "row-blank"></div>
                <div class = "row-blank"></div>
              </div>
        </div>
        </div>
      </div>
    </div>
    <div class = "col-historial">
      <div class="row">
        <label class = "bold">Historial</label>
      </div>
      <div class = "grid-offers">
        <div class="card">
          <div class = "row">
            <div class = "col-3">
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">migugon</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">diedeca</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">albgoza</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">Juamedi</label>
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
              <img src="https://raw.githubusercontent.com/juamedi/SSW/main/Bulbasaur.png" alt="Avatar" class = "img-create">
            </div>
              <div class = "col-card-stats">
                <div class = "row justify-content-between">
                  <div class = "col-6">
                    <label class = "big bold">Bulbasaur</label>
                  </div>
                  <div class = "col-6">
                    <label>Owner</label>
                    <label class = "text-muted">choscar</label>
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

  </div>
    
      </div>  
    </div>
  </div>
    </div>
  </div>
  <script>
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
    </script>
</body>
</html>