using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula06
{
    public partial class Tabuada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 0; i < 11; i++)
                {
                    ddlNumeros.Items.Add(i.ToString());
                }
            }
        }

        protected void btnTabuada_Click(object sender, EventArgs e)
        {
            // Criando um objeto, que sera a estrutura da nossa tabela
            Table tabela = new Table();

            // Declarando o valor que sera feito a tabuada
            ListItem item = new ListItem(ddlNumeros.SelectedItem.ToString());
            int n = int.Parse(item.Text);
            
            //Colocando os valores na nossa tabela
            for (int i = 0; i < 11; i++) // A tabela ira posuir 10 linhas 
            {
                TableRow linha = new TableRow(); // Objeto que sera a linha da tabela
                TableCell coluna = new TableCell(); // Objeto que sera a coluna
                int t = n * i; //variavel que ira realizar a multiplicao

                coluna.Text = $"{n.ToString()} X {i.ToString()} = "; // Declarando o texto da primeira coluna
                linha.Cells.Add(coluna); // Adicionando a primeira coluna na coluna da linha

                TableCell col2 = new TableCell(); // Criando a coluna 2
                col2.Text = $"{t.ToString()}"; // Declarando o texto da segunda coluna
                linha.Cells.Add(col2); // Adicionando a coluna 2 na coluna da linha

                /*
                 Exemplo: n vale 2

                 coluna =  "2 X 0 = "
                 coluna2 = "0"

                          coluna 1  col 2   coluna 1  col 2   coluna 1  col 2  
                linha = [{"2 X 0 =", "0"}, {"2 X 1 =", "2"}, {"2 X 2=", "4"}]

                tabela = [linha]
                */

                tabela.Rows.Add(linha);
                
            }
            PlaceHolder1.Controls.Add(tabela);

        }

    }
}