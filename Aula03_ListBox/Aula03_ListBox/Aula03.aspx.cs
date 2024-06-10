using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula03_ListBox
{
    public partial class Aula03 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            ListItem item = new ListItem(txtCidade.Text, libCidades.Items.Count.ToString());
            libCidades.Items.Add(item);
            txtCidade.Text = "";
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            //Propriedade SelectedItem retorna o item que eu desejo
            // Depoi coloquei essa propriedade atribuida a um objeto, onde eu possa verificar seu texto
            ListItem item = libCidades.SelectedItem; 
            txtCidade.Text = item.Text;
        }
    }
}