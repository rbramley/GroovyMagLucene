
<%@ page import="com.rbramley.todo.Item" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'item.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="subject" title="${message(code: 'item.subject.label', default: 'Subject')}" />
                        
                            <g:sortableColumn property="startDate" title="${message(code: 'item.startDate.label', default: 'Start Date')}" />
                        
                            <g:sortableColumn property="dueDate" title="${message(code: 'item.dueDate.label', default: 'Due Date')}" />
                        
                            <g:sortableColumn property="status" title="${message(code: 'item.status.label', default: 'Status')}" />
                        
                            <g:sortableColumn property="priority" title="${message(code: 'item.priority.label', default: 'Priority')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${itemInstanceList}" status="i" var="itemInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: itemInstance, field: "subject")}</td>
                        
                            <td><g:formatDate date="${itemInstance.startDate}" /></td>
                        
                            <td><g:formatDate date="${itemInstance.dueDate}" /></td>
                        
                            <td>${fieldValue(bean: itemInstance, field: "status")}</td>
                        
                            <td>${fieldValue(bean: itemInstance, field: "priority")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${itemInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
