﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage/Navbar.Master" AutoEventWireup="true" CodeBehind="InsertStationery.aspx.cs" Inherits="LabProjectRAiso.Views.Pages.Admin.InsertStationery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="homeSection">
        <h1>Insert Stationery</h1>
        <div>
            <asp:Label ID="Lbl_Name" runat="server" Text="Name: "></asp:Label>
            <asp:TextBox ID="TBox_Name" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Lbl_Price" runat="server" Text="Price: "></asp:Label>
            <asp:TextBox ID="TBox_Price" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <asp:Label class="errorLabel" ID="Lbl_Error" runat="server" Text=""></asp:Label>
        <asp:Button class="updateButton" ID="Btn_Insert" runat="server" Text="Insert"  OnClick="Btn_Insert_Click"/>
    </div>
</asp:Content>
