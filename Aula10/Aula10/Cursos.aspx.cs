using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula10
{
    public partial class Cursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 1; i < 11; i++)
                {
                    ddlNumeros.Items.Add(i.ToString());
                }
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedIndex == 0)
            {
                // Codigo parou aqui
                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                MultiView1.ActiveViewIndex = 2;
            }
            RadioButtonList1.SelectedItem.Selected = false;
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}