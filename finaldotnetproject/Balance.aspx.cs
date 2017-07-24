using System;
using System.Data.SqlClient;

namespace finaldotnetproject
{
    public partial class Balance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=cab_booking;Integrated Security=SSPI");
            conn.Open();
            String tmp = Session["id"].ToString();
            SqlCommand cmd1 = new SqlCommand("select * from [user] where user_id = '" + tmp + "'", conn);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                curbal.Text = dr["balance"].ToString();
            }
            dr.Close();
            conn.Close();
        }

        protected void RECHARGE_Click(object sender, EventArgs e)
        {
            if (addbalance.Text.Equals(null))
            {
                //popup
            }
            else
            {
                int Tmp = Convert.ToInt32(addbalance.Text.ToString());
                if (Tmp < 0)
                {
                    //popup
                }
                else
                {
                    int oldbal = Convert.ToInt32(curbal.Text.ToString());
                    int newbal = oldbal + Tmp;
                    SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=cab_booking;Integrated Security=SSPI");
                    conn.Open();
                    String tmp = Session["id"].ToString();
                    SqlCommand cmd1 = new SqlCommand("update [user] set balance ='" + newbal.ToString() + "' where user_id = '" + tmp + "'", conn);
                    cmd1.ExecuteNonQuery();
                    cmd1.Dispose();
                    conn.Close();
                    Response.Redirect("Default.aspx", true);
                }
            }
        }
    }
}