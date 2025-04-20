trigger OpportunityTrigger on Opportunity (before update, After Update) {

    if(Trigger.isBefore && Trigger.isUpdate){
      OpportunityTriggerHandler.handleActivitiesBeforeUpdate(Trigger.New, Trigger.OldMap);  
        
    }
    if(Trigger.isAfter && Trigger.isUpdate){
        OpportunityTriggerHandler.handleActivitiesAfterUpdate(Trigger.NEW);
    }
    
    if(Trigger.isAfter && Trigger.isDelete){
        OpportunityTriggerHandler.handleActivitiesAfterDelete(Trigger.Old);
    }
}