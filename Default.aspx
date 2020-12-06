<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD_WebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <div style="background-color: #6699FF; font-family: Verdana, Geneva, Tahoma, sans-serif; color: #FFFFFF; text-align: center; font-size: 25px;">
        <asp:Label ID="Label3" runat="server" Text="Data Registrasi Pengguna"></asp:Label>
    </div>
    <br />
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="ID"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Width="210px"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Nama"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="210px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox>
    <br />
    <br />
    <div style="text-align: center">
        <asp:Button ID="Button1" runat="server" Text="Masuk" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cari" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Membaharui" />
        <asp:Button ID="Button4" runat="server" Text="Hapus" OnClick="Button4_Click" OnClientClick="return confirm('Apa anda yakin ingin menghapus email ini?')" />
    </div>
    

    <br />
    <br />
    <div style="text-align:center">
        <asp:Label ID="lblmsg" runat="server" Text="Info Masuk" Font-Bold="True"></asp:Label>
    </div>

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>

</asp:Content>
