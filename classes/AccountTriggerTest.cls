@istest
public class AccountTriggerTest 
{
    
   @istest public static void CreateBulkRecords()
   {
       List <Account> Actlist= new List<Account>();
       for(integer i=0;i<200;i++)
           {
               Account Act=new Account(name='Testaccount_' +i,BillingState='CA');
               Actlist.add(Act);                  
               
           }
       Test.startTest();
       insert Actlist;
       Test.stopTest();
       
       List<Account> verifyActcount= [select id,name from Account where ShippingState='CA'];
       system.assertEquals(200, verifyActcount.size(), 'Shippingstateswith 200 records');
       Integer Actcountcount= [select count() from Account where ShippingState='CA'];
       system.assertEquals(200, Actcountcount, 'Shippingstateswith 200 Actcountcount records');
    }
}