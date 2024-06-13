using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula37_DetailsView
{
    public partial class DetailsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Este evento está sendo usado para definir qual page index o detailsView ira mostrar
            // No elemento DetailsViews todos os index começam pelo 0, entao caso queira pegar a linha 1
            // você deve chamar o index 0
            DetailsView1.PageIndex = GridView2.SelectedIndex;
            DetailsView1.Visible = true;

            // A linha de baixo é usada para quando nosso gridView possui mais de uma pagina
            //DetailsView1.PageIndex = (GridView2.PageIndex * GridView2.PageSize) + GridView2.SelectedIndex;
        }
    }
}