package com.rbramley.todo

class SearchController {

    def elasticSearchService

    def search = { 
        def res = elasticSearchService.search("${params.query}")
        
        res.searchResults.each { r -> 
            println r.id
            println r.dateCreated
            println r.class
            println r.subject
        }
        
        [query:params.query, total:res.total, searchResults:res.searchResults]
    }
}
