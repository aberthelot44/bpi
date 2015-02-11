<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<c:set var="filetDouble" value="bordure-lg_newsletter_balises.png"/>
<c:set var="couleurFond" value="#35c00d"/>
<c:set var="logoSite" value="newsletter_balises.jpg"/>

<c:if test="${renderContext.site.title eq 'La BPI'}">
	<c:set var="filetDouble" value="bordure-lg_newsletter.png"/>
	<c:set var="couleurFond" value="#E2001A"/>
	<c:set var="logoSite" value="newsletter_bpi.jpg"/>
</c:if>

<c:if test="${renderContext.site.title eq 'Professionnels'}">	
	<c:set var="filetDouble" value="bordure-lg_newsletter_pro.png"/>
	<c:set var="couleurFond" value="#009edf"/>
	<c:set var="logoSite" value="newsletter_pro.jpg"/>
</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">

</style>
</head>
<body style="padding: 0; margin: 0;">
<div class="bodywrapper">
    <table style="font-size:12px;background-color:#FFFFFF;width:100%;font-family:DINRegular;line-height:160%;"
           width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <td>

<%--                 <table width="800" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="padding: 8px 0 8px 0;">
                        	<p style="font-size: 12px;font-weight: normal;color: #333;text-align: center;">
                                <fmt:message key="newsletter.intro.balises">
                                    <fmt:param value="<a style='color: #0066ff;' href='/' name='top'>${renderContext.site.title}</a>"/>
                                </fmt:message>
                                <br/>
                                <fmt:message key="newsletter.intro.2"/>
                                <a href="${renderContext.mainResource.node.url}" target="_blank" style="color: #0066ff;text-decoration: none;">
                                    <fmt:message key="newsletter.intro.3"/>
                                </a>.
                            </p>
                       </td>
                    </tr>
                </table> --%>
                
                <!-- LIENS SITE -->
                <table width="1000" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                    	<td style="padding: 15px; width: 300px;">
                    		&nbsp;
                    	</td>
						<td style="padding: 15px; border-left: solid 1px #d9d9d9;" nowrap="nowrap">
							<a href="/cms/edit/default/fr/sites/SiteInstitutionnel/home.html" title="Aller sur le site La Bpi">La Bpi</a>
						</td>
						<td style="padding: 15px;" nowrap="nowrap">
                      		<a href="/cms/edit/default/fr/sites/Balises/home.html" title="Aller sur le site Balises"> Balises</a>
						</td>
						<td style="padding: 15px;" nowrap="nowrap">
        					<a href="/cms/edit/default/fr/sites/Professionnels/home.html" title="Aller sur le site Professionnels">	Professionnels</a>
						</td>
						<td style="padding: 15px; border-right: solid 1px #d9d9d9;" nowrap="nowrap">
							<a href="http://www.cinemadureel.org/fr"  target="_blank" title="Cinéma du réel(Ouvrir une nouvelle fenêtre)">Cinéma du réel</a>
                		</td>
                    	<td style="padding: 15px; width: 250px;">
                    		&nbsp;
                    	</td>
                    </tr>
                </table>

                <table width="1000" border="0" cellspacing="0" cellpadding="0" style="background-color:#FFFFFF;font-family: Arial, Helvetica, sans-serif;line-height:160%;font-size:11px;">
                    <tr>
                        <td align="center">

                            <table width=800 height="108" border="0" cellspacing="0" cellpadding="0"
                                   style="background-color:#FFFFFF">
                                <tr>
                                    <td style="width:200px;">
										<h1>
											<a href="${url.base}${renderContext.site.home.path}.html" title="Balises"><img src="/modules/module-bpi-template/img/${logoSite}" alt="" class="img-responsive" /></a>
										</h1>
									</td>
                                                           </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                
                <!-- DATE AUTOMATIQUE  -->
