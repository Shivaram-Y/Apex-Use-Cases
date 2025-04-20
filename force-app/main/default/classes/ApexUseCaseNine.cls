public with sharing class ApexUseCaseNine {
    public static String checkGenerationType(Integer yearOfBirth){
        
        String genType='';
        if(yearOfBirth!=null){
        if(yearOfBirth>=1980 && yearOfBirth<=1994){
            genType='Millenial';           
}
        else if  (yearOfBirth>=1995 && yearOfBirth<=2009){
            genType='Gen Z';
            }
        else if (yearOfBirth>=2010 && yearOfBirth<=2014){
            genType='Gen Alpha';
        }
    }
        return genType;
    }
}