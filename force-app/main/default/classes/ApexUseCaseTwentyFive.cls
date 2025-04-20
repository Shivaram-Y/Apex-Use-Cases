public with sharing class ApexUseCaseTwentyFive {
    public static List<Case> returnMergedList(String queueName1, String queueName2 ) {
        List<Case> MergedList =  new List<Case>();

        list<case> escalationsRecords = [SELECT Id FROM Case WHERE Owner.Name = : queueName1];
        list<case> slaRecords = [SELECT Id FROM Case WHERE Owner.Name = : queueName2];

        mergedList.addAll(escalationsRecords);
        mergedList.addAll(slaRecords);

        return mergedList;
    }
}