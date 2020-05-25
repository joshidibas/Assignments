namespace Coursework.RestaurantSystem
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea2 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend2 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series2 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Title title2 = new System.Windows.Forms.DataVisualization.Charting.Title();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.Add_panel = new System.Windows.Forms.Panel();
            this.label_Menu = new System.Windows.Forms.Label();
            this.comboBox_Category = new System.Windows.Forms.ComboBox();
            this.button_Delete = new System.Windows.Forms.Button();
            this.button_Add = new System.Windows.Forms.Button();
            this.textBox_Price = new System.Windows.Forms.TextBox();
            this.textBox_Name = new System.Windows.Forms.TextBox();
            this.label_Price = new System.Windows.Forms.Label();
            this.label_Category = new System.Windows.Forms.Label();
            this.Name_label = new System.Windows.Forms.Label();
            this.button_import = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label_Sell = new System.Windows.Forms.Label();
            this.button_sdelete = new System.Windows.Forms.Button();
            this.button_sell = new System.Windows.Forms.Button();
            this.button_total = new System.Windows.Forms.Button();
            this.textBox_scategory = new System.Windows.Forms.TextBox();
            this.textBox_total = new System.Windows.Forms.TextBox();
            this.textBox_quantity = new System.Windows.Forms.TextBox();
            this.textBox_sprice = new System.Windows.Forms.TextBox();
            this.textBox_sname = new System.Windows.Forms.TextBox();
            this.label_quantity = new System.Windows.Forms.Label();
            this.label_sprice = new System.Windows.Forms.Label();
            this.label_scategory = new System.Windows.Forms.Label();
            this.label_sname = new System.Windows.Forms.Label();
            this.GridView = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GridView2 = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.textBox_Location = new System.Windows.Forms.TextBox();
            this.button_Browse = new System.Windows.Forms.Button();
            this.label_Sort = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.button_Report = new System.Windows.Forms.Button();
            this.chart_salesReport = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.label1 = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.panel4 = new System.Windows.Forms.Panel();
            this.button_SortByPrice = new System.Windows.Forms.Button();
            this.button_SortByDesc = new System.Windows.Forms.Button();
            this.button_SortByName = new System.Windows.Forms.Button();
            this.eventLog1 = new System.Diagnostics.EventLog();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.Add_panel.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridView2)).BeginInit();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chart_salesReport)).BeginInit();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.eventLog1)).BeginInit();
            this.SuspendLayout();
            // 
            // Add_panel
            // 
            this.Add_panel.BackColor = System.Drawing.Color.Moccasin;
            this.Add_panel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Add_panel.Controls.Add(this.label_Menu);
            this.Add_panel.Controls.Add(this.comboBox_Category);
            this.Add_panel.Controls.Add(this.button_Delete);
            this.Add_panel.Controls.Add(this.button_Add);
            this.Add_panel.Controls.Add(this.textBox_Price);
            this.Add_panel.Controls.Add(this.textBox_Name);
            this.Add_panel.Controls.Add(this.label_Price);
            this.Add_panel.Controls.Add(this.label_Category);
            this.Add_panel.Controls.Add(this.Name_label);
            this.Add_panel.Location = new System.Drawing.Point(404, 6);
            this.Add_panel.Name = "Add_panel";
            this.Add_panel.Size = new System.Drawing.Size(417, 266);
            this.Add_panel.TabIndex = 0;
            this.Add_panel.Paint += new System.Windows.Forms.PaintEventHandler(this.Add_panel_Paint);
            // 
            // label_Menu
            // 
            this.label_Menu.BackColor = System.Drawing.SystemColors.Info;
            this.label_Menu.Font = new System.Drawing.Font("Century Schoolbook", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_Menu.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(62)))), ((int)(((byte)(120)))), ((int)(((byte)(138)))));
            this.label_Menu.Location = new System.Drawing.Point(0, 14);
            this.label_Menu.Name = "label_Menu";
            this.label_Menu.Size = new System.Drawing.Size(417, 31);
            this.label_Menu.TabIndex = 4;
            this.label_Menu.Text = "Add Menu Items";
            // 
            // comboBox_Category
            // 
            this.comboBox_Category.BackColor = System.Drawing.Color.SeaShell;
            this.comboBox_Category.FormattingEnabled = true;
            this.comboBox_Category.Items.AddRange(new object[] {
            "Lunch",
            "Drink",
            "Snack",
            "Breakfast"});
            this.comboBox_Category.Location = new System.Drawing.Point(180, 99);
            this.comboBox_Category.Name = "comboBox_Category";
            this.comboBox_Category.Size = new System.Drawing.Size(208, 31);
            this.comboBox_Category.TabIndex = 3;
            // 
            // button_Delete
            // 
            this.button_Delete.Location = new System.Drawing.Point(242, 199);
            this.button_Delete.Name = "button_Delete";
            this.button_Delete.Size = new System.Drawing.Size(126, 49);
            this.button_Delete.TabIndex = 2;
            this.button_Delete.Text = "Delete";
            this.button_Delete.UseVisualStyleBackColor = true;
            this.button_Delete.Click += new System.EventHandler(this.button_Delete_Click);
            // 
            // button_Add
            // 
            this.button_Add.Location = new System.Drawing.Point(58, 199);
            this.button_Add.Name = "button_Add";
            this.button_Add.Size = new System.Drawing.Size(119, 49);
            this.button_Add.TabIndex = 2;
            this.button_Add.Text = "Add Item";
            this.button_Add.UseVisualStyleBackColor = true;
            this.button_Add.Click += new System.EventHandler(this.button_Add_Click);
            // 
            // textBox_Price
            // 
            this.textBox_Price.BackColor = System.Drawing.Color.SeaShell;
            this.textBox_Price.Location = new System.Drawing.Point(180, 133);
            this.textBox_Price.Name = "textBox_Price";
            this.textBox_Price.Size = new System.Drawing.Size(208, 32);
            this.textBox_Price.TabIndex = 1;
            this.textBox_Price.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.textBox_Price_KeyPress);
            // 
            // textBox_Name
            // 
            this.textBox_Name.BackColor = System.Drawing.Color.SeaShell;
            this.textBox_Name.Location = new System.Drawing.Point(180, 64);
            this.textBox_Name.Name = "textBox_Name";
            this.textBox_Name.Size = new System.Drawing.Size(208, 32);
            this.textBox_Name.TabIndex = 1;
            // 
            // label_Price
            // 
            this.label_Price.AutoSize = true;
            this.label_Price.Location = new System.Drawing.Point(18, 135);
            this.label_Price.Name = "label_Price";
            this.label_Price.Size = new System.Drawing.Size(68, 23);
            this.label_Price.TabIndex = 0;
            this.label_Price.Text = "Price :";
            // 
            // label_Category
            // 
            this.label_Category.AutoSize = true;
            this.label_Category.Location = new System.Drawing.Point(18, 104);
            this.label_Category.Name = "label_Category";
            this.label_Category.Size = new System.Drawing.Size(164, 23);
            this.label_Category.TabIndex = 0;
            this.label_Category.Text = "Item Category :";
            // 
            // Name_label
            // 
            this.Name_label.AutoSize = true;
            this.Name_label.Location = new System.Drawing.Point(18, 73);
            this.Name_label.Name = "Name_label";
            this.Name_label.Size = new System.Drawing.Size(132, 23);
            this.Name_label.TabIndex = 0;
            this.Name_label.Text = "Item Name :";
            // 
            // button_import
            // 
            this.button_import.Location = new System.Drawing.Point(241, 97);
            this.button_import.Name = "button_import";
            this.button_import.Size = new System.Drawing.Size(126, 40);
            this.button_import.TabIndex = 2;
            this.button_import.Text = "Import";
            this.button_import.UseVisualStyleBackColor = true;
            this.button_import.Click += new System.EventHandler(this.button_import_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Khaki;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.label_Sell);
            this.panel1.Controls.Add(this.button_sdelete);
            this.panel1.Controls.Add(this.button_sell);
            this.panel1.Controls.Add(this.button_total);
            this.panel1.Controls.Add(this.textBox_scategory);
            this.panel1.Controls.Add(this.textBox_total);
            this.panel1.Controls.Add(this.textBox_quantity);
            this.panel1.Controls.Add(this.textBox_sprice);
            this.panel1.Controls.Add(this.textBox_sname);
            this.panel1.Controls.Add(this.label_quantity);
            this.panel1.Controls.Add(this.label_sprice);
            this.panel1.Controls.Add(this.label_scategory);
            this.panel1.Controls.Add(this.label_sname);
            this.panel1.Location = new System.Drawing.Point(405, 432);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(417, 332);
            this.panel1.TabIndex = 0;
            // 
            // label_Sell
            // 
            this.label_Sell.BackColor = System.Drawing.SystemColors.Info;
            this.label_Sell.Font = new System.Drawing.Font("Century Schoolbook", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_Sell.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(62)))), ((int)(((byte)(120)))), ((int)(((byte)(138)))));
            this.label_Sell.Location = new System.Drawing.Point(0, 18);
            this.label_Sell.Name = "label_Sell";
            this.label_Sell.Size = new System.Drawing.Size(417, 30);
            this.label_Sell.TabIndex = 4;
            this.label_Sell.Text = "Sell Items";
            // 
            // button_sdelete
            // 
            this.button_sdelete.Location = new System.Drawing.Point(241, 263);
            this.button_sdelete.Name = "button_sdelete";
            this.button_sdelete.Size = new System.Drawing.Size(126, 49);
            this.button_sdelete.TabIndex = 2;
            this.button_sdelete.Text = "Delete";
            this.button_sdelete.UseVisualStyleBackColor = true;
            this.button_sdelete.Click += new System.EventHandler(this.button_sdelete_Click);
            // 
            // button_sell
            // 
            this.button_sell.Location = new System.Drawing.Point(57, 263);
            this.button_sell.Name = "button_sell";
            this.button_sell.Size = new System.Drawing.Size(119, 49);
            this.button_sell.TabIndex = 2;
            this.button_sell.Text = "Sell item";
            this.button_sell.UseVisualStyleBackColor = true;
            this.button_sell.Click += new System.EventHandler(this.button_sell_Click);
            // 
            // button_total
            // 
            this.button_total.Location = new System.Drawing.Point(18, 218);
            this.button_total.Name = "button_total";
            this.button_total.Size = new System.Drawing.Size(122, 32);
            this.button_total.TabIndex = 2;
            this.button_total.Text = "Total ";
            this.button_total.UseVisualStyleBackColor = true;
            this.button_total.Click += new System.EventHandler(this.button_total_Click);
            // 
            // textBox_scategory
            // 
            this.textBox_scategory.BackColor = System.Drawing.Color.FloralWhite;
            this.textBox_scategory.Location = new System.Drawing.Point(180, 101);
            this.textBox_scategory.Name = "textBox_scategory";
            this.textBox_scategory.Size = new System.Drawing.Size(208, 32);
            this.textBox_scategory.TabIndex = 1;
            // 
            // textBox_total
            // 
            this.textBox_total.BackColor = System.Drawing.Color.FloralWhite;
            this.textBox_total.Location = new System.Drawing.Point(180, 218);
            this.textBox_total.Name = "textBox_total";
            this.textBox_total.ReadOnly = true;
            this.textBox_total.Size = new System.Drawing.Size(208, 32);
            this.textBox_total.TabIndex = 1;
            // 
            // textBox_quantity
            // 
            this.textBox_quantity.BackColor = System.Drawing.Color.FloralWhite;
            this.textBox_quantity.Location = new System.Drawing.Point(180, 179);
            this.textBox_quantity.Name = "textBox_quantity";
            this.textBox_quantity.Size = new System.Drawing.Size(208, 32);
            this.textBox_quantity.TabIndex = 1;
            this.textBox_quantity.TextChanged += new System.EventHandler(this.textBox_quantity_TextChanged);
            this.textBox_quantity.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.textBox_quantity_KeyPress);
            // 
            // textBox_sprice
            // 
            this.textBox_sprice.BackColor = System.Drawing.Color.FloralWhite;
            this.textBox_sprice.Location = new System.Drawing.Point(180, 140);
            this.textBox_sprice.Name = "textBox_sprice";
            this.textBox_sprice.Size = new System.Drawing.Size(208, 32);
            this.textBox_sprice.TabIndex = 1;
            this.textBox_sprice.TextChanged += new System.EventHandler(this.textBox_sprice_TextChanged);
            this.textBox_sprice.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.textBox_sprice_KeyPress);
            // 
            // textBox_sname
            // 
            this.textBox_sname.BackColor = System.Drawing.Color.FloralWhite;
            this.textBox_sname.Location = new System.Drawing.Point(180, 63);
            this.textBox_sname.Name = "textBox_sname";
            this.textBox_sname.Size = new System.Drawing.Size(208, 32);
            this.textBox_sname.TabIndex = 1;
            // 
            // label_quantity
            // 
            this.label_quantity.AutoSize = true;
            this.label_quantity.Location = new System.Drawing.Point(18, 182);
            this.label_quantity.Name = "label_quantity";
            this.label_quantity.Size = new System.Drawing.Size(104, 23);
            this.label_quantity.TabIndex = 0;
            this.label_quantity.Text = "Quantity :";
            // 
            // label_sprice
            // 
            this.label_sprice.AutoSize = true;
            this.label_sprice.Location = new System.Drawing.Point(18, 143);
            this.label_sprice.Name = "label_sprice";
            this.label_sprice.Size = new System.Drawing.Size(68, 23);
            this.label_sprice.TabIndex = 0;
            this.label_sprice.Text = "Price :";
            // 
            // label_scategory
            // 
            this.label_scategory.AutoSize = true;
            this.label_scategory.Location = new System.Drawing.Point(18, 106);
            this.label_scategory.Name = "label_scategory";
            this.label_scategory.Size = new System.Drawing.Size(158, 23);
            this.label_scategory.TabIndex = 0;
            this.label_scategory.Text = "Item Category:";
            // 
            // label_sname
            // 
            this.label_sname.AutoSize = true;
            this.label_sname.Location = new System.Drawing.Point(18, 70);
            this.label_sname.Name = "label_sname";
            this.label_sname.Size = new System.Drawing.Size(132, 23);
            this.label_sname.TabIndex = 0;
            this.label_sname.Text = "Item Name :";
            // 
            // GridView
            // 
            this.GridView.BackgroundColor = System.Drawing.SystemColors.GradientInactiveCaption;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.MistyRose;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.GridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3});
            this.GridView.GridColor = System.Drawing.Color.Firebrick;
            this.GridView.Location = new System.Drawing.Point(826, 46);
            this.GridView.Name = "GridView";
            this.GridView.RowTemplate.Height = 24;
            this.GridView.Size = new System.Drawing.Size(614, 374);
            this.GridView.TabIndex = 1;
            this.GridView.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridView_CellContentClick);
            // 
            // Column1
            // 
            this.Column1.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Column1.HeaderText = "Item Name";
            this.Column1.Name = "Column1";
            // 
            // Column2
            // 
            this.Column2.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Column2.HeaderText = "Description";
            this.Column2.Name = "Column2";
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Price";
            this.Column3.Name = "Column3";
            // 
            // GridView2
            // 
            this.GridView2.BackgroundColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.GridView2.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.GridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridView2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.Column4,
            this.dataGridViewTextBoxColumn3});
            this.GridView2.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnEnter;
            this.GridView2.GridColor = System.Drawing.Color.Firebrick;
            this.GridView2.Location = new System.Drawing.Point(826, 431);
            this.GridView2.Name = "GridView2";
            this.GridView2.RowTemplate.Height = 24;
            this.GridView2.Size = new System.Drawing.Size(614, 333);
            this.GridView2.TabIndex = 1;
            this.GridView2.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridView_CellContentClick);
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewTextBoxColumn1.HeaderText = "Item Name";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewTextBoxColumn2.HeaderText = "Description";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            // 
            // Column4
            // 
            this.Column4.HeaderText = "Quantity";
            this.Column4.Name = "Column4";
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.HeaderText = "Price";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            // 
            // textBox_Location
            // 
            this.textBox_Location.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.textBox_Location.Location = new System.Drawing.Point(18, 59);
            this.textBox_Location.Name = "textBox_Location";
            this.textBox_Location.Size = new System.Drawing.Size(369, 25);
            this.textBox_Location.TabIndex = 1;
            // 
            // button_Browse
            // 
            this.button_Browse.Location = new System.Drawing.Point(57, 97);
            this.button_Browse.Name = "button_Browse";
            this.button_Browse.Size = new System.Drawing.Size(119, 40);
            this.button_Browse.TabIndex = 3;
            this.button_Browse.Text = "Browse";
            this.button_Browse.UseVisualStyleBackColor = true;
            this.button_Browse.Click += new System.EventHandler(this.button_Browse_Click);
            // 
            // label_Sort
            // 
            this.label_Sort.AutoSize = true;
            this.label_Sort.Location = new System.Drawing.Point(12, 8);
            this.label_Sort.Name = "label_Sort";
            this.label_Sort.Size = new System.Drawing.Size(79, 23);
            this.label_Sort.TabIndex = 0;
            this.label_Sort.Text = "Sort By:";
            // 
            // panel2
            // 
            this.panel2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel2.Controls.Add(this.button_Report);
            this.panel2.Controls.Add(this.chart_salesReport);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(396, 764);
            this.panel2.TabIndex = 4;
            // 
            // button_Report
            // 
            this.button_Report.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Chocolate;
            this.button_Report.Location = new System.Drawing.Point(98, 668);
            this.button_Report.Name = "button_Report";
            this.button_Report.Size = new System.Drawing.Size(187, 40);
            this.button_Report.TabIndex = 2;
            this.button_Report.Text = "Generate report";
            this.button_Report.UseVisualStyleBackColor = true;
            this.button_Report.Click += new System.EventHandler(this.button_Report_Click);
            // 
            // chart_salesReport
            // 
            chartArea2.Name = "ChartArea1";
            this.chart_salesReport.ChartAreas.Add(chartArea2);
            legend2.Name = "Legend1";
            this.chart_salesReport.Legends.Add(legend2);
            this.chart_salesReport.Location = new System.Drawing.Point(-19, 206);
            this.chart_salesReport.Name = "chart_salesReport";
            series2.BackGradientStyle = System.Windows.Forms.DataVisualization.Charting.GradientStyle.TopBottom;
            series2.BackSecondaryColor = System.Drawing.Color.YellowGreen;
            series2.BorderColor = System.Drawing.Color.WhiteSmoke;
            series2.BorderWidth = 3;
            series2.ChartArea = "ChartArea1";
            series2.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Pie;
            series2.Color = System.Drawing.Color.FloralWhite;
            series2.Legend = "Legend1";
            series2.Name = "series_Sales";
            this.chart_salesReport.Series.Add(series2);
            this.chart_salesReport.Size = new System.Drawing.Size(442, 427);
            this.chart_salesReport.TabIndex = 1;
            this.chart_salesReport.Text = "chart1";
            title2.Name = "Title1";
            title2.Text = "Sales Chart";
            this.chart_salesReport.Titles.Add(title2);
            // 
            // label1
            // 
            this.label1.BackColor = System.Drawing.Color.LightGreen;
            this.label1.Font = new System.Drawing.Font("Monotype Corsiva", 25.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.LightSeaGreen;
            this.label1.Image = ((System.Drawing.Image)(resources.GetObject("label1.Image")));
            this.label1.Location = new System.Drawing.Point(-1, 5);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(400, 189);
            this.label1.TabIndex = 0;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.PaleGoldenrod;
            this.panel3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel3.Controls.Add(this.label2);
            this.panel3.Controls.Add(this.button_import);
            this.panel3.Controls.Add(this.button_Browse);
            this.panel3.Controls.Add(this.textBox_Location);
            this.panel3.Location = new System.Drawing.Point(405, 272);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(417, 149);
            this.panel3.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.BackColor = System.Drawing.SystemColors.Info;
            this.label2.Font = new System.Drawing.Font("Century Schoolbook", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(62)))), ((int)(((byte)(120)))), ((int)(((byte)(138)))));
            this.label2.Location = new System.Drawing.Point(0, 14);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(417, 31);
            this.label2.TabIndex = 4;
            this.label2.Text = "Import Menu Items";
            // 
            // panel4
            // 
            this.panel4.BackColor = System.Drawing.Color.LightYellow;
            this.panel4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel4.Controls.Add(this.button_SortByPrice);
            this.panel4.Controls.Add(this.button_SortByDesc);
            this.panel4.Controls.Add(this.label_Sort);
            this.panel4.Controls.Add(this.button_SortByName);
            this.panel4.Location = new System.Drawing.Point(826, 5);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(614, 40);
            this.panel4.TabIndex = 6;
            // 
            // button_SortByPrice
            // 
            this.button_SortByPrice.FlatAppearance.BorderSize = 0;
            this.button_SortByPrice.FlatAppearance.MouseDownBackColor = System.Drawing.Color.PapayaWhip;
            this.button_SortByPrice.FlatAppearance.MouseOverBackColor = System.Drawing.Color.NavajoWhite;
            this.button_SortByPrice.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_SortByPrice.Font = new System.Drawing.Font("Constantia", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_SortByPrice.Location = new System.Drawing.Point(354, 5);
            this.button_SortByPrice.Name = "button_SortByPrice";
            this.button_SortByPrice.Size = new System.Drawing.Size(137, 31);
            this.button_SortByPrice.TabIndex = 7;
            this.button_SortByPrice.Text = "Item Price";
            this.button_SortByPrice.UseVisualStyleBackColor = true;
            this.button_SortByPrice.Click += new System.EventHandler(this.button_SortByPrice_Click);
            // 
            // button_SortByDesc
            // 
            this.button_SortByDesc.BackColor = System.Drawing.Color.Transparent;
            this.button_SortByDesc.FlatAppearance.BorderSize = 0;
            this.button_SortByDesc.FlatAppearance.MouseDownBackColor = System.Drawing.Color.PapayaWhip;
            this.button_SortByDesc.FlatAppearance.MouseOverBackColor = System.Drawing.Color.NavajoWhite;
            this.button_SortByDesc.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_SortByDesc.Font = new System.Drawing.Font("Constantia", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_SortByDesc.Location = new System.Drawing.Point(236, 4);
            this.button_SortByDesc.Name = "button_SortByDesc";
            this.button_SortByDesc.Size = new System.Drawing.Size(113, 31);
            this.button_SortByDesc.TabIndex = 3;
            this.button_SortByDesc.Text = "Item Desc";
            this.button_SortByDesc.UseVisualStyleBackColor = false;
            this.button_SortByDesc.Click += new System.EventHandler(this.button_SortByDesc_Click);
            // 
            // button_SortByName
            // 
            this.button_SortByName.BackColor = System.Drawing.Color.Transparent;
            this.button_SortByName.FlatAppearance.BorderSize = 0;
            this.button_SortByName.FlatAppearance.MouseDownBackColor = System.Drawing.Color.PapayaWhip;
            this.button_SortByName.FlatAppearance.MouseOverBackColor = System.Drawing.Color.NavajoWhite;
            this.button_SortByName.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_SortByName.Font = new System.Drawing.Font("Constantia", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_SortByName.Location = new System.Drawing.Point(108, 4);
            this.button_SortByName.Name = "button_SortByName";
            this.button_SortByName.Size = new System.Drawing.Size(122, 30);
            this.button_SortByName.TabIndex = 3;
            this.button_SortByName.Text = "Item Name";
            this.button_SortByName.UseVisualStyleBackColor = false;
            this.button_SortByName.Click += new System.EventHandler(this.button_SortByName_Click);
            // 
            // eventLog1
            // 
            this.eventLog1.SynchronizingObject = this;
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.BackColor = System.Drawing.Color.IndianRed;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(405, 423);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(1036, 6);
            this.flowLayoutPanel1.TabIndex = 1;
            // 
            // Form1
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.AutoSize = true;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(41)))), ((int)(((byte)(44)))), ((int)(((byte)(51)))));
            this.ClientSize = new System.Drawing.Size(1444, 764);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.GridView2);
            this.Controls.Add(this.GridView);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.Add_panel);
            this.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Name = "Form1";
            this.Text = "Point Of Sales ";
            this.Add_panel.ResumeLayout(false);
            this.Add_panel.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridView2)).EndInit();
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chart_salesReport)).EndInit();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.eventLog1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel Add_panel;
        private System.Windows.Forms.ComboBox comboBox_Category;
        private System.Windows.Forms.Button button_import;
        private System.Windows.Forms.Button button_Delete;
        private System.Windows.Forms.Button button_Add;
        private System.Windows.Forms.TextBox textBox_Price;
        private System.Windows.Forms.TextBox textBox_Name;
        private System.Windows.Forms.Label label_Price;
        private System.Windows.Forms.Label label_Category;
        private System.Windows.Forms.Label Name_label;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button button_sdelete;
        private System.Windows.Forms.Button button_sell;
        private System.Windows.Forms.Button button_total;
        private System.Windows.Forms.TextBox textBox_total;
        private System.Windows.Forms.TextBox textBox_quantity;
        private System.Windows.Forms.TextBox textBox_sprice;
        private System.Windows.Forms.TextBox textBox_sname;
        private System.Windows.Forms.Label label_quantity;
        private System.Windows.Forms.Label label_sprice;
        private System.Windows.Forms.Label label_scategory;
        private System.Windows.Forms.Label label_sname;
        private System.Windows.Forms.DataGridView GridView;
        private System.Windows.Forms.DataGridView GridView2;
        private System.Windows.Forms.TextBox textBox_Location;
        private System.Windows.Forms.Button button_Browse;
        private System.Windows.Forms.Label label_Sort;
        private System.Windows.Forms.TextBox textBox_scategory;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label_Menu;
        private System.Windows.Forms.Label label_Sell;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel panel4;
        private System.Diagnostics.EventLog eventLog1;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Button button_SortByDesc;
        private System.Windows.Forms.Button button_SortByName;
        private System.Windows.Forms.Button button_SortByPrice;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataVisualization.Charting.Chart chart_salesReport;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.Button button_Report;
    }
}

