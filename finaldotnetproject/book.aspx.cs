using System;
using System.Data.SqlClient;

namespace finaldotnetproject
{
    public partial class book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Items.RemoveAt(DropDownList1.SelectedIndex);
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList1.Items.RemoveAt(DropDownList2.SelectedIndex);

        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=cab_booking;Integrated Security=SSPI");
            conn.Open();
            String tmp = Session["id"].ToString();
            Random rand = new Random((int)DateTime.Now.Ticks);
            int Taxi_id = 0;
            Taxi_id = (rand.Next(1, 100) % 2) + 1;
            int dist = Math.Abs(DropDownList2.SelectedIndex - DropDownList1.SelectedIndex);
            SqlCommand cmd = new SqlCommand("insert into ride (user_id,taxi_id,distance,status,source,destination) values(@a,@b,@c,@d,@e,@f)", conn);
            cmd.Parameters.AddWithValue("a", tmp);
            cmd.Parameters.AddWithValue("b", Taxi_id);
            cmd.Parameters.AddWithValue("c", dist);
            cmd.Parameters.AddWithValue("d", "Confirmed");
            cmd.Parameters.AddWithValue("e", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("f", DropDownList2.SelectedItem.ToString());
            cmd.ExecuteNonQuery();

            conn.Close();

            conn.Open();
            SqlCommand cmd1 = new SqlCommand("select * from [user] where user_id = '" + tmp + "'", conn);
            SqlDataReader dr = cmd1.ExecuteReader();
            int oldbal = 0;
            while (dr.Read())
            {
                oldbal = Convert.ToInt32(dr["balance"].ToString());
            }
            dr.Close();
            conn.Close();

            int newbal = oldbal - (dist * 200);
            conn.Open();
            SqlCommand cmd2 = new SqlCommand("update [user] set balance ='" + newbal.ToString() + "' where user_id = '" + tmp + "'", conn);
            cmd2.ExecuteNonQuery();
            cmd2.Dispose();
            conn.Close();
            Response.Redirect("Default.aspx", true);
        }
    }
}