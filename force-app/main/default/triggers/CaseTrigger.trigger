trigger CaseTrigger on Case (before insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        for(case caseRecord : Trigger.new){
            if(caseRecord.origin=='Phone'){
                caseRecord.priority='High';
                
            }
            else{
                caseRecord.Priority ='Low';
            }
        }
    }
}