using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula17
{
    public partial class wfJavascript : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Attributes.Add("onClick", "Clicado()");
            //Criando um evento dinamicamente, logo que a pagina for iniciada
            // vai ser criado um evento chamado onClick que vai realizar a funcao Clicado()

            /*
                Tambem podemos criar a interação com o javascript na propria propriedade
                do elemento, sendo ela a onCllentClick
            */
        }
    }
}