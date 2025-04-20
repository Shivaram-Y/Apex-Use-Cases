public with sharing class ApexUSeCaseNinteen {
    public Static  String checkObjectType(Id recordId){

        String objectType = '';
        if(recordId!=null){
            Map<String, Schema.SObjectType> globalDesCMap = Schema.getGlobalDescribe();  
            for(String eachString : globalDescMap.KeySet()){
             string keyPrefix = globalDescMap.get(eachString).getDescribe().getKeyPrefix();
                system.debug(keyPrefix);
               if(keyPrefix!=null){
                if((String.valueOf(recordId).startsWith(keyPrefix))){
                    objectType = eachString;
                    break;  
               }
                                  
                }
            }   
           }

        return objectType;

    }

}