public with sharing class ApexUseCaseThirteen {
public static string generateFirstAndLastName(string emailAddress) {
String fullName='';
String extractedString = emailAddress.substringBefore('@');
if(String.isNotBlank(extractedString)){

if(extractedString.contains('_')){      
    fullName = extractedString.replace('_', ' ');
    system.debug(fullName);
}

/*   List<String> splittedOfExtractedString = extractedString.split('_');    
if(splittedOfExtractedString.size()==2){
fullName = splittedOfExtractedString[0] + ' ' + splittedOfExtractedString[1];
*/


}
return fullName;
}        


}
