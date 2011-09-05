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
                    <g:set var="className" value="${ClassUtils.getShortName(result.class)}" />
                    <g:set var="link" value="${createLink(controller: className[0].toLowerCase() + className[1..-1], action: 'show', id: result.id)}" />
                    <li><a href="${link}">${className}: ${result.id}</a></li>
                    ${result.subject?.encodeAsHTML()}                   
                </g:each>
            </g:if>
      </div>
    </body>
</html>