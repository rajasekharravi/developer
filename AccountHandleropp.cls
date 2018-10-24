public class AccountHandleropp {
    
    public static void Createnewoppty(list<account> acc)
    {
        list<opportunity> opty= new list<opportunity>();
        for(Account aa :acc)
        {
            opportunity opp = new opportunity();
            opp.AccountId=aa.id;
            opp.Name=aa.Name+'opportunity';
           // opp.StageName='Prospecting';
            opp.CloseDate=system.today().addmonths(1);
            opty.add(opp);
        }
        if(opty.size() >0)
        {
            insert opty;
        }  
    }

}