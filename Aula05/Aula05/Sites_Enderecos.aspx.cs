using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula05
{
    public partial class Sites_Enderecos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            ListItem site = new ListItem(txtSite.Text, txtEndereco.Text);
            lbSites.Items.Add(site);
            txtSite.Text = "";
            txtEndereco.Text = "";
        }

        protected void btnSelecionar_Click(object sender, EventArgs e)
        {
            ddlSites.Items.Clear();
            //ListItem site;
            //for (int i = 0; i < lbSites.Items.Count; i++)
            //{
            //    site = lbSites.Items[i];
            //    if (site.Selected)
            //    {
            //        site.Selected = false; // Atribuimos o site.Selected = false pois quando vamos um item só podemos adicionar um por vez
            //        ddlSites.Items.Add(site);
            //    }
            //}
            /*
                Podemos criar essa mesma logica utilizando um laço foreach
                Veja abaixo:
            */
            foreach (ListItem item in lbSites.Items)
            {
                if (item.Selected)
                {
                    item.Selected = false;
                    ddlSites.Items.Add(item);
                }
            }
        }
    }
}