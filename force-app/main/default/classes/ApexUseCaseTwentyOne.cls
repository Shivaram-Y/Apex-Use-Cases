public with sharing class ApexUseCaseTwentyOne {
    public Static Boolean checkLeadDuplicate(Lead leadRecToCheck) {
        list<Lead> leadRecords =[SELECT Id  FROM Lead WHERE Id!=:leadRecToCheck.Id AND  Email=: leadRecToCheck.Email AND Name = :leadRecToCheck.Name AND leadsource =: leadRecToCheck.leadsource AND Industry = : leadRecToCheck.Industry  ];
        if(leadRecords.size()>0){
            return true;
        }
        return false;
    }
}