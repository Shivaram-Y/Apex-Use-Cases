public with sharing class ApexUseCaseTwentyNine {
    public Static list<String> retriveRecordTypes(String sobjectName) {
     list<String> recordTypeNames = new List <String>();
    
      list<RecordType> recordtypes = [Select Id,DeveloperName from RecordType where SobjectType=:sobjectName];  
     for(RecordType rT : recordtypes){
         recordTypeNames.add(rT.DeveloperName); 
     
         }
     return RecordTypeNames;
     
    

    }
}