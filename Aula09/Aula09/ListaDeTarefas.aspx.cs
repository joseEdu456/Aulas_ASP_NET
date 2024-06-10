using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula09
{
    public partial class ListaDeTarefas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            ListItem item = new ListItem(txtItem.Text);
            rblLista.Items.Add(item.Text);
            txtItem.Text = "";
        }

        protected void rbLista_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (var item in rblLista.Items)
            {
                if(item == rblLista.SelectedItem)
                {
                    rblLista.SelectedItem.Enabled = false;
                }
            }
        }
    }
}