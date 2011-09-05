package com.rbramley.todo

import org.grails.solr.Solr

class Item {
    Date dateCreated
    
    @Solr(asText=true)
    String subject
    
    Date startDate
    Date dueDate
    String status
    String priority
    boolean completed = false
    int percentComplete = 0
    String body

    static constraints = {
        subject(blank:false, nullable:false)
        startDate()
        dueDate()
        status(inList:["Not Started","In Progress","Completed","Waiting on someone else","Deferred"])
        priority(inList:["Low","Normal","High"])
        completed()
        percentComplete(range:0..100)
        body(nullable:true, maxSize:1000)
    }

    static enableSolrSearch = true
    static solrAutoIndex = true
}
