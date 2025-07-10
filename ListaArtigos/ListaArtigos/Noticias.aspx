<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Noticias.aspx.cs" Inherits="ListaArtigos.Noticias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <h2>Noticias</h2> 

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="idArtigo" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="idArtigo" HeaderText="idArtigo" SortExpression="idArtigo" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="dataHora" HeaderText="dataHora" SortExpression="dataHora" />
                    <asp:BoundField DataField="autor" HeaderText="autor" SortExpression="autor" />
                    <asp:BoundField DataField="titulo" HeaderText="titulo" SortExpression="titulo" />
                    <asp:BoundField DataField="texto" HeaderText="texto" SortExpression="texto" />
                    <asp:BoundField DataField="ordemRelevancia" HeaderText="ordemRelevancia" SortExpression="ordemRelevancia" />
                    <asp:BoundField DataField="idPagina" HeaderText="idPagina" SortExpression="idPagina" />
                    <asp:BoundField DataField="tema" HeaderText="tema" SortExpression="tema" />
                    <asp:BoundField DataField="subTema" HeaderText="subTema" SortExpression="subTema" />
                    <asp:CheckBoxField DataField="ativo" HeaderText="ativo" SortExpression="ativo" />
                    <asp:BoundField DataField="urlVideo" HeaderText="urlVideo" SortExpression="urlVideo" />
                    <asp:BoundField DataField="urlFoto" HeaderText="urlFoto" SortExpression="urlFoto" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ARTIGO] WHERE ([tema] = @tema)" DeleteCommand="DELETE FROM [ARTIGO] WHERE [idArtigo] = @idArtigo" InsertCommand="INSERT INTO [ARTIGO] ([dataHora], [autor], [titulo], [texto], [ordemRelevancia], [idPagina], [tema], [subTema], [ativo], [urlVideo], [urlFoto]) VALUES (@dataHora, @autor, @titulo, @texto, @ordemRelevancia, @idPagina, @tema, @subTema, @ativo, @urlVideo, @urlFoto)" UpdateCommand="UPDATE [ARTIGO] SET [dataHora] = @dataHora, [autor] = @autor, [titulo] = @titulo, [texto] = @texto, [ordemRelevancia] = @ordemRelevancia, [idPagina] = @idPagina, [tema] = @tema, [subTema] = @subTema, [ativo] = @ativo, [urlVideo] = @urlVideo, [urlFoto] = @urlFoto WHERE [idArtigo] = @idArtigo">
                <DeleteParameters>
                    <asp:Parameter Name="idArtigo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="DateTime2" Name="dataHora" />
                    <asp:Parameter Name="autor" Type="String" />
                    <asp:Parameter Name="titulo" Type="String" />
                    <asp:Parameter Name="texto" Type="String" />
                    <asp:Parameter Name="ordemRelevancia" Type="Int32" />
                    <asp:Parameter Name="idPagina" Type="Int32" />
                    <asp:Parameter Name="tema" Type="String" />
                    <asp:Parameter Name="subTema" Type="String" />
                    <asp:Parameter Name="ativo" Type="Boolean" />
                    <asp:Parameter Name="urlVideo" Type="String" />
                    <asp:Parameter Name="urlFoto" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Noticia" Name="tema" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="DateTime2" Name="dataHora" />
                    <asp:Parameter Name="autor" Type="String" />
                    <asp:Parameter Name="titulo" Type="String" />
                    <asp:Parameter Name="texto" Type="String" />
                    <asp:Parameter Name="ordemRelevancia" Type="Int32" />
                    <asp:Parameter Name="idPagina" Type="Int32" />
                    <asp:Parameter Name="tema" Type="String" />
                    <asp:Parameter Name="subTema" Type="String" />
                    <asp:Parameter Name="ativo" Type="Boolean" />
                    <asp:Parameter Name="urlVideo" Type="String" />
                    <asp:Parameter Name="urlFoto" Type="String" />
                    <asp:Parameter Name="idArtigo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            Titulo:<br />
            <asp:Label ID="idLbTitulo" runat="server" Text="Label"></asp:Label><br />
            Texto:<br />
            <asp:Label ID="idLbTexto" runat="server" Text="Label"></asp:Label>
            <br />
            URL:<br />
            <asp:Label ID="idLbURL" runat="server" Text="Label"></asp:Label>
            <br />
            Autor:<br />
            <asp:Label ID="idLbAutor" runat="server" Text="Label"></asp:Label>
            <br />
            Data e Hora:<br />
            <asp:Label ID="idLbDataHora" runat="server" Text="Label"></asp:Label>
            <br />
            Tema:
            <br />
            <asp:Label ID="idLbTema" runat="server" Text="Label"></asp:Label>

            <br />

        </div>
    </form>
</body>
</html>
