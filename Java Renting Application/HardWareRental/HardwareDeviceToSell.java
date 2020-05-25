/**
 * This class is used to sell the hardware device avialable. It also displays the information regarding the hardware device along with the name of the buyer.
 *@author(Dibas Prasad Joshi)
 *@version(4th April,2016)
 */

public class HardwareDeviceToSell extends HardwareDevice
{
   public int price; //Integer data type for the price of the Hardware Device on sale.
   public String dateOfSell; //String data type for the selling date of the device.
   public int tax; //Integer data type for the tax alloted to the selling price of the device.
   public int totalCost; //Integer data type for the total cost of the Hardware Device.
   public boolean Sold; //Boolean data type for the status of hardware device whether it is sold or not.
    
   /**
    * Constructer of the class HardwareDeviceToSell.
    */
   public HardwareDeviceToSell(String Description, String Manufacturer, int price,int tax)
   {
       super(Description, Manufacturer);
       this.price=price;
       Sold=false;
       this.tax=tax;
   }
   
  /**
   * This method returns the description of the hardware device on sale.
   */
   public String getDescription()
   {
       return Description;
   }
   
  /**
   * This method returns the detail of the manufaturer of the hardware device.
   */
   public String getManufacturer()
   {
       return Manufacturer;
   }
  
  /**
   * This method returns the selling price of the hardware device.
   */
   public int getPrice()
   {
       return price;
   }
   
   /**
    * This method returns the selling date of the hardware device.
    */
   public String getdateOfSell()
   {
       return dateOfSell;
   }
   
   /**
    * This method returns the tax alloted to the device price.
    */
   public int getTax()
   {
       return tax;
   }
  /**
   * This method returns the total cost price of the Hardware device.
   */
   public int gettotalCost()
   {
       return totalCost;
   }
   
   /**
    * This method sets the new value to the price of a hardware.
    * It also displays an error message if the hardware device is already sold.
    */
   public void setNewPrice(int price)
   {
       if (Sold==true)
       {
           System.out.println("Device has already been Sold!!");
       }
       else
       {
           this.price=price;
       }
   }
   /**
    * This method is used to set the new value to the tax rate.
    * It also displays a message is the hardawre device has been sold.
    */
    public void setNewTax(int tax)
   {
       if (Sold==true)
       {
           System.out.println("Device has already been Sold!!");
       }
       else
       {
           this.tax=tax;
       }
   }
   
   /**
    * This method sets the Buyer's name if the Generator is on sale.
    * It also displays an error message if the hardware device has been sold.
    */
   public void sellHardwareDevice(String customerName, String dateOfSell)
   {
       if(Sold==false)
       {
           super.setcustomerName(customerName);
           Sold=true;
           totalCost=price+tax;
           
           System.out.println("The Device has successfully been bought");
           
       }
       else
       {
           System.out.println("Sorry! This Device has already been sold");
           System.out.println("Date of sale:"+dateOfSell);
       }
   }
   
   /**
    * This method displays the description of the hardware device.
    * It also displays the the information regarding cost and buyer's name.
    */
   public void dispalyHardwareDeviceMessage()
   {
       super.DisplayHardwareDevice();
       if(Sold==false)
       {
           
          
           this.tax=tax;
           this.totalCost=price+tax;
           System.out.println("Device on sale");
           System.out.println("Price: "+price);
           System.out.println("Tax: "+tax);
           System.out.println("Total Price: "+totalCost);
       }
       else
        {
             Sold=true;
             super.customerName=customerName;
             this.dateOfSell=dateOfSell;
             System.out.println("Selling Date:"+dateOfSell);
             System.out.println("Price: "+price);
             System.out.println("Tax: "+tax);
             System.out.println("Total Price: "+totalCost);
        }
   }   
}