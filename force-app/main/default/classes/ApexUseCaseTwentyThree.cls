public with sharing class ApexUseCaseTwentyThree {
    public static void reassignCase(Case caseRec) {
        string queueId;
        if(caseRec!=null){
            if(caseRec.Priority=='High' && caseRec.Origin =='Web'){
                // assign this case to SLA queue
            List<group> mySLAQueue = [Select Id, Name, Type, DeveloperName from Group Where Type = 'Queue' and DeveloperName ='SLA_Queue'];
            if(mySLAQueue.size()>0){
                caseRec.OwnerId = mySLAQueue[0].Id;
                update caseRec;
            }
            
            }
        }
    }
}