using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Windows;
using System.Web.SessionState;
using System.IO;

namespace Digital_queue
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Button1_Click(object sender, EventArgs e)
        {
            int num;
            bool isNum2 = Int32.TryParse(roomId.Text.Trim(), out num);
            if (!isNum2)
            {
                lblShowError.ForeColor = System.Drawing.Color.Red;
                lblShowError.Text = "Пожалуйста используйте только цифры!";
            }
            else
            {
                lblShowError.Text = "";
                Response.Redirect("page2.aspx?" + roomId.Text);
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            lblTimer.Text = DateTime.Now.ToString();
        }

        protected void btnAkusherstvo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Akusherstvo.aspx");
        }

        protected void btnPediatria_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pediatria.aspx");
        }

    }
}