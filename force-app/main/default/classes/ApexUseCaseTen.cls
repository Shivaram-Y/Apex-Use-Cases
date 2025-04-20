public with sharing class ApexUseCaseTen {
    public static String checkPlantType(String plantName) {  //Tulsi
        String plantType='Not Specified';
        if(String.isNotBlank(plantName)){
           
        //fetch all metadata records so that I have all the plant names available in the system
        //iterate over the plant names from this metadata and check if the input plant is in the metadata or not
        //if it does not exist, return blank - not found
        //if you find a mapping in the metadata retrieve the plant_type__c from the metadata for that plant mentioned and return it as output
        list<Plant_Information_Master__mdt> plantRecords = [Select Id, MasterLabel, Plant_Type__c from Plant_Information_Master__mdt where MasterLabel =: plantName LIMIT 1];
            if(plantRecords.Size()==1){
                return plantRecords[0].Plant_Type__c;
            }

        /*
        for(Plant_Information_Master__mdt plantRec : plantRecords){
            if(plantRec.MasterLabel == plantName){
                return plantRec.Plant_Type__c;
            }
        } */

    }
        return plantType;    
    }
}