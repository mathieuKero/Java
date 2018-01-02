<!DOCTYPE html>
<html lang="en">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
      integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
      crossorigin="anonymous">
    <title>Log in</title>
</head>
<body>

    <div>
        <label for="email">Login</label>
        <input type="text" name="login" id="login" required autofocus/>
    </div>
    <div>
        <label for="password">Password</label>
        <input type="password" name="password" id="password" required/>
    </div>
    <button  type="submit" onclick="CheckData()">Sign in</button>


<#-- Check des données fournies par l'utilisateur -->

	<script>
    function CheckData() {


		var login = document.getElementById('login');
		var password = document.getElementById('password');
		var arrayLoggin = [];
		var arrayPassword = [];
		var arrayId = [];
		
		<#list customers as customer>
    		arrayLoggin.push("${customer.login}");
    		arrayPassword.push("${customer.password}");
    		arrayId.push("${customer.id}");
    	</#list> 


		var ArrayLogginCheck = (arrayLoggin.indexOf(login.value) > -1);

		if(ArrayLogginCheck){
			var arrayIndex = arrayLoggin.indexOf(login.value);

			if(arrayPassword[arrayIndex] == password.value){
				document.location.href="/product/index?usr=" + arrayId[arrayIndex];
			}else
			{
				alert("unknown password, please try again");
			}

		}else
		{
			alert("unknown loggin & password, please try again");
		}

	

	}
    </script>
    
    </br></br></br></br></br>
    
    <h4> Login & password pour Mr gaillard. A noter que seul les deux premiers utilisateurs du tableau ci dessous sont associes a des donnees produit / order</h4>
    
    <table>
    	<tr>
    	<th>Login</th>
		<th>Password</th>
    	</tr>

<#list customers as customer>
		<tr>
			<td>${customer.login} </td>
			<td>${customer.password}</td>
		</tr>
		
</#list>
    </table>
    

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
</body>
</html>
