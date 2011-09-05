

<%@ page import="com.rbramley.todo.Item" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${itemInstance}">
            <div class="errors">
                <g:renderErrors bean="${itemInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="subject"><g:message code="item.subject.label" default="Subject" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: itemInstance, field: 'subject', 'errors')}">
                                    <g:textField name="subject" value="${itemInstance?.subject}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="startDate"><g:message code="item.startDate.label" default="Start Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: itemInstance, field: 'startDate', 'errors')}">
                                    <g:datePicker name="startDate" precision="day" value="${itemInstance?.startDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dueDate"><g:message code="item.dueDate.label" default="Due Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: itemInstance, field: 'dueDate', 'errors')}">
                                    <g:datePicker name="dueDate" precision="day" value="${itemInstance?.dueDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status"><g:message code="item.status.label" default="Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: itemInstance, field: 'status', 'errors')}">
                                    <g:select name="status" from="${itemInstance.constraints.status.inList}" value="${itemInstance?.status}" valueMessagePrefix="item.status"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="priority"><g:message code="item.priority.label" default="Priority" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: itemInstance, field: 'priority', 'errors')}">
                                    <g:select name="priority" from="${itemInstance.constraints.priority.inList}" value="${itemInstance?.priority}" valueMessagePrefix="item.priority"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="completed"><g:message code="item.completed.label" default="Completed" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: itemInstance, field: 'completed', 'errors')}">
                                    <g:checkBox name="completed" value="${itemInstance?.completed}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="percentComplete"><g:message code="item.percentComplete.label" default="Percent Complete" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: itemInstance, field: 'percentComplete', 'errors')}">
                                    <g:select name="percentComplete" from="${0..100}" value="${fieldValue(bean: itemInstance, field: 'percentComplete')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="body"><g:message code="item.body.label" default="Body" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: itemInstance, field: 'body', 'errors')}">
                                    <g:textArea name="body" cols="40" rows="5" value="${itemInstance?.body}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
