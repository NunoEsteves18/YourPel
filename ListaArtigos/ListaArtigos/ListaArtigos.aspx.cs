using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListaArtigos
{
    public partial class ListaArtigos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void idDListTemas_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

     
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

            string pTitulo = GridView1.SelectedRow.Cells[4].Text;
            string pAutor = GridView1.SelectedRow.Cells[3].Text;
            string pTema = GridView1.SelectedRow.Cells[8].Text;
            string pDataHora = GridView1.SelectedRow.Cells[2].Text;
            string pTexto = GridView1.SelectedRow.Cells[5].Text;

            string pURL = GridView1.SelectedRow.Cells[12].Text;

            idLbTitulo.Text = pTitulo;
            idLbAutor.Text = pAutor;
            idLbTema.Text = pTema;
            idLbDataHora.Text = pDataHora;
            idLbTexto.Text = pTexto;

            idLbURL.Text = pURL;
        }
    }
}