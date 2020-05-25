/**
 * This program is about renting and selling of hardware device that have been listed.
 * @author  (Dibas Prasad Joshi)
 * @version (2016-04-05) 
 * College ID: SITY1c215021 University ID: 13053001
 */
import java.util.*;
import java.awt.Container;
import javax.swing.*;
import java.awt.event.*;
import java.io.*;

/**
 * This is the method for the attributes of the program.
 */
public class HardwareDeviceRental implements ActionListener
{
    
    ArrayList<HardwareDevice> equipment=new ArrayList<>();
    
    private JFrame frame;
    private Container content;
    
    private JLabel Rentlbl,  rentDescriptionlbl, rentManufacturerlbl, downPaymentlbl, dailyRatelbl, rentCustomerlbl, hireDatelbl, returnDatelbl, noOfDayslbl, rentEquipmentNumlbl;
    private JTextField rentDescriptiontxt, rentManufacturertxt, downPaymenttxt, dailyRatetxt, rentCustomertxt, hireDatetxt, returnDatetxt, noOfDaystxt, rentEquipmentNumtxt;
    private JButton btnAddRent, btnReturnGen, btnRent, btnRentClear, btnRentDisplay;
    
    private JLabel Selllbl, sellDescriptionlbl, sellManufacturerlbl, pricelbl,taxlbl, sellCustomerlbl, dateOfSelllbl, discountAmountlbl, sellEquipmentNumlbl;
    private JTextField sellDescriptiontxt, sellManufacturertxt, pricetxt,taxtxt, sellCustomertxt, dateOfSelltxt, sellEquipmentNumtxt;
    private JButton btn_Add_Sell, btn_Sell, btn_Sell_Clear, btn_Sell_Display;
    
    /**
     * This is a method of the class.
     */
    public static void main(String args[])
    {
        new HardwareDeviceRental();
    }
    
    /**
     * This method creates frame of the GUI.
     */
    public HardwareDeviceRental()
    {
        frame=new JFrame("HardwareDeviceRental");
        content=frame.getContentPane();
        content.setLayout(null);
        
        HardwareDeviceRental();
        
        frame.setSize(575,750);
        frame.setVisible(true);
        frame.setResizable(false);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
    }
    
