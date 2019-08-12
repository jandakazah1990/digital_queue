using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Digital_queue
{
    public partial class Отделение_Акушерства : System.Web.UI.Page
    {
        //Digital_queue.page2 page = new page2();

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            lblShowDate.Text = DateTime.Now.ToString();
            if (page2.dt == null)
            {
                lblShowMessage.Text = "Очередь пока пустая!";
            }
            else
            {
                if (page2.dt.Rows.Count == 0)
                    Label1.Text = "";
                else
                    Label1.Text = page2.dt.Rows[0][0].ToString();
                if (GridView1.Rows.Count==0)
                    Label2.Text ="";
                else
                    Label2.Text = GridView1.Rows[0].Cells[0].Text;
                GridView1.DataSource = page2.dt;
                GridView1.DataBind();
                
                if (Label1.Text != Label2.Text)
                    Audio1.AutoPlay = true;
                lblShowMessage.Text = "";
            }
        }

    }
}