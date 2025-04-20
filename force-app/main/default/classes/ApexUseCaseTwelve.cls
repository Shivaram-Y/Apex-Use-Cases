public with sharing class ApexUseCaseTwelve {
    public Static List<Task> returnLatestTask(){
        return [SELECT Id, Status from Task Where CreatedDate = TODAY Order By CreatedDate DESC ];
    
    }
}