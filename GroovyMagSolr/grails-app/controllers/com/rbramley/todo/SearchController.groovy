package com.rbramley.todo

class SearchController {

    def solrService

    def search = { 
        println params.query
        def res = solrService.search("${params.query}")
        
        res.resultList.each { r -> 
            println r.id
            println r.dateCreated
            println r.class
            println r.subject
        }
        
        [query:params.query, total:res.total, searchResults:res.resultList]
    }
}
