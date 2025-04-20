public class ApexUseCaseOne {
    public static void createNewContact( String firstName, String lastName, String emailAddress){
     
     list<contact> conListToInsert = new list<contact>();
      
     Contact contoInsert = new Contact();
 if (string.isBlank(lastName)){
 
     contoInsert.LastName = lastName;
     contoInsert.Email = emailAddress;
     conListToInsert.add(contoInsert);
     
    }
 if(conlistToInsert.size()>0){
     insert conListToInsert;
 }
    
 }
}