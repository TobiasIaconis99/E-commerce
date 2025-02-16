<%@ Page Title="" Language="C#" MasterPageFile="~/Ecommerce.Master" AutoEventWireup="true" CodeBehind="ABMPais.aspx.cs" Inherits="Aplicacion_Web_Ecommerce.Pages.ABMPais" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <%if (tipo == "a")
        { %>

    <div class="form-control">
        <div class="mb-3 row">
            <div class="col-4">
                <asp:Label ID="lblNombrePais" runat="server" Text="Nombre del Pais"></asp:Label>
                <asp:TextBox ID="txtNombrePais" CssClass="form-control" 
                    oninput="this.value = this.value.replace(/[^a-zA-Z\s]/,'')"
                    MaxLength="45" runat="server"></asp:TextBox>
                <p style="display:none; color:red" id="validatePais">*Campo obligatorio</p>
            </div>
        </div>
    </div>



    <div class="mb-3 row">
        <div class="d-grid gap-2 d-md-block">
            <asp:Button ID="BtnAtras" CssClass="btn btn-primary" runat="server" Text="Atrás" ToolTip="Atras"
                OnClick="BtnAtras_Click" />
            <asp:Button ID="BtnAgregar" runat="server" OnClick="BtnAgregar_Click" ToolTip="Agregar"
                OnClientClick="return validarInput()" Text="Agregar" CssClass="btn btn-primary" />
        </div>
    </div>

    <%//----------------------------------------------------------------------------------------------- %>



    <%} %>
    <%else if (tipo == "e")
        { %>

    <div class="form-control">
        <div class="mb-3 row">
            <div class="col-4">
                <asp:Label ID="lblPais" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtPais" CssClass="form-control" oninput="this.value = this.value.replace(/[^a-zA-Z0]/,'')" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>



    <div class="mb-3 row">
        <div class="d-grid gap-2 d-md-block">
            <asp:Button ID="ButtonAtras" CssClass="btn btn-primary" runat="server" Text="Atrás" OnClick="BtnAtras_Click" />
            <asp:Button ID="BtnModificar" runat="server" OnClick="BtnModificar_Click" Text="Editar" CssClass="btn btn-primary" />
        </div>
    </div>
    <%} %>


    <script>
        function validarInput(){
           let txtPais = document.getElementById('<%= txtNombrePais.ClientID %>').value;
           if(txtPais == ""){
              let validatePais = document.getElementById('validatePais');
              validatePais.style.display = "block"
              return false
           }
           return true;
        }
    </script>
</asp:Content>