    /**
     * This method contains of the content of the GUI.(Text box, Label and Buttons)
     */
    public void HardwareDeviceRental()
    {
        Rentlbl=new JLabel("Renting System");
        Rentlbl.setBounds(450,180,100,25);
        content.add(Rentlbl);
        
        rentDescriptionlbl=new JLabel("Description");
        rentDescriptionlbl.setBounds(20,20,100,25);
        content.add(rentDescriptionlbl);
        
        rentDescriptiontxt=new JTextField();
        rentDescriptiontxt.setBounds(105,20,320,25);
        content.add(rentDescriptiontxt);
        
        
        
        rentManufacturerlbl=new JLabel("Manufacturer");
        rentManufacturerlbl.setBounds(20,55,100,25);
        content.add(rentManufacturerlbl);
        
        rentManufacturertxt=new JTextField();
        rentManufacturertxt.setBounds(105,55,320,25);
        content.add(rentManufacturertxt);
        
       
        
        dailyRatelbl=new JLabel("Daily Rate");
        dailyRatelbl.setBounds(20,90,100,25);
        content.add(dailyRatelbl);
        
        dailyRatetxt=new JTextField();
        dailyRatetxt.setBounds(105,90,105,25);
        content.add(dailyRatetxt);
        
        downPaymentlbl=new JLabel("Down Payment");
        downPaymentlbl.setBounds(220,90,105,25);
        content.add(downPaymentlbl);
        
        downPaymenttxt=new JTextField();
        downPaymenttxt.setBounds(330,90,105,25);
        content.add(downPaymenttxt);
        
        btnAddRent=new JButton("Add to Rent");
        btnAddRent.setBounds(320,125,105,25);
        content.add(btnAddRent);
        btnAddRent.addActionListener(this);
        
        rentCustomerlbl=new JLabel("Customer");
        rentCustomerlbl.setBounds(20,185,100,25);
        content.add(rentCustomerlbl);
        
        rentCustomertxt=new JTextField();
        rentCustomertxt.setBounds(105,185,320,25);
        content.add(rentCustomertxt);
        
        hireDatelbl=new JLabel("Hire Date");
        hireDatelbl.setBounds(20,220,100,25);
        content.add(hireDatelbl);
        
        hireDatetxt=new JTextField();
        hireDatetxt.setBounds(105,220,105,25);
        content.add(hireDatetxt);
        
        returnDatelbl=new JLabel("Return Date");
        returnDatelbl.setBounds(220,220,100,25);
        content.add(returnDatelbl);
        
        returnDatetxt=new JTextField();
        returnDatetxt.setBounds(320,220,105,25);
        content.add(returnDatetxt);
        
        noOfDayslbl=new JLabel("No. of Days");
        noOfDayslbl.setBounds(20,255,100,25);
        content.add(noOfDayslbl);
        
        noOfDaystxt=new JTextField();
        noOfDaystxt.setBounds(105,255,105,25);
        content.add(noOfDaystxt);
        
        rentEquipmentNumlbl=new JLabel("Equip. No");
        rentEquipmentNumlbl.setBounds(220,255,100,25);
        content.add(rentEquipmentNumlbl);
        
        rentEquipmentNumtxt=new JTextField();
        rentEquipmentNumtxt.setBounds(320,255,105,25);
        content.add(rentEquipmentNumtxt);
        
        btnReturnGen=new JButton("Return");
        btnReturnGen.setBounds(320,290,105,25);
        content.add(btnReturnGen);
        btnReturnGen.addActionListener(this);
        
        btnRent=new JButton("Rent");
        btnRent.setBounds(20,325,105,25);
        content.add(btnRent);
        btnRent.addActionListener(this);
        
        btnRentClear=new JButton("Clear");
        btnRentClear.setBounds(175,325,105,25);
        content.add(btnRentClear);
        btnRentClear.addActionListener(this);
        
        btnRentDisplay=new JButton("Display All");
        btnRentDisplay.setBounds(320,325,105,25);
        content.add(btnRentDisplay);
        btnRentDisplay.addActionListener(this);
        
        Selllbl=new JLabel("Selling system");
        Selllbl.setBounds(450,550,100,25);
        content.add(Selllbl);
        
        sellDescriptionlbl=new JLabel("Description");
        sellDescriptionlbl.setBounds(20,400,100,25);
        content.add(sellDescriptionlbl);
        
        sellDescriptiontxt=new JTextField();
        sellDescriptiontxt.setBounds(105,400,320,25);
        content.add(sellDescriptiontxt);
        
       
        
        sellManufacturerlbl=new JLabel("Manufacturer");
        sellManufacturerlbl.setBounds(20,435,100,25);
        content.add(sellManufacturerlbl);
        
        sellManufacturertxt=new JTextField();
        sellManufacturertxt.setBounds(105,435,320,25);
        content.add(sellManufacturertxt);
        
        pricelbl=new JLabel("Price");
        pricelbl.setBounds(20,470,100,25);
        content.add(pricelbl);
        
        pricetxt=new JTextField();
        pricetxt.setBounds(105,470,105,25);
        content.add(pricetxt);
        
        taxlbl=new JLabel("Tax amount");
        taxlbl.setBounds(220,470,100,25);
        content.add(taxlbl);
        
        taxtxt=new JTextField();
        taxtxt.setBounds(320,470,100,25);
        content.add(taxtxt);
        
        btn_Add_Sell=new JButton("Add to Sell");
        btn_Add_Sell.setBounds(320,510,105,25);
        content.add(btn_Add_Sell);
        btn_Add_Sell.addActionListener(this);
        
        sellCustomerlbl=new JLabel("Customer");
        sellCustomerlbl.setBounds(20,530,100,25);
        content.add(sellCustomerlbl);
        
        sellCustomertxt=new JTextField();
        sellCustomertxt.setBounds(105,550,320,25);
        content.add(sellCustomertxt);
        
        dateOfSelllbl=new JLabel("Date");
        dateOfSelllbl.setBounds(20,605,100,25);
        content.add(dateOfSelllbl);
        
        dateOfSelltxt=new JTextField();
        dateOfSelltxt.setBounds(105,605,105,25);
        content.add(dateOfSelltxt);
      
        sellEquipmentNumlbl=new JLabel("Equip. No.");
        sellEquipmentNumlbl.setBounds(20,640,100,25);
        content.add(sellEquipmentNumlbl);
        
        sellEquipmentNumtxt=new JTextField();
        sellEquipmentNumtxt.setBounds(105,640,105,25);
        content.add(sellEquipmentNumtxt);
        
        btn_Sell=new JButton("Sell");
        btn_Sell.setBounds(20,675,105,25);
        content.add(btn_Sell);
        btn_Sell.addActionListener(this);
        
        btn_Sell_Clear=new JButton("Clear");
        btn_Sell_Clear.setBounds(175,675,105,25);
        content.add(btn_Sell_Clear);
        btn_Sell_Clear.addActionListener(this);
        
        btn_Sell_Display=new JButton("Display All");
        btn_Sell_Display.setBounds(320,675,105,25);
        content.add(btn_Sell_Display);
        btn_Sell_Display.addActionListener(this);  
    }
    
