using Microsoft.VisualBasic.FileIO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;




namespace Coursework.RestaurantSystem
{
    public partial class Form1 : Form
    {
        BubbleSorting sorting = new BubbleSorting();
        DataTable dt = new DataTable();
        private bool status = false;
        private int row = 0;
        public Form1()
        {
            InitializeComponent();
           
        }
        //Adding into GridView(Menu)
        private void button_Add_Click(object sender, EventArgs e)
        {
            this.button_Add.Text = "Add Item";
            if (textBox_Name.Text != "" && comboBox_Category.Text != "" & textBox_Price.Text != "") { 

            string name = textBox_Name.Text;
            string desc = comboBox_Category.Text;
            string price = textBox_Price.Text;
            if (this.status)
            {
                GridView.Rows[this.row].Cells[0].Value = name;
                GridView.Rows[this.row].Cells[1].Value = desc;
                GridView.Rows[this.row].Cells[2].Value = price;
                this.button_Add.Text = "Add Item";
                GridView.Rows[this.row].Selected = true;
                MessageBox.Show("Record has been updated");
                textBox_Name.Text = "";
                comboBox_Category.Text = "";
                textBox_Price.Text = "";
                this.status = false;
                this.row = 0;
            }
            else
            {
                int count = GridView.Rows.Count - 1;
                GridView.Rows.Add();
                GridView.Rows[count].Cells[0].Value = name;
                GridView.Rows[count].Cells[1].Value = desc;
                GridView.Rows[count].Cells[2].Value = price;

                GridView.Rows[count].Selected = true;
                MessageBox.Show("Record has been saved");
                textBox_Name.Text = "";
                comboBox_Category.Text = "";
                textBox_Price.Text = "";
                this.status = false;
                this.row = 0;
            

            }
            }
            else
            {
                MessageBox.Show("Please Enter Value for all feilds");
            }
        }
        //Delete function for Datagrid
        private void button_Delete_Click(object sender, EventArgs e)
        {
            int selectedRow = GridView.CurrentCell.RowIndex;
            if (selectedRow >= 0)
            {
                GridView.Rows.RemoveAt(selectedRow);
                MessageBox.Show("Record has been deleted");
            }
        }
        //Selecting content of GridView
        private void GridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string name = Convert.ToString(GridView.Rows[e.RowIndex].Cells[0].Value);
            string desc = Convert.ToString(GridView.Rows[e.RowIndex].Cells[1].Value);
            string price = Convert.ToString(GridView.Rows[e.RowIndex].Cells[2].Value);
            if (name != "" && desc.Length > 0 && price != "" && price.Length > 0 && desc != "" && desc.Length > 0)
            {
                this.row = e.RowIndex;
                this.status = true;
                //Update DataGrid info
                textBox_Name.Text = name;
                textBox_Price.Text = price;
                comboBox_Category.Text = desc;
                this.button_Add.Text = "Update";
                //Pass Into Sell_item
                textBox_sname.Text = name;
                textBox_sprice.Text = price;
                textBox_scategory.Text = desc;
                this.button_sell.Text = "Sell";


            }
            else 
            {
                this.button_Add.Text = "Add Item";
            }
            
           

        }
        //Importing Items on click
        private void button_import_Click(object sender, EventArgs e)
        {
            string val = textBox_Location.Text;
            if (val.Trim() != "")
            {
                importCSVFile(val);
                textBox_Location.Text = "";
            }
            else
            {
                MessageBox.Show("Please select a file location", "Import CSV File", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        //Function to import csv file
        private void importCSVFile(string filepath, bool firstrow = true) //import
        {
            try
            {

                int count = GridView.Rows.Count - 1;
                TextFieldParser csvreader = new TextFieldParser(filepath);

                csvreader.SetDelimiters(new string[] { "," });
                while (!csvreader.EndOfData)
                {
                    string[] fielddata = csvreader.ReadFields();
                    GridView.Rows.Add();
                    for (int i = 0; i < fielddata.Length; i++)
                    {
                        GridView.Rows[count].Cells[i].Value = fielddata[i];

                    }
                    count++;
                }

            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message, "Import CSV File", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
        }
      
        //Browsing direcory and retrieving filelocation
        private void button_Browse_Click(object sender, EventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog();

            dialog.Filter = "Files(*.txt, *.csv)|*.txt;*.csv|All Files (*.*) |*.*";

            DialogResult result = dialog.ShowDialog();
            if (result == DialogResult.OK)
            {
                textBox_Location.Text = dialog.FileName;
            }
        }
        //Calculate total amount in sell items
        private void button_total_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(textBox_sprice.Text) && !string.IsNullOrEmpty(textBox_quantity.Text))
                textBox_total.Text = (Convert.ToDouble(textBox_sprice.Text) * Convert.ToDouble(textBox_quantity.Text)).ToString();
        }
        //Adding into GridView2
        private void button_sell_Click(object sender, EventArgs e)
        {
            if (textBox_sname.Text != "" && textBox_scategory.Text != "" && textBox_sprice.Text != "" && textBox_quantity.Text != "" & textBox_total.Text != "")
            {
                string sname = textBox_sname.Text;
                string sdesc = textBox_scategory.Text;
                string tprice = textBox_total.Text;
                string quantity = textBox_quantity.Text;
                if (this.status)
                {

                    int count = GridView2.Rows.Count - 1;
                    GridView2.Rows.Add();
                    GridView2.Rows[count].Cells[0].Value = sname;
                    GridView2.Rows[count].Cells[1].Value = sdesc;
                    GridView2.Rows[count].Cells[2].Value = quantity;
                    GridView2.Rows[count].Cells[3].Value = tprice;

                    GridView2.Rows[count].Selected = true;
                    MessageBox.Show("Order has been successfully recorded");
                    textBox_sname.Text = "";
                    textBox_scategory.Text = "";
                    textBox_quantity.Text = "";
                    textBox_sprice.Text = "";
                    textBox_total.Text = "";
                    this.status = false;
                    this.row = 0;
                }
                else
                {


                    GridView2.Rows[this.row].Cells[0].Value = sname;
                    GridView2.Rows[this.row].Cells[1].Value = sdesc;
                    GridView2.Rows[this.row].Cells[2].Value = quantity;
                    GridView2.Rows[this.row].Cells[3].Value = tprice;

                    GridView2.Rows[this.row].Selected = true;
                    MessageBox.Show("Record has been updated");
                }
            }
            else 
            {
                MessageBox.Show("Please Enter all feilds");
            }
          
            

            
        }
        //Delete function for Datagrid2
        private void button_sdelete_Click(object sender, EventArgs e)
        {
            int selectedRow = GridView2.CurrentCell.RowIndex;
            if (selectedRow >= 0)
            {
                GridView2.Rows.RemoveAt(selectedRow);
            }
        }

        private void Add_panel_Paint(object sender, PaintEventArgs e)
        {

        }
        //Sorting Functions
        private void button_SortByName_Click(object sender, EventArgs e)
        {
            GridView.Sort(GridView.Columns[0], ListSortDirection.Ascending);
        }

        private void button_SortByDesc_Click(object sender, EventArgs e)
        {
            GridView.Sort(GridView.Columns[1], ListSortDirection.Ascending);
        }

        private void button_SortByPrice_Click(object sender, EventArgs e)
        {
            sorting.SortByPrice(GridView);
        }

        //Validation for Price 
        private void textBox_Price_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!Char.IsDigit(ch) && ch != 8)
            {
                e.Handled = true;
                MessageBox.Show("Enter appropriate value");
            }
        }

