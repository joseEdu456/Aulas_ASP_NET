using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula33_DataList
{
    public partial class Cliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            //Essas duas primeiras linhas, servem para acessar o web.config e depois criar uma varivel que a config de connection strings
            //rootWebConfig usado para ter acesso ao que esta dentro do webconfig
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            //variavel usada para ter acesso as configuraçoes da connectionstring
            System.Configuration.ConnectionStringSettings connString;
            //Agora atribuimos a var connString a connection string que está dentro do rootWebConfig determinando seu caminho entre os colchetes
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //Criando o objeto de conexao com o banco
            SqlConnection connection = new SqlConnection();
            //A string de conexao do banco será a que está atibuida na variavel connString
            connection.ConnectionString = connString.ToString();
            //Criando um objeto para realizar o devido comando
            SqlCommand command = new SqlCommand();
            //A conexao do comando sera a que esta atribuida a connection
            command.Connection = connection;
            //Linha de comando SQL a ser feita
            // Deve ser a insercao da tabela cliente nos campos Nome, Email e Senha, que serao determinados pelos parametros
            command.CommandText = "Insert into cliente (Nome,Email,Senha) values (@Nome, @Email, @Senha)";
            //Adicionando os parametros já com seus valores
            command.Parameters.AddWithValue("Nome", txtNome.Text);
            command.Parameters.AddWithValue("Email", txtEmail.Text);
            command.Parameters.AddWithValue("Senha", txtSenha.Text);
            //Abrindo a conexao com o banco de dados
            connection.Open();
            //Realiza o comando desejado
            command.ExecuteNonQuery();
            //Fecha a conexao com o banco
            connection.Close();
            //Envia os dados para a dataList
            DataList1.DataBind();
        }
    }
}