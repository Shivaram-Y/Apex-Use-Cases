public class ApexUseCaseTwo {
   public static Decimal calculateInterest(Decimal Principal, Decimal Interest, Integer timeinYears){
    if(principal!=null && Interest!=null && timeinYears!=null){
    Decimal SimpleInterest = (Principal*Interest*timeinYears)/100;
    return SimpleInterest;
    }
    else {
        return 0;
    }
}
}