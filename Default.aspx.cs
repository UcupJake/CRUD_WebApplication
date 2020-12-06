using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CRUD_WebApplication.ServiceReference1;

namespace CRUD_WebApplication
{
    public partial class _Default : Page
    {
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            InsertUser insertUser = new InsertUser();
            insertUser.Name = TextBox1.Text;
            insertUser.Email = TextBox2.Text;
            string r = client.Insert(insertUser);
            lblmsg.Text = r.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ServiceReference1.gettestdata gettestdata = new ServiceReference1.gettestdata();
            gettestdata = client.GetInfo();
            DataTable dataTable = new DataTable();
            dataTable = gettestdata.usertab;
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            UpdateUser updateUser = new UpdateUser();
            updateUser.UID = int.Parse(TextBox3.Text);
            updateUser.Name = TextBox1.Text;
            updateUser.Email = TextBox2.Text;
            string result = client.Update(updateUser);
            lblmsg.Text = result.ToString();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DeleteUser deleteUser = new DeleteUser();
            deleteUser.UID = int.Parse(TextBox3.Text);
            string res = client.Delete(deleteUser);
            lblmsg.Text = res.ToString();
        }
    }
}