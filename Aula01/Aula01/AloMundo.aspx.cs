using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula01
{
    public partial class AloMundo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExecutar_Click(object sender, EventArgs e)
        {
            if(txtMsg.Text == "")
            {
                labelMsg.Text = "<h1>Hello World - Aula 01</h1>";
            }
            else
            {
                labelMsg.Text = $"<h1>{txtMsg.Text}</h1>";
            }
        }
    }
}