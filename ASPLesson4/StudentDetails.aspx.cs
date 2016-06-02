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
    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Students.aspx");
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            //use EF to connect to the server
            using (DefaultConnection db = new DefaultConnection())
            {
                //use the student model to save a new record
                Student newStudent = new Student();
                newStudent.LastName = LastNameTextBox.Text;
                newStudent.FirstMidName = FirstNameTextBox.Text;
                newStudent.EnrollmentDate = Convert.ToDateTime(EnrollmentDateTextBox.Text);

                db.Students.Add(newStudent);
                //run insert
                db.SaveChanges();
                //redirect to students page
                Response.Redirect("~/Students.aspx");

            }
        }
    }
}