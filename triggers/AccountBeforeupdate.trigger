trigger AccountBeforeupdate on Account (before insert) {
    for (Account a : Trigger.old)
        {
            system.debug('Trigger.old:Account Name: '+a.Name);
            system.debug('Trigger.old:Account Industry: '+a.AccountNumber);
            // a.AccountNumber='123';
           // update a;
            //a.AccountNumber.adderror('this record cannot be deleted as it contains number as 123');
        }
    for (Account b : Trigger.new)
        {
            system.debug('Trigger.new:Account Name: '+b.Name);
            system.debug('Trigger.new:Account Industry: '+b.AccountNumber);           
           // b.AccountNumber='12345';
           // update b;
        }
    
    list<account> aa=[select id,name,accountnumber from account where id in:trigger.old];
    for (account aaa:aa)
    {
        system.debug('aaa.accountnumber: soqltriger.old: '+aaa.accountnumber);
        
    }
    list<account> abc=[select id,name,accountnumber from account where id in:trigger.new];
    for (account bbb:abc)
    {
        system.debug('bbb.accountnumber: soqltriugger.new: '+bbb.accountnumber);
    }
    system.debug('aa: '+ aa);
    system.debug('abc: '+ abc);
    map<id,Account> oldmap=trigger.oldmap;
    map<id,Account> newmap=trigger.newmap;
    system.debug('oldmap: '+ oldmap);
    system.debug('newmap: '+ newmap);    
    
    
}