<%@ page import="org.springframework.util.ClassUtils" %>
<%@ page import="com.rbramley.todo.Item" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title>Search results</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            <g:set var="haveQuery" value="${query?.trim()}" />
            <g:set var="haveResults" value="${searchResults}" />
            <div class="title">
              <span>
                <g:if test="${haveResults}">
                  Showing <strong>1</strong> - <strong>${searchResults.size()}</strong> of <strong>${total}</strong>
                  results
                  <g:if test="${haveQuery}">
                   for <strong>${query}</strong>
                  </g:if>
                </g:if>
              </span>
            </div>

            <g:if test="${haveQuery && !haveResults}">
              <p>Nothing matched your query - <strong>${query}</strong></p>
            </g:if>

            <g:if test="${haveResults}">
                <g:each var="result" in="${searchResults}">
                    <g:set var="className" value="${ClassUtils.getShortName(result.doctype_s)}" />
                    <li><solr:resultLink result="${result}">${className}: ${result.id}</solr:resultLink></li>
                    ${result.subject?.encodeAsHTML()}                   
                </g:each>
            </g:if>
      </div>
    </body>
</html>