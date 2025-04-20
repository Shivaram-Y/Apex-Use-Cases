trigger ContactTrigger on Contact (before insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        ContactTriggerHandler.throwErrorOnContactCreation(Trigger.New);
    }
   
}