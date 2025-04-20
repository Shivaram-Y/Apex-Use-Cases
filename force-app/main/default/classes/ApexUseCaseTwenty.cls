public with sharing class ApexUseCaseTwenty {
    public Static UserInfoWrapper getLoggedInUserInfo() {
   
        UserInfoWrapper wrapper = new UserInfoWrapper();
        wrapper.localeInfo = UserInfo.getLocale();
        wrapper.timeZoneInfo = String.valueOf(UserInfo.getTimeZone());
        string userId = UserInfo.getUserId();
        
        list<User> userRecord = [select id, LastLoginDate From user where id =: userId limit 1];
        if( userRecord.size()>0){
        if(userRecord[0].LastLoginDate!=null){
            wrapper.LastLoginInfo = userRecord[0].LastLoginDate;
        }
}
return wrapper;
    }
    public class UserInfoWrapper {
    public DateTime LastLoginInfo;
    public string localeInfo;
    public String timeZOneInfo;
    
    }
}