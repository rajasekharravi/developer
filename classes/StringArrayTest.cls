public class StringArrayTest {

    public static list<string> generateStringArray(integer a)
    {
      
      list<string> formating= new list<string>();
      for (integer i=0;i<a;i++)
      {
          formating.add('Test ' +i);
      }
           
      return formating;  
    }

}