    /**
     * This is a method to rent a Hardware device. This method creates an object "addHaredwareDeviceToRent" and stores the data in the hardware array list. Performing this action inputs
     * values of the description, manufacturer,down payment and daily rate to create a new object of type HardwareDeviceToRent, which becomes added to array list of HardwareDevice. 
     */
    public void addHardwareDeviceToRent()
    {
        try
        {
            String Description=rentDescriptiontxt.getText();
            String Manufacturer=rentManufacturertxt.getText();
           
            int downPayment=Integer.parseInt(downPaymenttxt.getText());
            int dailyRate=Integer.parseInt(dailyRatetxt.getText());
            
            HardwareDeviceToRent HardwareToRent=new HardwareDeviceToRent( Description, Manufacturer, downPayment, dailyRate);
            equipment.add(HardwareToRent);
            
            JOptionPane.showMessageDialog(frame, "Successfully added GeneratorToRent","Information", JOptionPane.INFORMATION_MESSAGE);
        }
        catch(NumberFormatException aE)
        {
            JOptionPane.showMessageDialog(frame, aE.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    /**
     * This is a method to sell a hardware device. This method creates a object "addHardwareDeviceToSell" and stores the data in the generator array list.  Performing this action inputs
     * values of the description, manufacturer,down price and tax amount are used to create a new object of type HardwareDeviceToSell, which becomes added to the array list of Generators.  
     */
    public void addHardwareDeviceToSell()
    {
        try
        {
            String Description=sellDescriptiontxt.getText();
            String Manufacturer=sellManufacturertxt.getText();
            
            int price=Integer.parseInt(pricetxt.getText());
            int tax=Integer.parseInt(taxtxt.getText());
            HardwareDeviceToSell HardwareToSell=new HardwareDeviceToSell(Description,  Manufacturer, price,tax);
            equipment.add(HardwareToSell);
            
            JOptionPane.showMessageDialog(frame, "Sucessfully added GeneratorToSell", "Information", JOptionPane.INFORMATION_MESSAGE);
        }
        catch(NumberFormatException aE)
        {
            JOptionPane.showMessageDialog(frame, aE.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    /**
     * This is a method to rent a Hardware device. This method creates an object "rentHardwareDevice". The device number, customer name, date of hire, date of return and the number of days are entered into the GUI. When button is clicked, the input value of the device number is checked. 
     * If a suitable value has been entered, it is used to get the appropriate device from the array list of hardwares. The method to rent out the Hardware device in the HardwareToRent class is called afterwards. 
     */
    public void rentHardwareDevice()
    {
        try
        {
            String cusName=rentCustomertxt.getText();
            String dateOfHire=hireDatetxt.getText();
            String dateOfReturn=returnDatetxt.getText();
            int numberOfDays=Integer.parseInt(noOfDaystxt.getText());
            int equipmentNum=Integer.parseInt(rentEquipmentNumtxt.getText());
            
            if((equipmentNum>equipment.size()||equipmentNum<0))
            {
                JOptionPane.showMessageDialog(frame, "Invalid Number", "Title", JOptionPane.ERROR_MESSAGE);
            }
            else
            {
                HardwareDeviceToRent rent=(HardwareDeviceToRent) equipment.get(equipmentNum);
                rent.rentHardwareDevice(cusName, dateOfHire, dateOfReturn, numberOfDays);
                JOptionPane.showMessageDialog(frame, "Sucessfully rented the device","Information", JOptionPane.INFORMATION_MESSAGE);
            }
        }
        catch(NumberFormatException aE)
        {
            JOptionPane.showMessageDialog(frame, "Please fill correctly!!", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    /**
     * This is a method to return the rented device. This method creates an object "returnHardwareDevice". The device number is entered into the GUI. When this button is pressed, the input value of the device number is checked. 
     * If a suitable value has been entered, it is used to get the appropriate device from the array list of Generators. The method to return an hardware in the HardwareDEviceToRent class is called afterwards.
     */
    public void returnHardwareDevice()
    {
        try
        {
            Integer equipmentNum=Integer.parseInt(rentEquipmentNumtxt.getText());
            if(equipmentNum<equipment.size())
            {
                HardwareDeviceToRent returnHardware=(HardwareDeviceToRent) equipment.get(equipmentNum);
                returnHardware.makeHardwareDeviceAvailable();
                JOptionPane.showMessageDialog(frame, "Successfully returned the Hardware Device","Information", JOptionPane.INFORMATION_MESSAGE);
            }
            else
            {
                JOptionPane.showMessageDialog(frame, "Invalid number", "title", JOptionPane.ERROR_MESSAGE);
            }
        }
        catch(NumberFormatException aE)
        {
            JOptionPane.showMessageDialog(frame,"Error", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    /**
     * This is a method to sell a hardware device. This method creates an object "sellHardwareDevice". The Generator number, the customer name, sell date and tax amount are entered into the GUI. When this button is clicked, the input value of the device number is checked. 
     * If a suitable value has been entered, it is used to get the appropriate device from the array list of hardwares. The method to sell a hardware device in the HardwareDeviceToSell  class is then called.
     */
    public void sellHardwareDevice()
    {
        try
        {
            Integer equipmentNum=Integer.parseInt(sellEquipmentNumtxt.getText());
            String cusName=sellCustomertxt.getText();
            String dateOfSell=dateOfSelltxt.getText();
         
            if((equipmentNum>equipment.size() || equipmentNum<0))
            {
                JOptionPane.showMessageDialog(frame, "Invalid number", "Title", JOptionPane.ERROR_MESSAGE);
            }
            else
            {
                HardwareDeviceToSell sell=(HardwareDeviceToSell) equipment.get(equipmentNum);
                sell.sellHardwareDevice(cusName, dateOfSell);
                JOptionPane.showMessageDialog(frame, "Device successfully sold", "Information", JOptionPane.INFORMATION_MESSAGE);
            }   
        }
        catch(NumberFormatException aE)
        {
            JOptionPane.showMessageDialog(frame, "Error", "Error", JOptionPane.ERROR_MESSAGE);
        }
        catch(ClassCastException aEx)
        {
            JOptionPane.showMessageDialog(frame, "Device successfully sold", "Information", JOptionPane.INFORMATION_MESSAGE);
        }
    }
    
    /**
     * This is a method to display all the information of the Hardware devices to rent and sell. This method creates an object "displayAll". When this button is clicked, the information relating to properties is displayed
     */
    public void displayAll()
    {
        try
        {
            int i=0;
            for(HardwareDevice equip:equipment)
            {
                System.out.println("Equipment Number : "+i);
                i++;
                equip.DisplayHardwareDevice();
            }
        }
        catch(NumberFormatException aE)
        {
            JOptionPane.showMessageDialog(frame, aE.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    /**
     * This is a method to clear the entered content of the box of renting hardware devices. This method creates an object "clearRent". When this button is pressed, the text is cleared from all text fields
     */
    public void clearRent()
    {
        this.rentDescriptiontxt.setText("");
        this.rentManufacturertxt.setText("");
        this.downPaymenttxt.setText("");
        this.dailyRatetxt.setText("");
        this.rentCustomertxt.setText(""); 
        this.hireDatetxt.setText(""); 
        this.returnDatetxt.setText("");
        this.noOfDaystxt.setText("");
        this.rentEquipmentNumtxt.setText("");
    }
    
    /**
     * This is a method to clear the entered content of the text fields of selling hardwre devices. This method creates an object "clearSell". When this button is pressed, the text is cleared from all text fields
     */
    public void clearSell()
    {
        this.sellDescriptiontxt.setText("");
        this.sellManufacturertxt.setText("");
        this.pricetxt.setText("");
        this.taxtxt.setText("");
        this.sellCustomertxt.setText(""); 
        this.dateOfSelltxt.setText("");
        this.sellEquipmentNumtxt.setText("");
    }
    
    /**
     * This is a method for action listener and action handling. This method is used for the buttons. It makes all the buttons functional.
     */
     public void actionPerformed(ActionEvent aE)
    {
        String command=aE.getActionCommand();
        if(command=="Add to Rent")
        {
            addHardwareDeviceToRent();
        }
        if(command=="Rent")
        {
            rentHardwareDevice();
        }
        if(command=="Return")
        {
            returnHardwareDevice();
        }
        if(aE.getSource()==btnRentClear)
        {
            clearRent();
        }
        if(command=="Display All")
        {
            displayAll();
        }
        if(command=="Add to Sell")
        {
            addHardwareDeviceToSell();
        }
        if(command=="Sell")
        {
            sellHardwareDevice();
        }
        if(aE.getSource()==btn_Sell_Clear)
        {
            clearSell();
        }
    }
}