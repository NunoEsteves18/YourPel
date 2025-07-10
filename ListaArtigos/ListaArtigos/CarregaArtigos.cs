using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ListaArtigos
{
    public class CarregaArtigos
    {
      
        public void ListarArtigos()
        {
            DataTable tabela = new DataTable();
            tabela.Columns.Add("Titulo", typeof(string));
            tabela.Columns.Add("Autor", typeof(string));
            tabela.Columns.Add("DataHora", typeof(string));
            tabela.Columns.Add("Tema", typeof(string));
            tabela.Columns.Add("Activos", typeof(bool));
            tabela.Columns.Add("OrdemRelevancia", typeof(int));

            DataRow Row = tabela.NewRow();
           
        }

    }
}