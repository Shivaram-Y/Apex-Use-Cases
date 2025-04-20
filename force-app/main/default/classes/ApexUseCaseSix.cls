public with sharing class ApexUseCaseSix {
    
    public static Boolean checkVotingRights(Date dateOfBirth){
        
        //I have input of DOB
        //I know what is todays date
        //i will calculate the difference
        //convert it in Years
        //check if converted age is more than 18
        //if true - Voting rights
        //if false - No voting rights
    
        Date todaysDate = System.today();
        Integer ageInYears = (dateOfBirth.daysBetween(todaysDate))/365;

        if (ageInYears > 18){
            return true;
          }
        else {
            return false;
        }
        
    }
}