public with sharing class ApexUseCaseSeven {
    public static Decimal splitBill(integer numberOfPeople, Decimal billAmount){
        Decimal splitPerPerson;
        if(billAmount!=null && numberOfPeople>0){
            splitPerPerson = billAmount/numberOfPeople;
        }       
        return splitPerPerson;
    }
}