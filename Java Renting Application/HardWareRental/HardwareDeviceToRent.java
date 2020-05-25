/**This class is used to rent a hardware device for a certain period of time by a customer.
 * @author(Dibas Prasad Joshi)
 * @version(4th April,2016)
 */

public class HardwareDeviceToRent extends HardwareDevice
{
    String dateOfHire; // String data type for date of hire of the hardware device.
    String dateOfReturn; // String data type for date of return of the hardware device.
    int downPayment; //Integer data type for the down payment of the customer.
    int numberOfDays; //Integer data type for the number of days to be rented.
    int dailyRate; //Integer data type for the daily rate of the renting service of the hardware.
    int totalRent; // Interger data type for the total rent amount of the hardware device.
    boolean onLoan; //Boolean data type to check the avialability if the hardware device.
    
    /**
     * Constructor of class HardwareDeviceToRent.
     */
    public HardwareDeviceToRent(String Description, String Manufacturer, int new_downPayment, int new_dailyRate)
    {
        super(Description, Manufacturer);
        this.downPayment=new_downPayment;
        this.dailyRate=new_dailyRate;
        numberOfDays=0;
        totalRent=0;
        dateOfHire="";
        dateOfReturn="";
        onLoan=false;
    }
    
    /**
     * This method returns the description of the hardware from the parent class.
     */
   public String getDescription()
    {
        return super.Description;
    }

    /**
     * This method returns the Manufacturer's name of the hardware.
     */
    public String getManufacturer()
    {
        return super.Manufacturer;
    }

    /**
     * This method returns the return date of the hardware device that was rented.
     */
    public String getdateOfReturn()
    {
        return dateOfReturn;
    }
    /**
     * This method returns the hire date of the hardware device.
     */
    public String getdateOfHire()
    {
        return dateOfHire;
    }
    /**
     * This method returns the advance payment made by the customer.
     */
    public int getdownPayment()
    {
        return downPayment;
    }

   /**
    * This method returns the rental period of the hardware device.
    */
    public int getnumberOfDays()
    {
        return numberOfDays;
    }
    /**
     * This method returns the daily charge of the renting service provied to the customer.
     */
    public int getdailyRate()
    {
        return dailyRate;
    }

   /**
    * This method returns the total renting charge of the hardware device.
    */
    public int gettotalRent()
    {
        return totalRent;
    }

   /**
    * This method returns the avialability status of the hardware device .
    */
    public boolean getonLoan()
    {
        return onLoan;
    }
    
   /**
    * This method assigns the new value to the daily rate.
    */
    public void setDailyRate(int dailyRate)
    {
        this.dailyRate=dailyRate;
    }
   /**
    * This method sets the new value for the down payment.
    */
    public void setDownPayment(int downPayment)
    {
        this.downPayment=downPayment;
    }
    
    /**
     * This void method is used to rent a hardware device that accepts the parameter.
     * This checks whether the Hardware device is available for rent or not. It displays an error message if the device is not available.
     * It calculates the total amount of a renting service for the hardware and again frees the hardware device for rent. 
     */
    public void rentHardwareDevice(String customerName, String dateOfHire, String dateOfReturn, int numberOfDays)
    {
        int newTotalRent=0;
        if (onLoan==true)
        {   
            System.out.println("Sorry the device is on Rent and not available. It will be available on: "+dateOfReturn);
        }
        else
        {
            super.customerName=customerName;
            this.dateOfHire=dateOfHire;
            this.dateOfReturn=dateOfReturn;
            this.numberOfDays=numberOfDays;
            newTotalRent=(numberOfDays*dailyRate);
            onLoan=true;
            totalRent=newTotalRent+totalRent;
            System.out.println(" The device has been successfully rented.Thank You for using our service!!!");
        }
    }
   /**
    * This method makes the hardware device which was previously rented avialable.
    * This method checks the avialability status of the hardware device. 
    * This method shows message if the device is avialable and if the devices is not available, it makes the hardware avialable and displays a suitable message.
    */ 
   
    public void makeHardwareDeviceAvailable()
    {
        if (onLoan==false)
        {
            System.out.println("The device is available");
        }
        else
        {
            totalRent=0;
            customerName="";
            numberOfDays=0;
            dateOfHire="";
            dateOfReturn="";
            onLoan=false;
            System.out.println("THE DEVICE HAS BEEN MADE AVIALABLE");
        }
    }
    
    /**
     * This method displays the description of the device alongwith total rent cost.
     */
    public void DisplayDescription()
    {
        super.DisplayHardwareDevice();
        System.out.println("Total Rent till date is: "+totalRent);
    }
    
   /**
    * This method displays the all details of the hardware device.
    */
    public void DisplayDetails()
    {
       super.DisplayHardwareDevice();
       System.out.println("Down Payment: "+downPayment);
       System.out.println("Daily Rate: "+dailyRate);
       if (onLoan==true)
       {
            System.out.println("Date of Hire: "+dateOfHire);  
            System.out.println("Date of Return: "+dateOfReturn);
            System.out.println("Number of Days: "+numberOfDays);
       }
    }
}