using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula02_TextBox_Button_DropDownList
{
    public partial class Aula02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            // Podemos inserir de duas formas, dessa maneira:

            //string casa = txtCasa.Text;
            //string professor = txtProfessor.Text;
            //listaCasa.Items.Add(casa);
            //listaProfessores.Items.Add(professor);

            // Ou desta:

            // Criei dois objetos do tipo listItem que o construtor recebe o texto da textBox e como value o numero que de elementos que existe na lista
            ListItem itemCasa = new ListItem(txtCasa.Text, listaCasa.Items.Count.ToString());
            ListItem itemProf = new ListItem(txtProfessor.Text, listaProfessores.Items.Count.ToString());

            // Fazendo a insercao dos objetos nas suas respectivas listas
            listaCasa.Items.Add(itemCasa);
            listaProfessores.Items.Add(itemProf);

            // Após fazer a insercao, as textbox irao ficar limpas
            txtCasa.Text = "";
            txtProfessor.Text = "";
        }
    }
}