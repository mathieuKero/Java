<#import "../masterpage.ftl" as mp />

<#assign css = "
<!-- test -->
">

<@mp.page title="Show list" css=css>
  <div class="row">
    <h1>List of Product</h1>

    <table class="table table-striped table-hover">
      <thead class="thead-light">
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Stock</th>
        <th scope="col">Price</th>
      </tr>
      </thead>
      <tbody>
           	 <#attempt>
      <#list products as product>
      <tr>
      
      
<#--  Affiche les données de produit dans un tableau avec redirection personalisé pour chacun des produits tout en gardant dans l'url l'identifiant de l'utilisateur -->
	      <th scope="row"><a href="/product/${product.id}?usr=${RequestParameters['usr']}">${product.name}</a></th>
        <td>${product.quantity}</td>
        <td>${product.price}</td>

      
      
  
      </tr>
      </#list>
      		<#recover>
		
		
		<#-- Si vous ne vous êtes pas loggé cette pop-up viendra vous en avertir -->
		<script>
		alert("merci de vous rendre a l'adresse web suivante 'http://localhost:8080/login/login'. En effet, je n'ai pas reussi a mettre en place un concept de session et les donnees utilisateurs passent donc en clair par l'url il faudra se logger sur cette page pour acceder a la suite");
  
		</script>
		
		
		</#attempt>

      </tbody>
    </table>
  </div>

  
  
</@mp.page>
