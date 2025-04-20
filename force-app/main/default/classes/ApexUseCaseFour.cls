public with sharing class ApexUseCaseFour {
    public static List<string> returnContactEmails ( String AccountName){
        List<String> emailList = new List<String>();

        List<Contact> ContactList= [Select Id,Email from Contact where Account.Name=: AccountName];
        if(contactList.size()>0){
            for (contact con : ContactList){
                if(con.email!=null){
                    emailList.add(con.email);
                }  
        }
     }

    return emailList;
    }
}