        private void textBox_quantity_TextChanged(object sender, EventArgs e)
        {
          
        }

        

        private void textBox_sprice_TextChanged(object sender, EventArgs e)
        {
           
        }
        //Validation for price in sell panel 
        private void textBox_sprice_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!Char.IsDigit(ch) && ch != 8)
            {
                e.Handled = true;
            }
        }
        //Validation for Quantity
        private void textBox_quantity_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!Char.IsDigit(ch) && ch != 8)
            {
                e.Handled = true;
            }
        }
        
        //Generate report in pie chart
        private void button_Report_Click(object sender, EventArgs e)
        {
            ChartReport();//Views the pie chart
        }
        private void ChartReport()//Creates pie chart
                {
            chart_salesReport.Series["series_Sales"].Points.Clear();
            List<int> LunchListPrice = new List<int>();
            List<int> SnackListPrice = new List<int>();
            List<int> DrinkListPrice = new List<int>();
            List<int> BreakfastListPrice = new List<int>();

            foreach (DataGridViewRow row in GridView2.Rows)
            {
                string CategorySales = Convert.ToString(row.Cells[dataGridViewTextBoxColumn2.Index].Value);

                if (CategorySales.Equals("Lunch"))
                {
                    int price = Convert.ToInt32(row.Cells[dataGridViewTextBoxColumn3.Index].Value);
                    LunchListPrice.Add(price);
                }
                else if (CategorySales.Equals("Snack"))
                {
                    int price = Convert.ToInt32(row.Cells[dataGridViewTextBoxColumn3.Index].Value);
                    SnackListPrice.Add(price);
                }
                else if (CategorySales.Equals("Drink"))
                {
                    int price = Convert.ToInt32(row.Cells[dataGridViewTextBoxColumn3.Index].Value);
                    DrinkListPrice.Add(price);
                }
                else if (CategorySales.Equals("Breakfast"))
                {
                    int price = Convert.ToInt32(row.Cells[dataGridViewTextBoxColumn3.Index].Value);
                    BreakfastListPrice.Add(price);
                }
            }
            int ListLunch = getSale(LunchListPrice);
            int ListSnack = getSale(SnackListPrice);
            int ListDrink = getSale(DrinkListPrice);
            int ListBreakfast = getSale(BreakfastListPrice);

            chart_salesReport.Series["series_Sales"].Points.Add(ListLunch);
            chart_salesReport.Series["series_Sales"].Points[0].Color = Color.YellowGreen;
            chart_salesReport.Series["series_Sales"].Points[0].LegendText = "Lunch";
            chart_salesReport.Series["series_Sales"].Points[0].Label = Convert.ToString(ListLunch);

            chart_salesReport.Series["series_Sales"].Points.Add(ListDrink);
            chart_salesReport.Series["series_Sales"].Points[1].Color = Color.White;
            chart_salesReport.Series["series_Sales"].Points[1].LegendText = "Drink";
            chart_salesReport.Series["series_Sales"].Points[1].Label = Convert.ToString(ListDrink);

            chart_salesReport.Series["series_Sales"].Points.Add(ListBreakfast);
            chart_salesReport.Series["series_Sales"].Points[2].Color = Color.Red;
            chart_salesReport.Series["series_Sales"].Points[2].LegendText = "BreakFast";
            chart_salesReport.Series["series_Sales"].Points[2].Label = Convert.ToString(ListBreakfast);

            chart_salesReport.Series["series_Sales"].Points.Add(ListSnack);
            chart_salesReport.Series["series_Sales"].Points[3].Color = Color.Blue;
            chart_salesReport.Series["series_Sales"].Points[3].LegendText = "Snack";
            chart_salesReport.Series["series_Sales"].Points[3].Label = Convert.ToString(ListSnack);

           
            MessageBox.Show("Report Created", "Create Report", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }
        //Calculates values for pie chart
        public int getSale(List<int> PriceList)
        {
            int totalSale = 0;
            foreach (int item in PriceList)
            {
                totalSale = item + totalSale;
            }
            return totalSale;
        }
    

       

    }
}
