<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://www.jahia.org/tags/templateLib" prefix="template" %>
<%@ taglib uri="http://www.jahia.org/tags/uiComponentsLib" prefix="ui" %>
<%@ taglib uri="http://www.jahia.org/tags/utilityLib" prefix="utility" %>
<%@ taglib uri="http://www.jahia.org/tags/queryLib" prefix="query" %>
<%@ taglib uri="http://www.jahia.org/tags/functions" prefix="functions" %>
<%@ taglib uri="http://www.jahia.org/tags/search" prefix="s" %>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %>
<%@ taglib uri="http://www.jahia.org/tags/jcr" prefix="jcr" %>
<jsp:useBean id="colMap" class="java.util.LinkedHashMap"/>


<jcr:nodeProperty node="${currentNode}" name="bootstrapColumn" var="bootstrapColumn"/>
<c:set var="nbCols" value="0"/>
<c:set var="nbArea" value="0"/>

<c:forTokens items="${bootstrapColumn.string}" delims="," varStatus="vs" var="col">
    <c:set target="${colMap}" property="col${vs.count}" value="${col}"/>
    <c:if test="${fn:contains(col,' ')}">
        <c:forTokens items="${col}" delims=" " varStatus="vs" var="c">
            <c:if test="${vs.count eq 1}">
                <c:set var="col" value="${c}"/>
            </c:if>
        </c:forTokens>
    </c:if>
    <c:set var="nbCols" value="${nbCols + col}"/>
    <c:set var="nbAreas" value="${nbAreas + 1}"/>
</c:forTokens>
<c:set var="nbNames" value="0"/>
<c:forTokens items="${currentNode.properties.colNames.string}" delims="," varStatus="vs">

    <c:set var="nbNames" value="${nbNames + 1}"/>
</c:forTokens>

<div<c:if test="${!empty currentNode.properties.divID}"> id="${currentNode.properties.divID.string}"</c:if><c:if test="${!empty currentNode.properties.divClass}"> class="${currentNode.properties.divClass.string}"</c:if>>

<div class="row">

    <c:set var="colNames" value="${fn:split(currentNode.properties.colNames.string, ',')}"/>
    <c:set var="divParColonne" value="${fn:split(currentNode.properties.divClassParColonne.string, ',')}"/>

    <c:forEach items="${colMap}" var="col" varStatus="count">
        <c:set var="column" value="${col.value}"/>
        <c:set var="colCss" value=""/>
        <c:if test="${fn:contains(column,' ')}">
            <c:forTokens items="${column}" delims=" " varStatus="vs" var="c">
                <c:if test="${vs.count eq 1}">
                    <c:set var="column" value="${c}"/>
                </c:if>
                <c:if test="${!(vs.count eq 1)}">
                    <c:set var="colCss" value="${colCss} ${c}"/>
                </c:if>
            </c:forTokens>
        </c:if>
        
       <c:forTokens items="${currentNode.properties.divClassParColonne.string}" var="divClassParColonne" delims="," varStatus="vs3">
              <c:if test="${count.count == vs3.count}">
                  <c:set var="divClass" value="${divClassParColonne }"/>
               </c:if>
       </c:forTokens>

        <div class='col-md-${column} ${colCss} &nbsp;  ${divClass}' >
            <c:if test="${nbNames == nbAreas}">
                <c:forTokens items="${currentNode.properties.colNames.string}" var="colName" delims="," varStatus="vs1">
                    <c:if test="${count.count == vs1.count}">
                        <template:area path="${colName}" areaAsSubNode="true"/>
                    </c:if>
                </c:forTokens>
            </c:if>
            <c:if test="${nbNames != nbAreas}">
                <template:area path="${currentNode.name}-${col.key}" areaAsSubNode="true"/>
            </c:if>

        </div>
    </c:forEach>

</div>
</div>
