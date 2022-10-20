public class AccountHandler {
    public static Account insertNewAccount(String name) {
       try {
        Account acct = new Account();
        acct.Name = name;
        
        insert acct;
        return acct;    
       } 
       catch (Exception e) {
        return null;
    }     
    }
}
