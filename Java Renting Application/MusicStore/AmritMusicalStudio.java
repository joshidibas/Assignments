/**
 * This is a class which creates a generic arraylist of the class RentingInstruments. It has a method to add an instrument to the list of listMusicStudio. It also has a method to remove the instrument from the list. This class calls the method from the class RentingInstruments and can book the instrument for the customer. It also has a method to free the booking of the instrument. There is also a method in this class that lists the instrument which are currently available for renting. Also, a method has been written to search the instrument by its rate.  
 * There is only one attribute in this programme which is of ArrayList type.
 * @author (Dibas Prasad Joshi,ID:15043001) 
 * @version (18th January,2016)
 */
import java.util.*;
//Question no 1
public class AmritMusicalStudio
{
    ArrayList<RentingInstruments>listMusicStudio=new ArrayList<RentingInstruments>();
    //Question no 2
    /** 
     * This method is used to add details in MusicStudio ArrayList.
     * This method does not return any value. 
     */
    public void addMusicStudio (String name,String address,String instrument,double rate)
    {
         RentingInstruments Studio = new RentingInstruments(name,address ,instrument, rate);
        listMusicStudio.add(Studio);
    }
    //Question no 3
    /**
     * This method will remove any instrumen that has been entered in the listMusicStudio Arraylist.
     * This method has one integer type arguement.
     * This method does not return any value.
     * This method also checks the index number input by the user.
     */  
    public void removingRentingInstruments(int index)
    {
        if (index>=0 && index<listMusicStudio.size())
        {
            listMusicStudio.remove(index);
        }
        else
        {
            System.out.println("Sorry!! The number you have entered is not valid. Please enter a valid number");
        }
    }
     //Question no 4
     /**
     * This method will book any of the Instrument that is available for booking in the listMusicStudio Arraylist.
     */
    
    public void  bookinstrument(String cN, String cA, String hD, int d,double dP,int index)
    {
        if (index>=0 && index<listMusicStudio.size())
        {
            RentingInstruments rentinstrument=listMusicStudio.get (index);
            rentinstrument.booking(cN, cA , hD, d, dP);
            listMusicStudio.set (index, rentinstrument);
        }
        else
        {
            System.out.println("Sorry!! The number you have entered is not valid. Please enter a valid number");
        }
    }
    //Question no 5
    /** This is a method for freeing a instrument from the list listMusicStuio. */
    public void freeInstrument(int index)
    {
        if (index>=0 && index<listMusicStudio.size())
        {
            RentingInstruments freeinstrument = listMusicStudio.get(index);
            freeinstrument.freebooking();
        }
        else
        {
            System.out.println(" Sorry!! The number you have entered is not valid. Please enter a valid number ");
        }
    }
    //Question no 6   
        /**
     * This method will check the available status of  all the instrument stored in the MusicStudio Arraylist and it will display it's index number and the description
     * of the company.
     */

    
    public void listinginstrument()
    
        {

        int counter =0;
        
        for(int index=0; index<listMusicStudio.size();index++)
            {
                RentingInstruments  freeinstrument = listMusicStudio.get(index);
                    if( freeinstrument.getAvailableStatus()== true)
                        {
                            freeinstrument.displayDetail(); 
                            System.out.println(" The instrument of " + index + " index is avilable for booking ");
                            
                        }
                    else
                        {
                            System.out.println("Sorry, no instruments are free for booking");
                        }
                
        }
    }
    //Question no 7
    /**
     * This method will check two parameters, Daily rate and name of the instrument. Then it will check all the object stored in the Arraylist.
     * If both Daily rate and name of the instrument is found then it will display the details of the music studio.
     * If the search criteria is invalid it will display an appropriate message.
     * If the instruments are not available then it will display an appropriate message.
     */

    public void searchinstrument(double dailyRate, String instrument)
    {
            int counter=0;
            boolean check =false;
            for (int index=0; index<listMusicStudio.size();index++)
                {
                    RentingInstruments freeinstrument=listMusicStudio.get(index);
                    boolean see= freeinstrument.getAvailableStatus();
                    double Rate= freeinstrument.getDailyRate();
                    String Instrument= freeinstrument.getInstrumentName();
                        if (see==true && Rate<=dailyRate && Instrument==instrument){
                            System.out.println("Your Search has been found.\n Index of "+ counter + " matches search.");
                            freeinstrument.displayDetail();
                            check=true;
                            break;
                        }   
                        else if(!see)
                        {
                            System.out.println("All instruments are rented at the moment");
                        }
                counter++;
            }
            if (!check){
                System.out.println("Search not matched.");
            }
    }
}
