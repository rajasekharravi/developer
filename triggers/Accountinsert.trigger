trigger Accountinsert on Account (before insert) {
    
      for (Account b : Trigger.new)
        {
            system.debug('Trigger.new:Account Name: '+b.Name);
            system.debug('Trigger.new:Account Industry: '+b.AccountNumber);           
           //b.AccountNumber='12345';
           // update b;
        }
    
   }