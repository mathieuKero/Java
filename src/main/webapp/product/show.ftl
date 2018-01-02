<#import "../masterpage.ftl" as mp />
<@mp.page title="Show list">

  <div class="row">
  	<div class="col-md-12">
    <h2 class="mt-4">${product.name}</h2>
    </div>
    
    <div class="container mt-4">
	    <div class="row">
		    <div class="col-md-3">
			    <img src="${product.img}" class="img-fluid" alt="Responsive image">
		    </div>
		    <div class="col-md-9">
		    	<div class="row">
			    	<div class="col-md-12">
					    <h3>Description du produit : </h3>
					    <p class="pb-5">${product.description}</p>
				    </div>
				    <div class="col-md-6">			    
					   <h2> Prix :  ${product.price} </h2>
			    	</div>
			    	<div class="col-md-4">
			    		<a href="/product/index?usr=${RequestParameters['usr']}"  href="" class="btn btn-dark">Ajouter au panier</a>
			    	</div>
			    	<div class="col-md-2">
			    		<a href="/product/index?usr=${RequestParameters['usr']}" class="btn btn-dark">Annuler</a>
			    	</div>
		    	</div>
		    </div>
	    </div>
    </div>
    

    
    
    
    
  </div>
</@mp.page>
