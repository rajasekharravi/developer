public class AccountTriggerHandler {

    public static void CreateAccounts(list<Account> acc)
    {
        for (Account acts: acc)
        {
            if((acts.BillingState!=null || acts.BillingState!='') && (acts.ShippingState!=acts.BillingState))
                acts.ShippingState=acts.BillingState;
        }
    }
}