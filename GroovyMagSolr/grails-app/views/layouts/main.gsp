<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="grailsLogo"><a href="${createLink(uri: '/')}"><img src="${resource(dir:'images',file:'grails_logo.png')}" alt="Grails" border="0" /></a></div>
        <div>
            &nbsp;<strong>Quick search</strong>
            <g:form url='[controller: "search", action: "search"]' id="searchForm" name="searchForm" method="get">
                &nbsp;<input type="text"  name="query" value="${query ?: 'Keywords'}" onClick="javascript:if (this.value=='Keywords') { this.value='' }">
                <input type="image" src="${resource(dir:'images',file:'go_quick_search.png')}">
            </g:form>
		</div>

        <g:layoutBody />
    </body>
</html>