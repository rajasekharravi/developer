// updating account records with default values and crating opportunity once account is created

trigger AccountTrigger on Account (before insert,before update,before delete,after insert,after update,after delete, after undelete)
{
    // after insert create opportunities
   if (trigger.isafter && trigger.isinsert)
    {
        AccountHandleropp.Createnewoppty(trigger.new);
    }
    
    if(trigger.isbefore)
    {
        if(trigger.isinsert)  
        {
           // list<Account> acc=trigger.new;
            AccountTriggerHandler.CreateAccounts(trigger.new);
        }
    }
    
}