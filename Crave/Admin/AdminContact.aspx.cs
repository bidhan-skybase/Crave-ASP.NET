using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Crave.User;

namespace Crave.Admin
{
    public partial class AdminContact : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["breadCrumb"] = "User Feedback";
                if (Session["admin"] == null)
                {
                    Response.Redirect("../User/Login.aspx");
                }
                else
                {
                    getFeedbacks();
                }

            }

        }

        private void getFeedbacks()
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("ContatSp", con);
            cmd.Parameters.AddWithValue("@Action", "SELECT");
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            rFeedback.DataSource = dt;
            rFeedback.DataBind();
        }

        protected void rFeedback_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("ContatSp", con);
            cmd.Parameters.AddWithValue("@Action", "DELETE");
            cmd.Parameters.AddWithValue("@ContactId", e.CommandArgument);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Visible = true;
                lblMsg.Text = "Record deleted successfully";
                lblMsg.CssClass = "alert alert-success";
                getFeedbacks();
            }
            catch (Exception ex)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Error- " + ex.Message;
                lblMsg.CssClass = "alert alert-danger";

            }
            finally
            {
                con.Close();
            }


        }
    }
}