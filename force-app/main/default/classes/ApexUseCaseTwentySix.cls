public with sharing class ApexUseCaseTwentySix {
    public Static void assignCaseToQueue(Id caseRecId){
         
        list<group> queueInfo = [Select id from Group WHERE  Type = 'Queue' and DeveloperName =: System.Label.My_Primary_Queue Limit 1];
       list<Case> caseToAssign = [SELECT Id, OwnerId FROM Case WHERE Id=:caseRecId limit 1];
if(caseToAssign.size() == 1 && queueInfo.size()==1){
    caseToAssign[0].OwnerId= queueInfo[0].Id;
    update caseToAssign[0];
}
    }
}