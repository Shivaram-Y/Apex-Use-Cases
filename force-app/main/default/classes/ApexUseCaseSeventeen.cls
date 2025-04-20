public with sharing class ApexUseCaseSeventeen {
    public Static list<integer> findMinAndMax(List<Integer> listOfNumber){
        list<integer> minAndMax = new list<integer>();
        if (listOfNumber.size()>0){
           integer minNumber = listOfNumber[0];
           integer maxNumber = listOfNumber[0];
        for(integer eachNum: listOfNumber){
            if(eachNum>=maxNumber){
                maxNumber=eachNum;
            }
            else if(eachNum<=minNumber){
                minNumber=eachNum;
            }
        }
            minAndMax.add(minNumber);

            minAndMax.add(maxNumber);
        }
            return minAndMax;
        
        }
}