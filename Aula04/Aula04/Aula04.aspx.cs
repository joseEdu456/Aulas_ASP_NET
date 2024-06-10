using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula04
{
    public partial class Aula04 : System.Web.UI.Page
    {
        private void InicializaValores() {
            for (int i = 1; i < 11; i++)
            {
                ListItem item = new ListItem(i.ToString());
                ddlNumeros.Items.Add(item);
                ddlMultiplicador.Items.Add(item);
                ddlNumeros0.Items.Add(i.ToString());
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // O IsPostBack é para indicar se a pagina foi recarregada mais de uma vez, o IsPostBack é uma propriedade do ASP.NET
            /*
                No if abaixo, ele só ira entrar se a proprieda isPostBack retornar false, assim
                indicando que é a primeira vez do usuario carregando a pagina, caso for true(ja pediu uma requisiçao antes)
                o if não será utilizado
            */
            if (!IsPostBack)
            {
                InicializaValores();
            }
        }

        protected void btnMult_Click(object sender, EventArgs e)
        {
            int resultado = int.Parse(ddlNumeros.SelectedItem.Text) * int.Parse(ddlMultiplicador.SelectedItem.Text);
            txtResult.Text = resultado.ToString();
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            // Limpando a listBox
            lbTabuada.Items.Clear();
            // Criando um objeto que recebe o item selecionado na drop down list
            ListItem item = ddlNumeros0.SelectedItem;
            // Variavel n criada para armazenar o texto do objeto a cima
            int n = int.Parse(item.Text);
            // Variavel t que vai realizar a multiplicacao dos numeros
            int t = 0;
            /*
                O for sera criado para adicionar a seguinte string no list box 
            */
            for (int i = 0; i < 11; i++)
            {
                t = n * i;
                lbTabuada.Items.Add($"{n.ToString()} X {i.ToString()} = {t.ToString()}");
            }
        }
    }
}