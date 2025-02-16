<%@ Page Title="" Language="C#" MasterPageFile="~/Ecommerce.Master" AutoEventWireup="true" CodeBehind="ListarPaises.aspx.cs" Inherits="Aplicacion_Web_Ecommerce.Pages.ListarPaises" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    


    <ol class="breadcrumb mb-4 mt-4">
        <li class="breadcrumb-item"><a href="HomeAdmin.aspx" style="text-decoration: none;">Inicio</a></li>
        <li class="breadcrumb-item active">Paises</li>
    </ol>

    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>Listado de Paises
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-sm-12">
                    <a class="btn btn-success" href="ABMPais?Type=a" title="Crear pais">Crear pais</a>
                </div>
            </div>

            <hr />
            <table id="tablapais" class="display responsive table table-striped" style="width: 100%">
                <thead>
                    <tr>
                        <th style="display:none">ID</th>
                        <th style="width:80%">Nombre</th>
                        <th style="width:20%; text-align:right; padding-right:30px">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%foreach (var item in listaPaises)
                        { %>
                    <tr>
                        <td style="display:none"><%: item.ID %></td>
                        <td><%: item.NombrePais %></td>
                        <td style="text-align:right; padding-right:20px">
                            <a href="ABMPais?ID=<%: item.ID %>&Type=e" title="Editar" class="btn"><i class="fa fa-pencil"></i></a>
                            <a href="ABMPais?ID=<%: item.ID %>&Type=d" class="btn" title="Eliminar" style="color:#c30f0f"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>

                    <%} %>
                </tbody>
            </table>
            <asp:Button ID="btnAtrás" CssClass="btn btn-primary" runat="server" Text="Atrás" ToolTip="Atras" OnClick="btnAtrás_Click"/>
        </div>
    </div>


</asp:Content>
