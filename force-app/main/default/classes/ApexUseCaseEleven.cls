public with sharing class ApexUseCaseEleven {
    public static String CheckFullFormForAcronym(String acronym){
        //store the master data of all acronyms somewhere
        //fetch them and find if the acronym user has entered exists in the master data
        //if it does, print the full form of the acronym in the debug log
       if(string.isNotBlank(acronym)){
        List<Acronym_Master__c> acronymMasters = [SELECT Id,Name, Full_Version__c FROM Acronym_Master__c WHERE Name= : acronym Limit 1];
        if(acronymMasters.size()==1){
            return acronymMasters[0].Full_Version__c;
        }

       }
        
    return 'Nothing Specified';
    }
}