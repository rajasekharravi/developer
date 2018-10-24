trigger AccountAddressTrigger on Account (before insert,before update) {
    
       // list<Account> acts= trigger.new;
    for(Account acc: trigger.new)
    {
        if(acc.Match_Billing_Address__c==true && acc.BillingPostalCode!=null)
        {
            acc.ShippingPostalCode=acc.BillingPostalCode;
        }
    }

}