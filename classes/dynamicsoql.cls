public class dynamicsoql {
    public list<Account> acc {set;get;}
    public string accname {set;get;}
    public string accindustry{set;get;}
    
    public void accsearch()
    {
        
       String query= 'select name,industry from Account';
        
        if((accname!=null && accname!='') && (accindustry!=null && accindustry!=''))  
           {
               query=query+'where name=\''+accname+'\' and industry= \''+accindustry+'\' limit 1';
               
           }
        else
        {
            if (accname!=null && accname!='')
            {
                query=query+'where name=\''+accname+'\'';
            }
            else{
                if (accindustry!=null && accindustry!='')
                {
                    query=query+'where industry=\''+accindustry+'\'';
                }
            }
            
        }
            
        acc=database.query(query);
    }
}