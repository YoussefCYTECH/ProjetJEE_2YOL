<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html xmlns:th="https://www.thymeleaf.org">    
<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

<!-- Lien avec le CSS -->
<link rel="stylesheet" type="text/css" href="css/styleContact.css"/>

<!-- Titre du site dans le navigateur-->
<title>Le coin photo - section Admin</title>

<script type="text/javascript" src="js/admin.js"></script>

    <!-- Zone de navigation sur la droite-->
<div class="pagedroite">
	<br><a href='adminHome'> Retourner à la section ADMIN </a> <br>
        <div class="background">


            <div class="bloc">
                <div class="titresection"><p>AJOUTER UN PRODUIT</p></div>
                <div class="texte">
                    <div th:if=${success} style="color:green">Ajout réussi </div>
	            	<div th:if=${fail} style="color:red">Erreur lors de l'ajout </div>

                    <form name="Formulaire" method="POST" onsubmit="return confirmerAjout()" action="adminAddProduit">
                        <fieldset>
                        
                                <div class="box3">
                                    <div class="gauche">
                                        <label class="label">Référence :</label> <span class="error">*</span> <br><br>
                                        <input type="text" id="ref" name="ref" class="forminput" placeholder="Ex: app1" value=""/><br><br>
                                            
									    <label class="label">Prix :</label> <span class="error">*</span> <br><br>
                                        <input type="number" step="0.01" name="prix" id="prix" min="0" class="forminput" placeholder="Ex: 1699" value=""/><br><br>
                                           
                                    </div>

                                    <div class="droite">                           
                                        <label class="label">Image : (faire upload d'image ?)</label> <span class="error">*</span> <br><br>
                                        <input type="text" id="image" name="image" class="forminput" placeholder="Ex: blank.png" value=""/><br><br>
                                   
                                        <label class="label">Catégorie :</label> <span class="error">*</span> <br><br>
                                        <div class="box2" id="categorie">
                                        
                                  
                                          
                                            
                                            <select id="categories">
                                                <option value="appareils">Appareil</option>   
                                                <option value="objectifs">Objectif</option>   
                                                <option value="accessoires">Accessoire</option>                      
                                            </select>

                                        </div><br>

                                    </div>
                                </div>

                            <div class="box3">
                                <div class="gauche">
								<label class="label">Stock de départ :</label> <span class="error">*</span> <br><br>
                                   <input type="number" name="stock" id="stock" min="0" class="forminput" placeholder="Ex: 10" value=""/><br><br>
                                </div> 
                                                              
                            </div>

                            <div class="leftalign"> 
                                <label class="label">Nom du produit :</label> <span class="error">*</span> <br><br>
                                <input type="text" id="nom" name="nom" class="forminput" placeholder="Ex: Fujifilm X-T4" value=""/><br><br>
                         
                                <label class="label" for="desc">Description :</label> <span class="error">*</span> <br><br>
                                <textarea class="textarea2" name="desc" id="desc" wrap="hard" placeholder="Description du produit"></textarea><br><br>
                            </div>
                                
                            <input class="boutonEnvoyer" type="submit" value="Ajouter ce produit"/>
                            <a class="boutonEffacer" href="adminFormulaireProduit">Effacer</a>

                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
   
    
</div>

</body>

<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>