<!--                 <table> -->
<!-- 					<tr> -->
<!-- 						<td> -->
<!--     						<span style="color:#333; padding:0 20px; font-size:14px;font-family:Georgia, 'Times New Roman', Times, serif"> -->
<%--                				<jsp:useBean id="startDate" class="java.util.Date" /> --%>
<%--                				<fmt:formatDate value="${startDate}" pattern="MMMM yyyy" type="date"/> --%>
<!--        						</span> -->
<!--                 		</td>   -->
<!--                 	</tr>       -->
<!--                 </table> -->
                
              

                <table width="1000" border="0" cellspacing="0" cellpadding="0" style="background-color:#fff;font-family: Arial, Helvetica, sans-serif;line-height:160%;font-size:11px;">
                    <tr>
                        <td align="center" valign="top"
                            style="background-color: #ffffff;">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td align="left" style=" padding: 20px;">
										<h2 style="font-size: 16px;font-weight: normal;color: #7F8384;margin: 0 0 10px 0;border-bottom: 3px solid #ccc">
                                            <template:area path="titre"/>
                                        </h2>
                                        <!-- DATE MANUELLE  -->
						                <table>
											<tr>
												<td>
						    						<template:area path="dateNewsletter"/>
						                		</td>  
						                	</tr>      
						                </table>  
                                        <template:area path="editorial"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                

                
                <table width="1000px" border="0" cellspacing="0" cellpadding="0" >
	                 <tr>
	                     <td align="left" style=" padding: 20px;">
							<h2 style="font-size: 16px;font-weight: normal;color: #7F8384;margin: 0 0 10px 0;border-bottom: 3px solid #ccc">
	                     		<template:area path="titreselection"/>
	                         </h2>
	                     </td>
	                 </tr>
	            </table>
                
                <table width="800" border="0" cellspacing="0" cellpadding="0" style="background-color:#fff;font-family: Arial, Helvetica, sans-serif;line-height:160%;font-size:11px;">
                    <tr>
                        <td align="center" valign="top"
                            style="background-color: #ffffff;">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
								<tr>
									<td colspan="3">
										<img alt="" src="/modules/module-bpi-template/img/${filetDouble}">
									</td>
								</tr>
								<tr>
                                    <td align="left" valign="top" style="padding: 20px; height:400px; overflow:hidden">
                                       <template:area path="remontee_first"/>
                                    </td>
                                     <td align="left" valign="top" style="padding: 20px; height:400px; overflow:hidden">
                                       <template:area path="remontee_second"/>
                                    </td>
                                     <td align="left" valign="top" style="padding: 20px; height:400px; overflow:hidden">
                                       <template:area path="remontee_third"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                
                <table width="1000px" border="0" cellspacing="0" cellpadding="0" >
	                 <tr>
	                     <td align="left" style=" padding: 20px;">
							<h2 style="font-size: 16px;font-weight: normal;color: #7F8384;margin: 0 0 10px 0;border-bottom: 3px solid #ccc">
                              <template:area path="titreetaussi"/>
                           </h2>
                       </td>
	                 </tr>
	            </table>
	                            
                <table width="800" border="0" cellspacing="0" cellpadding="0" style="background-color:#fff;font-family: Arial, Helvetica, sans-serif;line-height:160%;font-size:11px;">
                    <tr>
                        <td align="center" valign="top"
                            style="background-color: #ffffff;">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td colspan="5" style="padding-bottom: 10px;">
										<img alt="" src="/modules/module-bpi-template/img/${filetDouble}">
									</td>
								</tr>            
								<tr>
                                    <td align="left" valign="top" style="padding: 10px; height:500px; overflow:hidden; min-width: 160px">
                                       <template:area path="remontee_first_etaussi"/>
                                    </td>
                                     <td align="left" valign="top" style="padding: 10px; height:500px; overflow:hidden">
                                       <template:area path="remontee_second_etaussi"/>
                                    </td>
                                     <td align="left" valign="top" style="padding: 10px; height:500px; overflow:hidden">
                                       <template:area path="remontee_third_etaussi"/>
                                    </td>
                                     <td align="left" valign="top" style="padding: 10px; height:500px; overflow:hidden">
                                       <template:area path="remontee_four_etaussi"/>
                                    </td>
                                    <td align="left" valign="top" style="padding: 10px; height:500px; overflow:hidden; border-left: solid 1px; border-left-color: ${couleurFond};">
                                       <template:area path="remontee_breve_1"/>
                                       <template:area path="remontee_breve_2"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                
                <!-- LIEN FOOTER  -->
                <table width="1000" border="0" cellspacing="0" cellpadding="0" style="background-color:#fff;font-family: Arial, Helvetica, sans-serif;line-height:160%;font-size:11px;padding-top: 10px">
                    <tr>
                        <td align="center" valign="top"
                            style="background-color: #ffffff;">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img alt="" src="/modules/module-bpi-template/img/${filetDouble}">
									</td>
								</tr>
                                <tr>
                                    <td align="left" style=" padding: 20px;">
										<a href="">Le catalogue</a>
										<a href="">L'agenda</a>
										<a href="">Contacts</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                
                
                <!-- ENVOYER AMI  -->
                <table width="1000" border="0" cellspacing="0" cellpadding="0" style="background-color:#fff;font-family: Arial, Helvetica, sans-serif;line-height:160%;font-size:11px;">
                    <tr>
                        <td align="center" valign="top"
                            style="background-color: #ffffff;">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td align="left" style=" padding: 20px;">
										<a href="mailto:">Envoyer à un ami</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                
                <!-- JURIDIQUE  -->
                <table width="1000" border="0" cellspacing="0" cellpadding="0" style="background-color:#fff;font-family: Arial, Helvetica, sans-serif;line-height:160%;font-size:11px;">
                    <tr>
                        <td align="center" valign="top"
                            style="background-color: #ffffff;">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td align="left" style=" padding: 20px;">
										<template:area path="zone_juridique"/>
										Pour vous désinscrire, ou modifier vos informations, cliquer 
										<a href="${renderContext.mainResource.node.parent.properties['j:subscriptionPage'].node.url}" target="_blank" style="color: #0066ff;text-decoration: none; border: none;margin: 0;padding: 0;">
											ici.
										</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>


               <table width="1000" height="108" border="0" cellspacing="0" cellpadding="0"
                       style="padding: 10px;background-color: #E1E1E1;font-family: Arial, Helvetica, sans-serif;line-height:160%;font-size:10px;">
                    <tr>
                        <td align="center" valign="middle">
                            <table width="780" height="88" border="0" cellspacing="0" cellpadding="0"
                                   style="font-size: 10px;font-weight: normal;color: #7F8384;text-align: center;">
                                <tr>
                                    <td align="center" style="width:780px;height: 88px;">
                                        <template:area path="facebook"/>
                                    </td>
                                    
