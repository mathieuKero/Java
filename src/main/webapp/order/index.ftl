<#import "../masterpage.ftl" as mp />

<#assign css = "
<!-- test -->
">

<@mp.page title="Order list" css=css>

<h1> Order List </h1>

<#list orders as order>


<#-- r�cup�ration de l'identit� utilisateur + affichage des orders li�s � l'utilisateur -->
<#assign test = RequestParameters['usr']?number>
<#if (order.customer.id == test)>
	<p> <a href="/order/${order.id}?usr=${RequestParameters['usr']}">${order.createdAt} </a></p>

</#if>

</#list>
  
</@mp.page>
