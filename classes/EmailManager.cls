public class EmailManager {
	//public Method - will not return any value
    public EmailManager()
    {
        system.debug('costructor fired when object has been intiated');
    }
	    
    public void sendMail(string address, string subject, string body)
    {
         system.debug('Checking Sendemail execution start');
        //creating email message object
        Messaging.SingleEmailMessage mail= new messaging.SingleEmailMessage();
        string[] toaddress= new string[] {address};
        //mail.setToAddresses(address);
        mail.setToAddresses(toaddress);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        //passing mail message to sendemail method
        Messaging.SendEmailResult[] Res= messaging.sendEmail(new messaging.SingleEmailMessage[] {mail});
        //calling helper class to inspect the returned results
        Inspectresults(Res);
        system.debug('Checking Sendemail execution end');
            
    }
    
    private boolean Inspectresults(messaging.SendEmailResult[] results)
    {
        system.debug('Checking Inspectresult execution start');
        boolean sendresults=false;
        //send email retruns an array of result objects
        //need to iterate the results to check success 
        //in this class we can send to only one email so we have only one result
        for (messaging.SendEmailResult result:results)
        {
            system.debug('sent email result=' + result);
            if (result.issuccess())
            {
                sendresults=true;
                system.debug('sent email successfully' + result);
            }
            else 
            {
                sendresults=false;
                system.debug('sent email failed' + result +'  '+ result.geterrors());
                
            }
        }
        system.debug('Checking Inspectresult execution end');
        return sendresults;
               
    }
    
    
}