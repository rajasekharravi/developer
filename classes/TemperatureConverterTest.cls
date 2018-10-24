@istest
public class TemperatureConverterTest {
    @istest static void testfor70fh()
    {
       Decimal cs = TemperatureConverter.FHT(70);
        system.assertEquals(21.11, cs);
    }
    
    @istest static void testfornullcheck()
    {
        Decimal cs = TemperatureConverter.FHT(212);
            system.assertEquals(null, cs, 'Null pointer exception');
    }

}