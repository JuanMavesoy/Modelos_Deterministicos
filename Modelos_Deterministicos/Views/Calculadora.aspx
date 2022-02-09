<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="Modelos_Deterministicos.Views.Calculadora" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="definirVariablesRestricciones" class="py-5 text-center container">
        <h1>Calculadora Simplex</h1>
        <div class="row py-lg-3">
            <div class="col-lg-3 col-md-5 mx-auto">
                <div class="container-md">
                    <div class="mb-2">
                        <label for="formGroupExampleInput" class="form-label">Cantidad de variables de decisión</label>
                        <input  runat="server" type="number" class="form-control" id="variablesDecision" placeholder="1">
                    </div>
                    <div class="mb-2">
                        <label for="formGroupExampleInput2" class="form-label">Cantidad de restricciones</label>
                        <input type="number" class="form-control" id="restricciones" placeholder="1">
                    </div>
                    <asp:Button ID="Generar" runat="server" class="btn btn-primary" Text="Generar Modelo" OnClick="GenerarModelo" />
                </div>
            </div>
        </div>
    </section>

    <section runat="server" id="modelo" class="py-5 container" visible="false">
        <div class=" text-center">
            <h3>Modelo</h3>
        </div>
        <div class="row py-lg-3">
            <div class="col-lg-12 col-md-12 mx-auto">
                <div class="container-md">
                    <div class="col-sm-9">
                        <h5 class="form-label">Objetivo</h5>
                        <asp:DropDownList runat="server" CssClass="form-select">
                            <asp:ListItem>Seleccionar op</asp:ListItem>
                            <asp:ListItem>Maximizar</asp:ListItem>
                            <asp:ListItem>Minimizar</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="container-md">
                     <div class="col-sm-12 py-lg-5">
                         <h5 class="form-label">Función objetivo</h5>
                         <div runat="server" id="DivControlUser" class="row g-3"></div>
                     </div>
                </div>
            </div>
        </div>

    </section>


</asp:Content>
