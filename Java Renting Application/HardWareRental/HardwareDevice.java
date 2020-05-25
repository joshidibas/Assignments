
/** This class is used to provide the hardware manufacturer, its description and inputs the customer name.
 * @author(Dibas Prasad Joshi)
 * @version(4th April,2015)
 */
public class HardwareDevice
{
    String Description; //Description of the super class as string type.
    String Manufacturer;//Description of the manufacturer of the device.
    String customerName; //Cusomer Name as a string data type.
    
    /**
     * Constructor of the super class HardwareDevice.
     */
    public HardwareDevice(String description, String manufacturer)
    {
        this.Description=description;
        this.Manufacturer=manufacturer;
        customerName=""; //Sets the empty value for the customer name.
    }
    
    /**
     * The return type method to return the description of hardware.
     */
    public String getDescription()
    {
        return Description;
    }
    
    /**
     * The return type method to return the manufacturer of the hardware.
     */
    public String getManufacturer()
    {
        return Manufacturer;
    }
    
    
    
    /**
     * The void type method that sets customerName of the hardware to a new value.
     */
    public void setcustomerName(String new_customerName)
    {
        customerName=new_customerName;
    }
    
    /**
     * The void type method that displays the information of Hardware class.
     */
    public void DisplayHardwareDevice()
    {
        System.out.println("Description: "+Description);
        System.out.println("Manufacturer: "+Manufacturer);
       
        if(!customerName.equals(""))
        {
            System.out.println("Customer Name: "+this.customerName);
        }
    }
}