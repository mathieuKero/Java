<#import "../masterpage.ftl" as mp />

<#assign css = "
<!-- test -->
">

<@mp.page title="Order list" css=css>

<h1>Order</h1>

  <table style="width:100%">
  <tr>
    <th>Number</th>
    <th>Product</th> 
    <th>Price</th>
  </tr>

<#-- Affiche tout les orders relatifs � un client particulier -->
<#list orders as order>

  <tr>
    <td id="qt">${order.quantity}</td>

    <td> ${order.product.name}</td> 
	<td >
	
	
	<#-- Cette solution n'est pas celle � utiliser n�amoins c'est la seule "simple" que j'ai toruv� -->
	<#list amount as price>
		${price}
	</#list>
	
	</td> 
	

  </tr>
  
  
  


</#list>
  </tr>
</table>
  
  






  
  
</@mp.page>
