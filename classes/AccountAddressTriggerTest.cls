@istest
public class AccountAddressTriggerTest {
    
    @istest public static void creationOfBulkRecords()
    {
        Account act=new Account();
        integer uniquepostalcode;
        
        for(integer i=0;i<201;i++)
        {	
            //Test.startTest();
            //if you put above method will get errormessage saying System.FinalException: Testing already started
            act.name='Testbulk'+i;
            act.Match_Billing_Address__c=true;
            uniquepostalcode=560076+i;
            act.ShippingPostalCode=String.valueof(uniquepostalcode);
            //Test.stopTest();          
        }
        
    }

}