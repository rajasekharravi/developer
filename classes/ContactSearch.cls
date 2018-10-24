public class ContactSearch {
    
    public static list<contact> searchForContacts(string lstname,string postalcode)
    {
        list<contact> con = [select id,firstname,lastname from contact where lastname=:lstname and MailingPostalCode=:postalcode];
	    return con;
    }
    

}