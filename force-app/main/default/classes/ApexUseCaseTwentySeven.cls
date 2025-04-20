public with sharing class ApexUseCaseTwentySeven {
    public Static Set<Id> generateAccountReport() {
        Set<Id> accIds = new Set<Id>();
        list <Opportunity> oppsRecords= [Select Id, AccountId from Opportunity where amount >80000];
    
        for(opportunity opp: oppsRecords){
            accIds.add(opp.AccountId);
        }

        return accIds;
    }
}
