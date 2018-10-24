public class example1 {

    public list<Account> acc {set;get;} 
    public list<Opportunity> oppty {set;get;}
        public example1()
    {
        acc=[select id,name,industry from account limit 20];
        oppty=[select id,name,amount from opportunity where accountid!=null limit 20];
    }
    public void getlimit1()
    {
        acc=[select id,name,industry from account limit 10];
    }
    
    
}