public with sharing class AccountHandler {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        List<Account> accList = [SELECT id,Name,Phone, Rating,Industry FROM Account];
        system.debug('accList== ' + accList);
        return accList;
    }
}