public with sharing class ApexUseCaseFourteen {
    public static List<Integer> returnFibonacciSequence(Integer endNumber) {
        list<Integer> fiboSequence = new List<Integer>();
        Integer m=0,n=1;
        for(Integer i=0; i<=endNumber;i++){
           integer nextNumber = m+n;
            m=n;
            n=nextNumber;
            fiboSequence.add(nextNumber);
            
        }
        return fiboSequence;
    }
}