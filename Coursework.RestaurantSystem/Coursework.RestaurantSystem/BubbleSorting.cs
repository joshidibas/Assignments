using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Coursework.RestaurantSystem
{

    public class BubbleSorting
    {
        public void SortByPrice(DataGridView dataGridViewItems)
        {
            List<double> item_prices = new List<double>();
            foreach (DataGridViewRow row in dataGridViewItems.Rows)
            {
                double item_price = Convert.ToDouble(row.Cells[2].Value);
                item_prices.Add(item_price);
                {
                    for (int a = 0; a < item_prices.Count - 1; a++)
                    {
                        for (int b = 1; b < item_prices.Count - 1; b++)
                        {
                            if (item_prices[b] < item_prices[b - 1])
                            {
                                double temp = item_prices[b - 1];
                                item_prices[b - 1] = item_prices[b];
                                item_prices[b] = temp;
                                List<Object> row0 = new List<Object>();
                                List<Object> row1 = new List<Object>();
                                for (int c = 0; c < dataGridViewItems.ColumnCount; c++)
                                {
                                    Object item0 = dataGridViewItems.Rows[b-1].Cells[c].Value;
                                    row0.Add(item0);
                                    Object item1 = dataGridViewItems.Rows[b].Cells[c].Value;
                                    row1.Add(item1);
                                    dataGridViewItems.Rows[b - 1].Cells[c].Value = row1[c];
                                    dataGridViewItems.Rows[b].Cells[c].Value = row0[c];


                                }
                            }
                        }
                    }
                }
            }
        }
    }

    
}
