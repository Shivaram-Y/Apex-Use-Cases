public with sharing class ApexUseCaseSixteen {
    public Static Integer sumOfAll(Integer finalNumber){

        integer totalSum = 0;
        for(integer i=1; i<finalNumber; i++){
            totalSum=totalSum+i;
        }
        return totalSum;
  
    }
}