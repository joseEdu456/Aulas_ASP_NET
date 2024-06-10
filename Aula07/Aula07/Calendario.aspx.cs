using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula07
{
    public partial class Calendario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcIdade_Click(object sender, EventArgs e)
        {
            //Criando as variveis que irao armazenar os respcticos dias, meses e anos
            int anoNasc = 0, diaNasc = 0, mesNasc = 0;  
            int anoAtual = 0, diaAtual = 0, mesAtual = 0;

            /*
                Como queremos saber quantos dias a pessoa viveu,
                devemos fazer as devidas multiplicaçoes baseadas nisso;
            */
            anoNasc = CalendarNascimento.SelectedDate.Year*365; //O ano possui 365 dias
            diaNasc = CalendarNascimento.SelectedDate.Day;
            mesNasc = CalendarNascimento.SelectedDate.Month*30; //Cada mes possui uma media de 30 dias

            anoAtual = CalendarAtual.SelectedDate.Year*365;
            diaAtual = CalendarAtual.SelectedDate.Day;
            mesAtual = CalendarAtual.SelectedDate.Month*30;

            // Total de dias vividos por essa pessoa
            int idade = (diaAtual + mesAtual + anoAtual) - (diaNasc + mesNasc + anoNasc);

            LabelIdade.Text = idade.ToString();


        }
    }
}