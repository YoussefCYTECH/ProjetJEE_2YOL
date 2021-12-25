<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
    
<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

<!-- Lien avec le CSS -->
<link rel="stylesheet" type="text/css" href="css/styleContact.css"/> <!-- Car formulaire très similaire à celui du contact -->

<!-- Titre du site dans le navigateur-->
<title>Le coin photo - M'inscrire</title>

<script type="text/javascript" src="js/inscription.js"></script>

<!-- FAIRE VERIF si deja connecté, l'envoyer sur la page de profil. Idem pour panier et inscription-->



<!-- Zone de navigation sur la droite-->
	<div class="pagedroite">
	    <div class="background">
	
	        <div class="bloc">
	            <div class="titresection"><p>S'INSCRIRE</p></div>
	            
	            <div class="texte">
	                <form name="Formulaire" onsubmit="return envoyer()" method="POST" action="inscription">
	                    <fieldset>
	                        
	                        <div class="box3">
	                            <div class="gauche">
	                                <label class="label" id="labelNom">Nom :</label><br><br>
	                                <input type="text" id="nom" name="nom" class="forminput" placeholder="Ex: NOM" /><br><br>
	                                    
	                                <label class="label" id="labelSexe">Sexe :</label><br><br>	
	                                <div id="sexe" class="minibox">
	                                    <input type="radio" name="sexe" value="Homme" id="Homme">
	                                    <label for="Homme"> Homme </label>&nbsp&nbsp&nbsp
	                                    <input type="radio" name="sexe" value="Femme" id="Femme">
	                                    <label for="Femme"> Femme </label><br>
	                                </div><br><br>
	                            </div>
	
	                           <div class="droite">                           
	                                <label class="label" id="labelPrenom">Prénom :</label><br><br>
	                                <input type="text" id="prenom" name="prenom" class="forminput" placeholder="Ex: Prénom"/><br><br>
	                                
	                                <label class="label" id="labelDate">Date de naissance :</label><br><br>
	                                <input type="date" name="dateNaissance" id="dateNaissance" max='<?=date("Y-m-d")?>' class="forminput" placeholder="jj/mm/aaaa"/><br><br>
	                            </div>
	                        </div>
	
	                        <div class="leftalign">
	                            <label class="label" id="labelMail">Adresse email :</label><br><br>
	                            <input type="email" id="mailClient" name="mailClient" class="forminput" placeholder="Ex: monmail@monsite.org"/><br><br>
	
	                            <label class="label" id="labelLogin">Login :</label><br><br>
	                            <input type="text" id="login" name="login" class="forminput" placeholder="Ex: eisti95" /><br><br>
	                            
	                            <label class="label" id="labelPwd">Mot de passe :</label><br><br>
	                            <input type="password" id="pwd" name="pwd" class="forminput" placeholder="Mot de passe"/><br><br>
	
	                            <label class="label" id="labelConfirm">Confirmation du mot de passe :</label><br><br>
	                            <input type="password" id="pwdConfirm" name="pwdConfirm" class="forminput"/><br><br>
	                        </div>
	
	                        <input class="boutonEnvoyer" type="submit" value="M'inscrire"/>
	                        <input class="boutonEffacer" type="reset" value="Effacer" />
	
	                    </fieldset>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
</div>

</body>

<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>