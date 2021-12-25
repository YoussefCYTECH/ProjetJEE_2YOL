<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
    
<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

<!-- Lien avec le CSS -->
<link rel="stylesheet" type="text/css" href="css/stylePanier.css"/>

<!-- Titre du site dans le navigateur-->
<title>Le coin photo - Mon panier</title>

<script type="text/javascript" src="js/panier.js"></script>

<!-- FAIRE VERIF si deja connecté, l'envoyer sur la page de profil. Idem pour panier et inscription-->


        <!-- Zone de navigation sur la droite-->
        <div class="pagedroite">
            
            <div class="bloc">
                <div class="titresection"><p>MON PANIER</p></div><br>
                    
                <div id="ajaxPanier">

                    <a class="boutonPayer" href="payer"> PAYER </a>	<br>
                    <p>Vous avez <label id="ajaxNbArticles">1</label> <label id="ajaxArticles">article</label></p>
                    <br>
                        
                    <div class="panier app1">                
                        <div class="imageAppareil">
                            <img class="imageAppareil2" src="img/FXT4.jpg" alt="Fujifilm X-T4" onerror="this.onerror=null; this.src='img/blank.png'" >
                        </div>
            
                                            
                        <div class="nomProduit1"> 
                            Nom : <strong><a class="nomProduit" href="appareils">FujiFilm X-T4</a></strong><br>
                        </div>
                                            
                        <div class="prixProduit">                                         
                            Prix : <strong>1699 €</strong>
                        </div> <br>
                                                                            
                        <form onsubmit="return confirmerSuppression(document.getElementsByClassName('inputapp1')[0].value)">
                            <input type="hidden" class="inputapp1" name="ref" value="app1">
                            <input class="boutonSupprimer" type="submit" value="x"/>
                        </form><br> 

                </div>

            </div>

        </div>
    </div>
</div>

</body>

<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>