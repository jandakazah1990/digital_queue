using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Digital_queue
{
    public partial class page2 : System.Web.UI.Page
    {
        #region Declation of variables
        private int PatientID = 0;
        private int RoomID;
        public static DataTable dt;
        DataRow row;
        DataColumn column = new DataColumn();
        DataColumn column2 = new DataColumn();

        static List<int> patients = new List<int>();
        static List<int> rooms = new List<int>();
        static bool flag;
        static bool isFirstTime;
        #endregion

        #region Page Load
        protected void Page_Load(object sender, EventArgs e)
        {
            lblRoomShow.Text = "Номер вашего кабинета: " + Convert.ToInt32(Request.QueryString.ToString());
            if (flag == false)
            {
                RoomID = Convert.ToInt32(Request.QueryString.ToString());
                //Create Column1 and Column2
                if (isFirstTime == false)
                {
                    dt = new DataTable();
                    column.DataType = System.Type.GetType("System.Int32");
                    column.AllowDBNull = false;
                    dt.Columns.Add(column.ColumnName = "Номер карты");
                    dt.Columns.Add(column2.ColumnName = "Номер кабинета");
                    isFirstTime = true;
                }
                else
                {
                    ReturnValues(PatientID, RoomID);
                }
                flag = true;
            }
        }
        #endregion

        #region ReturnValues function
        private void ReturnValues(int PatieNt, int RooM)
        {
            //Remove Record from dt and patient List
            DataRow[] rows = dt.Select("[Номер кабинета]=" + RoomID);
            
            foreach (var item in rows)
            {
                int z = Convert.ToInt32(item.ItemArray[0]);
                item.Delete();
                dt.AcceptChanges();
                patients.Remove(z);
            }
            // Add new Record
            for (int i = 0; i < 1; i++) 
            {
                row = dt.NewRow();
                row[i] = PatientID;
                row[i + 1] = RoomID;
                dt.Rows.InsertAt(row, 0);
                Audio1.AutoPlay = true;
                patients.Add(PatientID);
                Timer1.Enabled = true;
                
                string sb = "";
                foreach (DataRow r in dt.Rows)
                {
                    sb += r[0] + ",";
                }
                lblShowPatients.Text = "Пациенты: " + sb.ToString();
                
            }
        
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

            string nomera = "";
            foreach (DataRow r in dt.Rows)
            {
                nomera += r[1] + ",";
            }
            rooms.Add(RooM);
            lblShowRooms.Text="Кабинеты: "+nomera;
            flag = true;
            
        }
        #endregion

        #region  Back button
        protected void btnGoBack_Click(object sender, EventArgs e)
        {
            //flag = false;
            //Remove item from dt and patient List
            DataRow[] rows = dt.Select("[Номер кабинета]=" + Convert.ToInt32(Request.QueryString.ToString()));
            foreach (var item in rows)
            {
                int z = Convert.ToInt32(item.ItemArray[0]);
                item.Delete();
                dt.AcceptChanges();
                patients.Remove(z);
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();


            Response.Redirect("Default.aspx?");
        }
        
        #endregion

        #region Popup button
        protected void btnEnter_Click(object sender, EventArgs e)
        {
            RoomID = Convert.ToInt32(Request.QueryString.ToString());
            int num;
            bool isNum = Int32.TryParse(IDpatienta.Text.Trim(), out num);

            if (isNum)
            {
                lblPatient.Text = "";
                PatientID = Convert.ToInt32(IDpatienta.Text);
                ReturnValues(PatientID, RoomID);
                IDpatienta.Text = "";
            }
            else
            {
                IDpatienta.Text = "";
                lblPatient.Text = "Пожалуйста используйте только цифры!";
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        #endregion

        #region Fill button
        protected void btnFill_Click(object sender, EventArgs e)
        {
        //    RoomID = Convert.ToInt32(Request.QueryString.ToString());
        //    int num;
        //    bool isNum = Int32.TryParse(PopuptxtFirstName.Text.Trim(), out num);

        //    if (isNum)
        //    {
        //        Label1.Text = "";
        //        PatientID = Convert.ToInt32(PopuptxtFirstName.Text);
        //        ReturnValues(PatientID, RoomID);
        //        ModalPopupExtender1.Hide();
        //        PopuptxtFirstName.Text = "";
        //    }
        //    else
        //    {
        //        PopuptxtFirstName.Text = "";
        //        Label1.Text = "Пожалуйста используйте только цифры!";
        //    }
        }
        #endregion

        #region Выйти кнопка
        protected void btnExit_Click1(object sender, EventArgs e)
        {
            DataRow[] rows = dt.Select("[Номер кабинета]=" + Convert.ToInt32(Request.QueryString.ToString()));
            foreach (var item in rows)
            {
                int z = Convert.ToInt32(item.ItemArray[0]);
                item.Delete();
                dt.AcceptChanges();
                patients.Remove(z);
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Response.Redirect("Default.aspx?");
        }
        #endregion


        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            column.DataType = System.Type.GetType("System.Int32");
            column.AllowDBNull = false;
            dt.Columns.Add(column.ColumnName = "Size");
            dt.Columns.Add(column2.ColumnName = "Sex");

            #region//Add value to rows
            dt.Rows.Add(100, 200);
            dt.Rows.Add(400, 500);
            dt.Rows.Add(new Object[] { 300, "m" });
            dt.Rows.Add(100, 200);
            dt.Rows.Add(400, 500);
            dt.Rows.Add(new Object[] { 300, "m" });
            #endregion

            dt.Columns.Add(new DataColumn("Age"));
            int q = 0;
            foreach (DataRow row in dt.Rows)
            {
                row["Age"] = 2 + q.ToString();
                q++;
            }
            //Replace columns
            dt.Columns["Sex"].SetOrdinal(0);

            //dt.Columns.Remove("Size");

            #region//Delete specific row
            DataRow[] rows = dt.Select("Sex='m'");
            foreach (var item in rows)
            {
                item.Delete();
            }
            dt.AcceptChanges();
            #endregion

            #region Change value inside table
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    if(Convert.ToInt32(dt.Rows[i][0])==100)
            //        dt.Rows[i][0] = 2000;
            //}

            //foreach (DataRow row in dt.Rows)
            //{
            //    if (Convert.ToInt32(row["Size"]) == 100)
            //    {
            //        row["Size"] = 1000;
            //    }
            //}
            #endregion

            DataRow[] result = dt.Select("Size >=230 AND Sex = 'm'");
            StringBuilder sb = new StringBuilder();
            foreach (DataRow row in result)
            {
                string htmlText = string.Format("{0},{1}", row[0], row[1]);
                sb.Append(htmlText);

            }
            //Label3.Text = sb.ToString();

            //GridView2.DataSource = dt;
            //GridView2.DataBind();
            #region//Show value in column 1 in a row without last character
            //string rowValue = string.Empty;
            //foreach (DataRow row in dt.Rows)
            //{
            //    rowValue += row["Size"] + ",";
            //}
            //Label2.Text = rowValue.Substring(0, rowValue.Length - 1);

            //Check table or column for specific value
            //if (dt.Columns.Contains("pp"))
            //    Label1.Text = "Exist";
            //else
            //    Label1.Text = "Exist";
            #endregion

            #region//Show columns
            string colNames = string.Empty;
            foreach (DataColumn col in dt.Columns)
            {
                colNames += col.ColumnName + ",";
            }
            //Label2.Text = colNames;

            string[] columns = colNames.Split(',');
            string cols = string.Empty;
            foreach (var col in columns)
            {
                cols += col + "<br />";
            }
            //Label2.Text = cols;
            #endregion
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label3.Text = GridView1.Rows.Count.ToString();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label4.Text = dt.Rows.Count.ToString();
            if (Label3.Text != Label4.Text)
            {
                Audio1.AutoPlay = true;
            }
        }

    }
}