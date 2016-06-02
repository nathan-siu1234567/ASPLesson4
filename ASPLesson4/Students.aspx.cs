using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPLesson4.Models;
using System.Web.ModelBinding;

namespace ASPLesson4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if loading page for the first time
            if(!IsPostBack)
            {
                //get students from EF db
                this.GetStudents();
            }
        }
        protected void GetStudents()
        {
            //connect to EF
            using (DefaultConnection db = new DefaultConnection())
            {
                //query the students table using EF and LINQ
                var Students = (from allStudents in db.Students select allStudents);

                //bind results to grid view
                StudentsGridView.DataSource = Students.ToList();
                StudentsGridView.DataBind();
            }
        }
    }
}