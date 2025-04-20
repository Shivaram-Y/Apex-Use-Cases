public with sharing class ApexUseCaseFive {
    public static Boolean checkIfCombinationExists(String AccountName, String ContactName){
        
        //query any contact with the name : contactname and accountname : accountname
        //query returned a result - true
        //else false
        
        List<Contact> ContactRecords = [Select Id, Name, Account.Name from Contact where Name = : ContactName AND Account.Name=:AccountName ];
        if(ContactRecords.size()>0){
        return true;
        }
    else
    {
        return false;
    }    
    
    }
}

