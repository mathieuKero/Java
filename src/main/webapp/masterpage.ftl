<#macro page title js="" css="">
<!DOCTYPE HTML>
<html>

  <head>
    <title>${title?html}</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
      integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
      crossorigin="anonymous">

    ${css}
  </head>

  <body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark navbar-fixed-top">
      <a class="navbar-brand" id="hrefHome" href="">Acceuil</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
        data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">  
        	<li>
        		<a class="nav-link" id="hrefUserOrders" href=""> Mon Panier</a>
        	</li>          
        	<li>
        		<a class="nav-link" id="hrefUserSpace" href=""> Mon espace personnel</a>
        	</li>          
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" placeholder="Search"
            aria-label="Search" type="text">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>

    <main role="main" class="container">

      <#nested />
      
      
      <#-- Détection utilisateur et lien hypertexts en fonction de l'Id user fournit en paramètre de la requête http -->
      <script>

<#--  Récupération URL et optention de la valeur de l'attribut urs -->
      var url_string = window.location.href;
		var url = new URL(url_string);
		var usrValue = url.searchParams.get("usr");

      var hrefUserSpace = document.getElementById('hrefUserSpace');
      var hrefHome = document.getElementById('hrefHome');
      
      <#--  Ajout des identifiant utilisateurs en bout de requêtes http -->
      	hrefUserSpace.href = "/user/" + usrValue;	     
    	hrefHome.href = "/product/index?usr=" + usrValue;
		
	
	if(window.location.href.indexOf("user") > -1) {
	
		var test = url_string
		var array = test.split('/');
		var lastsegment = array[array.length-1];
		
		hrefUserSpace.href = "/user/" + lastsegment;	     
    	hrefHome.href = "/product/index?usr=" + lastsegment;
    	hrefUserOrders.href = "/order/index?usr=" + lastsegment;
    	

    }
    	
    	
    	
    



  






	</script>

    </main>
    <!-- /.container -->


    <!-- Bootstrap core JavaScript ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
      integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
      crossorigin="anonymous"></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
      integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
      crossorigin="anonymous"></script>
    ${js}
  </body>
</html>
</#macro>
