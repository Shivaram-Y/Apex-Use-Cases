public with sharing class ApexUseCaseTwentyFour {
    public static Account findmaxRevenueGenerator() {

        List <Account> accRecords = [SELECT Id,Name,AnnualRevenue from Account Where AnnualRevenue !=null ORDER BY AnnualRevenue DESC LIMIT 1];
    if(accRecords.size()==1){

    
        return accRecords[0];
    }
    return null;
    }
}