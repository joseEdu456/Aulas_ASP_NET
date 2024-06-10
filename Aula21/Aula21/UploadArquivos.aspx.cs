using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula21
{
    public partial class UploadArquivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nome = fuArquivos.FileName;
            String caminhoDaPasta = Server.MapPath(@"Arquivos\");
            //Propriedade Server faz um objeto do servidor, e o MapPath retorna o caminho
            // do arquivo fisico determinado no parametro, neste caso queria saber o caminho da
            // pasta Arquivos

            txtNome.Text = nome;

            txtTamanho.Text = fuArquivos.PostedFile.ContentLength.ToString();
            /*
                PostedFile pega o arquivo selecionado pelo o usuario, e o
                ContentLength pega o tamanho do arquivo selecionado em bytes
            */

            fuArquivos.PostedFile.SaveAs(caminhoDaPasta + nome);
            // SaveAs salva o nome do arquivo no caminho desejado
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String nome = "";
            String caminhoDaPasta = Server.MapPath(@"Arquivos\");

            for (int i = 0; i < fuArquivos.PostedFiles.Count; i++)
            {
                nome = nome + fuArquivos.PostedFiles[i].FileName + "-";
                fuArquivos.PostedFiles[i].SaveAs(caminhoDaPasta + fuArquivos.PostedFiles[i].FileName);
            }

            txtNome.Text = nome;
        }
    }
}