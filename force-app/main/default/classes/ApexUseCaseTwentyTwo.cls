public with sharing class ApexUseCaseTwentyTwo {
            public Static Boolean checkIfConHasSameParents(Contact Rec1 , Contact Rec2) {
                if(rec1!=null && rec2!=null && rec1.Accountid!=null && rec2.Accountid!=null){
                    if(rec1.Accountid==Rec2.Accountid ){
                        return true;
                    
                    }
                    


            }
            return false;
}
}
