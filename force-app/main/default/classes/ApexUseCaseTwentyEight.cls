public with sharing class ApexUseCaseTwentyEight {
    public static Map<String, List<Case>> generateCasesByOrigin() {
        Map<String, List<Case>> caseByOriginMap = new Map<String, List<Case>>();
        list<case> caseRecords = [Select id, CaseNumber, Origin from Case Limit 50000];
        for(case caseRec: caseRecords){
            if(caseByOriginMap.containsKey(caseRec.Origin)){
                    caseByOriginMap.get(caseRec.Origin).add(caseRec);
            }
            else{
                list<case> casesByOrigin = new list<case>();
                casesByOrigin.add(caseRec);
                caseByOriginMap.put(caseRec.Origin, casesByOrigin);
            }
            

        }
        return  caseByOriginMap;

    }
}