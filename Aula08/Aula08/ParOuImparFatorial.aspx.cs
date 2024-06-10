using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula08
{
    public partial class ParOuImparFatorial_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnParImpar_Click(object sender, EventArgs e)
        {
            ListItem item = new ListItem(txtParImpar.Text);
            int numero = int.Parse(item.Text);
            if(numero % 2 == 0)
            {
                lbSaida.Text = "Par";
            }
            else
            {
                lbSaida.Text = "Impar";
            }
        }

        protected void blLista_Click(object sender, BulletedListEventArgs e)
        {
            // Quando qualquer link da bulletList for selecionado, o sistema ira 
            // tornar os dois paineis invisiveis
            Panel1.Visible = false;
            Panel2.Visible = false;

            //A estrutura switch ira verificar o index escolhido
            switch (e.Index)
            {
                case 0: Panel1.Visible = true; //Caso o index 0 seja ele vai deixar visivel o panel1
                    break;
                case 1: Panel2.Visible = true; //Caso o index 1 seja ele vai deixar visivel o panel2
                    break;
            }
        }

        protected void btnFatorial_Click(object sender, EventArgs e)
        {
            ListItem valor = new ListItem(txtFatorial.Text); // Lembrando, que o ListItem é um item de lista e NÃO uma lista de itens
            int n = int.Parse(valor.Text);
            int conta = n;
            if(n < 0)
            {
                lbResultado.Text = "*Informe apenas numeros positivos";
            }
            else{
                if(n == 0)
                {
                    lbResultado.Text = "0! = 1";
                }
                else
                {
                    for (int i = n - 1; i > 0; i--)
                    {
                        conta = conta * i;
                    }
                    lbResultado.Text = $"{n.ToString()}! = {conta.ToString()}";
                }
            }
            txtFatorial.Text = "";
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*
                Este evento funciona quase todo igual ao evento
                da bullet list
            */
            Panel1.Visible = false;
            Panel2.Visible = false;
            // Porem invés de usarmos o switch utilizamos um if que apenas
            // verifica se o index selecionado é o 0
            if (RadioButtonList1.SelectedIndex == 0)
            {
                Panel1.Visible = true;
            }else // Caso não seja ele ira deixar o painel 2 visivel
            {
                Panel2.Visible = true;
            }
        }
    }
}