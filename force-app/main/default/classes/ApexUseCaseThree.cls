public with sharing class ApexUseCaseThree {
    public static void sendAlertToCustomer(string emailAddress){
        if((string.isnotBlank(emailAddress))){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        //set values based on the requirement
        list<string> toAddressesList = new list<string>{emailAddress};
        mail.setsubject('Urgent Mail Take a Look');
        mail.setPlainTextBody('This is a notification trigger from Salesorce Apex');
        mail.setToAddresses(toAddressesList);
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail } );
        
    }
    }
}