public class Fridge {
private String modelNumber;
private Integer numberInStock;
    public integer rating
    {
        set{rating=value;if(rating<0)	rating=0;}
        get{return rating;}
    }
public static final integer currentstock=100;
    public fridge()
    {
        numberinstock=0;
        modelnumber='Elitebook-840';
        system.debug('constructor fired to set default model number:'+modelNumber);
        system.debug('constructor fired to set default stock: '+ numberinstock);
    }
    public fridge(string modelno,integer instk)
    {
modelNumber=modelno;
  numberInStock=instk;      
    }
public void setmodelnumber(string str)
{
    modelnumber=str;
}
 public string getmodelnumber()
 {
     return modelnumber;
   }
public integer getnumberinstock()
{
       return numberinstock;
}
public void setnumberinstock(integer instock)
{
numberInStock=instock;    
}
public void updateStock(Integer justSold)    
{
numberInStock = numberInStock - justSold;
}
}