using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula20
{
    public partial class PagPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink1.Attributes.Add("class", "links");
            HyperLink2.Attributes.Add("class", "links");
            HyperLink3.Attributes.Add("class", "links");
        }

        /*  
            Essa aula foi utilizada para aprendermos sobre links
            entre páginas no mesmo projeto.
            Utilizamos o elemento Hyper Link button para realizar os
            links, dentro desse elementos possuimos uma propriedade onde 
            se é possivel digitar o endereço de destino, neste caso nossas
            URLs foram os nossas outras paginas.
            Também criei um style para os links, atribui esse style para cada
            hyper link button criando um atributo que recebe essa style class,
            porém podemos adicionar esse style na propria propriedade CssClass
            do elemento. Este conceito de criar atribuitos pode ser utilizado tanto
            para criacao de classes css quanto para scripts de javascript
        */
    }
}