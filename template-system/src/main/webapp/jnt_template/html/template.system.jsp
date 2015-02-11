<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>
<html  xmlns="http://www.w3.org/1999/xhtml" xml:lang="${fn:substring(renderContext.request.locale,0,2)}">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=8" />
    <meta name="robots" content="noindex"/>

    <jcr:nodeProperty node="${renderContext.mainResource.node}" name="jcr:description" inherited="true" var="description"/>
    <jcr:nodeProperty node="${renderContext.mainResource.node}" name="jcr:createdBy" inherited="true" var="author"/>
    <c:set var="keywords" value="${jcr:getKeywords(renderContext.mainResource.node, true)}"/>
    <c:if test="${!empty description}"><meta name="description" content="${fn:escapeXml(description.string)}" /></c:if>
    <c:if test="${!empty keywords}"><meta name="keywords" content="${fn:escapeXml(keywords)}" /></c:if>

	<c:if test="${empty author}">
    	<title>${fn:escapeXml(renderContext.mainResource.node.displayableName)}</title>
    </c:if>
</head>
<body>

<jcr:node var="rootPage" path="/sites/${renderContext.site.siteKey}/home"/>
<div class="bodywrapper">
    <template:area path="pagecontent"/>
</div>
</body>

</html>

<!--ressources--><!--Ressources -->
	<template:addResources type="css" media="screen, print"  resources="edit.css" />		
 	<template:addResources type="css" media="screen, print"  resources="bootstrap.css,menu.css" /><!-- navigation.css,navigationN2-2.css -->
	<template:addResources type="css" media="screen, print"  resources="jquery-ui.css" />
	
	<!--CSS Temporaire  -->
	<template:addResources type="css" media="screen, print" resources="bpitemporaire.css" />
        
	<!--CSS BPI  -->
	<template:addResources type="css" media="screen, print"  resources="global.css" />
	<template:addResources type="css" media="screen, print"  resources="global-commun.css" />
	<template:addResources type="css" media="screen, print" resources="site-${renderContext.site.siteKey}.css" />		

	<template:addResources type="css" resources="responsive.css,960-fluid.css,01web.css,navigation.css,navigationN2-1.css" />
	
	<template:addResources type="javascript" media="screen, print"  resources="purl.js" />

	<style type="text/css">
		/* SIGMA */
		body > .bodywrapper {
			max-width: none;
		}
	</style>

<template:theme/>