public class AccountUtils {

    public static list<Account> accountsByState(string st)
    {
        list<account> acc = [select id, name from Account where BillingState = :st];
        return acc;
    }
    
}