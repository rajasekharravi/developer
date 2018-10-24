public class ContactAndLeadSearch
{
    Public static list<list<SObject>> searchContactsAndLeads(string gname)
    {
        
        list<list<sobject>> searchlist= [find :gname IN NAME FIELDS RETURNING contact(firstname,lastname where firstname=:gname or lastname=:gname),Lead(firstname,lastname where firstname=:gname or lastname=:gname)];
        return searchlist;
              
    }
	Public static list<list<SObject>> searchContactsAndLeads()
    {
        
        return null;
              
    }

}