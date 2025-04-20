public with sharing class ApexUseCaseEighteen {
    public static list<object> displayACCAndConRecords() {
        //query database to find acc and contacts
        list<object> obList = new list<object>();
        List<Account> accsCreated = [SELECT Id from Account  ORDER BY CreatedDate DESC LIMIT 10];
        List<Contact> consCreated = [SELECT Id from Contact  ORDER BY CreatedDate DESC LIMIT 10];

        if(accsCreated.size()>0){
            obList.addAll(accsCreated);
        }
        if(consCreated.size()>0){
            obList.addAll(consCreated);

        }
        return  obList;
    }
}