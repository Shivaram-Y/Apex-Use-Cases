trigger TaskTrigger1 on Task (before insert) {
    //whenever a task is created, set priority to High
    //same record update , so before update
    
    if(Trigger.isInsert && trigger.isBefore){
        
        for(Task taskRecord : Trigger.New){
            system.debug('Found the record');
            taskRecord.Priority='High';
        }
    }
}