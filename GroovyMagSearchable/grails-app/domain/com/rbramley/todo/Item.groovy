package com.rbramley.todo

class Item {
    Date dateCreated
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
    
    static searchable = [except: 'dateCreated']
}
