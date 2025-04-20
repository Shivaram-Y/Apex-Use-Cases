public with sharing class ApexUseCaseEight {
    public static Boolean divisblebySevAndElev(Integer numberToCHeck){
        if(numberToCheck!=null){
            if (Math.mod(numberToCheck, 7)==0 && Math.mod(numberToCheck,11) == 0){
                return true;
            }
        }
   
        return false;
    }
}