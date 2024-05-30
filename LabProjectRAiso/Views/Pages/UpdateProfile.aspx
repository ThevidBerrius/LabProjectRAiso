﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage/Navbar.Master" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="LabProjectRAiso.Views.Pages.UpdateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Update Profile</h1>
    <div>
        <asp:Label ID="Lbl_Name" runat="server" Text="Name: "></asp:Label>
        <asp:TextBox ID="TBox_Name" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Lbl_DOB" runat="server" Text="Date of Birth: "></asp:Label>
        <asp:TextBox ID="TBox_DOB" runat="server" TextMode="Date"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Lbl_Gender" runat="server" Text="Gender: "></asp:Label>
        <asp:RadioButton ID="Radio_Male" runat="server" Text="Male" GroupName="gender" />
        <asp:RadioButton ID="Radio_Female" runat="server" Text="Female" GroupName="gender" />
    </div>
    <div>
        <asp:Label ID="Lbl_Address" runat="server" Text="Address: "></asp:Label>
        <asp:TextBox ID="TBox_Address" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Lbl_Password" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="TBox_Password" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Lbl_Phone" runat="server" Text="Phone: "></asp:Label>
        <asp:TextBox ID="TBox_Phone" runat="server"></asp:TextBox>
    </div>
    <asp:Label ID="Lbl_Error" runat="server" Text=""></asp:Label>
    <asp:Button ID="Btn_Update" runat="server" Text="Update" OnClick="Btn_Update_Click"/>
</asp:Content>
