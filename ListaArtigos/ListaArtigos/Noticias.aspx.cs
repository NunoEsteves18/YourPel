using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListaArtigos
{
    public partial class Noticias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string pTitulo = GridView1.SelectedRow.Cells[1].Text;
            string pTexto = GridView1.SelectedRow.Cells[2].Text;
            string pURL = GridView1.SelectedRow.Cells[3].Text;
            string pAutor = GridView1.SelectedRow.Cells[4].Text;
            string pDataHora = GridView1.SelectedRow.Cells[5].Text;
            string pTema = GridView1.SelectedRow.Cells[6].Text;
            idLbTitulo.Text = pTitulo;
            idLbAutor.Text = pAutor;
            idLbTema.Text = pTema;
            idLbDataHora.Text = pDataHora;
            idLbTexto.Text = pTexto;
            idLbURL.Text = pURL;
        }
    }
}