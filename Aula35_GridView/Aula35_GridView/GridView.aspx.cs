using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula35_GridView
{
    public partial class GridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastra_Click(object sender, EventArgs e)
        {
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connectionString;
            connectionString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = connectionString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "INSERT INTO Funcionarios (nome,salario,funcao) VALUES (@nome, @salario, @funcao)";
            cmd.Parameters.AddWithValue("nome", txtNome.Text);
            cmd.Parameters.AddWithValue("salario", txtSalario.Text);
            cmd.Parameters.AddWithValue("funcao", txtFuncao.Text);
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            GridView1.DataBind();
        }
    }
}