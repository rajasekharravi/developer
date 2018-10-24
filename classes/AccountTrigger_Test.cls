@istest
public class AccountTrigger_Test {
  
    @istest static void TestCreateNewAccountInBulk()
    {
        //test setup data
        //testing for 201 records
        List<Account> act= New List<Account>();
        for (integer x = 0;x < 201; x++)
        {
            Account acc= new Account(name='Test Account' + x);
            act.add(acc);
        }
        
        //Perform test
        Test.startTest();
        insert act;
        Test.stopTest();
        
        List<Account> verifyAcct=[select id from Account];
        system.assertEquals(201, verifyAcct.size(), 'Checking for 201 Account records');
        list<opportunity> verifyOpty=[select id from opportunity];
        system.assertEquals(201, verifyOpty.size(), 'Checking for 201 Opportunity records');
    }

}