<!--                                     <td align="center" style="width:780px;height: 88px;"> -->
<%--                                         <template:area path="facebookLike"/> --%>
<!--                                     </td> -->
                                    
                                    <td align="center" style="width:780px;height: 88px;">
	                                    <a href='http://www.facebook.com/share.php?u=http://www.bpi.fr'>
										     <img src='/files/live/sites/Balises/files/FacebookLike.jpg' alt="J'aime" />
										</a>
                                    </td>
                                    
                                    
                                    <td align="center" style="width:780px;height: 88px;">
                                        <template:area path="twitter"/>
                                    </td>
                                    
                                    <td align="center" style="width:780px;height: 88px;">
                                        <template:area path="dailymotion"/>
                                    </td>
                                    
                                    <td align="center" style="width:780px;height: 88px;">
                                        <template:area path="rss"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

<!--                 <table width="800" border="0" cellspacing="0" cellpadding="0"> -->
<!--                     <tr> -->
<!--                         <td style="padding: 8px 0 8px 0;"> -->
<%-- 							<c:if test="${not empty requestScope['org.jahia.modules.newsletter.unsubscribeLink']}"> --%>
<!--        						<p style="font-size: 12px;font-weight: normal;font-style: italic;color: #333;text-align: center;"> -->
<%--        							<fmt:message key="label.click.to.unsubscribe.from.this.email" --%>
<%--        							/>&nbsp;<a href="${requestScope['org.jahia.modules.newsletter.unsubscribeLink']}" target="_blank" --%>
<%--                                                            style="color: #0066ff;text-decoration: none; border: none;margin: 0;padding: 0;"><fmt:message key="label.error.backLink.2"/></a> --%>
<!-- 							</p> -->
<%-- 							</c:if> --%>
<!--        						<p style="font-size: 12px;font-weight: normal;font-style: italic;color: #333;text-align: center;"> -->
<%--        							<fmt:message key="label.manageSubscriptions1" --%>
<%--        							/>&nbsp;<a href="${renderContext.mainResource.node.parent.properties['j:subscriptionPage'].node.url}" target="_blank" --%>
<%--                                                            style="color: #0066ff;text-decoration: none; border: none;margin: 0;padding: 0;"><fmt:message key="label.manageSubscriptions2"/></a> --%>
<!-- 							</p> -->
<!-- 						</td> -->
<!--                     </tr> -->
<!--                 </table> -->
            </td>
        </tr>
        <tr>
            <td align="center">&nbsp;</td>
        </tr>
    </table>
</div>
<template:addResources type="css" resources="newsletter.css"/>
</body>
</html>