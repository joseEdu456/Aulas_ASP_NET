using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula22_Wizard
{
    public partial class Wizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Wizard1.ActiveStepIndex = 0;
                for (int i = 1; i < 11; i++)
                {
                    ((DropDownList)Wizard1.WizardSteps[1].FindControl("ddlNumeros")).Items.Add(i.ToString());
                }
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            // Atribuindo os valores nos Step[0] do wizard
            var nome = ((TextBox)Wizard1.WizardSteps[0].FindControl("txtNome")).Text;
            var idade = ((TextBox)Wizard1.WizardSteps[0].FindControl("txtIdade")).Text;
            var hobby = ((TextBox)Wizard1.WizardSteps[0].FindControl("txtHobby")).Text;

            Response.Write("<h1>Dados da Pessoa</h1>");
            Response.Write($"<p>Nome: {nome}</p>");
            Response.Write($"<p>Idade: {idade}</p>");
            Response.Write($"<p>Hobby: {hobby}</p>");
        }

        protected void btnTabuada_Click(object sender, EventArgs e)
        {
            Table tabela = new Table();
            int n = int.Parse(((DropDownList)Wizard1.WizardSteps[0].FindControl("ddlNumeros")).SelectedItem.Text);
            for (int i = 1; i < 11; i++)
            {
                TableRow linha = new TableRow();
                TableCell coluna = new TableCell();
                int conta = i * n;
                coluna.Text = $"{n} X {i} = ";
                linha.Cells.Add(coluna);
                coluna = new TableCell();
                coluna.Text = $"{conta}";
                linha.Cells.Add(coluna);
                tabela.Rows.Add(linha);
            }
            PlaceHolder1.Controls.Add(tabela);
        }
    }
}