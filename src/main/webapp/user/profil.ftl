<#import "../masterpage.ftl" as mp />

<#assign css = "
<!-- test -->
">

<@mp.page title="User Page" css=css>


  <div class="helloworld">
    <h1>Home user Page</h1>

	<h3> Informations : </h3>
	
	</br>
	
	<p> First Name :		 ${customer.firstName} </p>
	<p> Last Name :			 ${customer.lastName} </p>
	<p> Phone number :		 ${customer.phone} </p>
	<p> City : 				 ${customer.city} </p>
	<p> Address :			 ${customer.address} </p>
	<p> ZIP :				 ${customer.zip} </p>
   

  </div>
</@mp.page>	