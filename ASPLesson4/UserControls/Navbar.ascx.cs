using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPLesson4
{
    public partial class Navbar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setActivePage();
        }


        private void setActivePage()
        {
            switch (Page.Title)
            {
                case "Default":
                    home.Attributes.Add("class", "active");
                    break;
                case "Contact":
                    contact.Attributes.Add("class", "active");
                    break;
                case "students":
                    students.Attributes.Add("class", "active");
                    break;
                case "courses":
                    courses.Attributes.Add("class", "active");
                    break;
                case "departments":
                    departments.Attributes.Add("class", "active");
                    break;

            }
        }
    }
}