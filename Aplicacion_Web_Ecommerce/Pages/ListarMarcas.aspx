<%@ Page Title="" Language="C#" MasterPageFile="~/Ecommerce.Master" AutoEventWireup="true" CodeBehind="ListarMarcas.aspx.cs" Inherits="Aplicacion_Web_Ecommerce.Pages.ListarMarcas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <ol class="breadcrumb mb-4 mt-4">
        <li class="breadcrumb-item"><a href="HomeAdmin.aspx" style="text-decoration: none;">Inicio</a></li>
        <li class="breadcrumb-item active">Marcas</li>
    </ol>


    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>Listado de marca
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-sm-12">
                    <a class="btn btn-success" href="ABMMarcas?Type=a" title="Crear marca">Crear marca</a>
                </div>
            </div>

            <hr />
            <table id="tablaMarca" class="display responsive table table-striped" style="width: 100%">
                <thead>
                    <tr>
                        <th style="display: none">ID</th>
                        <th style="padding-left:20px">Nombre</th>
                        <th style="text-align: right; padding-right:30px">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%foreach (var item in listademarcas)
                        { %>
                    <tr>
                        <td style="display: none"><%: item.ID %></td>
                        <td style="padding-left:20px"><%: item.Nombre %></td>
                        <td style="text-align: right; padding-right:20px">
                            <a href="ABMMarcas?ID=<%: item.ID %>&Type=e" class="btn" title="Editar"><i class="fa fa-pencil"></i></a>
                            <a href="ABMMarcas?ID=<%: item.ID %>&Type=d" class="btn" 
                                title="Eliminar"><i class="fa fa-trash" style="color:#c30f0f"></i></a>
                        </td>
                    </tr>



                    <%} %>
                </tbody>
            </table>
            <asp:Button ID="btnAtras" CssClass="btn btn-primary" runat="server" ToolTip="Atras"
                Text="Atrás" OnClick="btnAtras_Click" />
        </div>
    </div>


</asp:Content>
