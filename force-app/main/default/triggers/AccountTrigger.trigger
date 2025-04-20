trigger AccountTrigger on Account (before update,before insert, after Insert ,after update){
    
    if(Trigger.isBefore && Trigger.isInsert){
        AccountTriggerHandler.populateSBAddress(Trigger.New);
        AccountTriggerHandler.handleBeforeInsertActivities(Trigger.New);
    }
    
    if(Trigger.isBefore && Trigger.isUpdate){
    AccountTriggerHandler.handleBeforeUpdateActivities(Trigger.New, Trigger.oldMap);
    }
    
	if(Trigger.isAfter && Trigger.isUpdate){
    AccountTriggerHandler.handleAfterUpdateActivities(Trigger.New, Trigger.oldMap);
    }
  
	if(Trigger.isAfter && Trigger.isInsert){
    AccountTriggerHandler.handleAfterInsertActivities(Trigger.New);
    }

}