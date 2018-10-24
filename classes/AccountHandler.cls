public class AccountHandler {
    
public static Account insertNewAccount(string accountname)
   { 
        try
           {
               account a = new account(name=accountname);
               insert a;
               return a; 
           }
       catch(dmlexception e)
           {
              return null; 
           }
                
    }      
}