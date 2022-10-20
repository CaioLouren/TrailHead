trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    
    List<Task> taskList=new List<Task>(); 

    for(Opportunity Opp:Trigger.new){
        if(Trigger.isInsert || Trigger.isUpdate)
          if(opp.StageName=='Closed Won')
              taskList.add(new task(Subject='Acompanhar Tarefa de Teste',
                                 WhatId =opp.Id));
    }
    
    if(taskList.size()>0){
        insert taskList;
    }

}