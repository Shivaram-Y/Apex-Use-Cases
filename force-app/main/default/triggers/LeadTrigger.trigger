trigger LeadTrigger on Lead (before Update, after insert, before Delete) {
    
    if(Trigger.isAfter && Trigger.isInsert){
    LeadTriggerHandler.handleAfterInsertActivities(Trigger.New);
    }
    
    if(Trigger.isBefore && Trigger.isUpdate){  
    LeadTriggerHandler.handleBeforeUpdateActivities(Trigger.New);
    }
    
    if(Trigger.isBefore && Trigger.isDelete){  
    LeadTriggerHandler.handleBeforeDeleteActivities(Trigger.Old);
    }
    
   /* if(Trigger.isAfter && Trigger.isDelete){
    LeadTriggerHandler.handleAfterDeleteActivities(Trigger.Old);
    }
*/
}