<%@ Page Title="Registro Ferreteria" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub

    </script>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color: darkslategrey; font-size: xx-large; text-align: center; color: white">
        Sistema de registro en ASP.NET VB
    </div>
    <div style="padding: 15px">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProductId" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
        <asp:Button ID="btnInsert1" runat="server" BackColor="DarkSlateGray" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="24px" Text="Search" Width="77px" />

    &nbsp;
        <asp:Button ID="btnInsert2" runat="server" BackColor="DarkSlateGray" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="24px" Text="X" Width="21px" />

            </td>
        </tr>
        <tr>
            <td style="height: 22px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Item Name"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtItemName" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 22px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Description"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtDescription" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Units"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownUnit" runat="server">
                    <asp:ListItem Value="PCS">PCS</asp:ListItem>
                    <asp:ListItem>TAB</asp:ListItem>
                    <asp:ListItem>ACC</asp:ListItem>
                    <asp:ListItem>CELL</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 22px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Color"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:RadioButtonList ID="radioColor" runat="server" RepeatDirection="Horizontal" Width="274px">
                    <asp:ListItem>WHITE</asp:ListItem>
                    <asp:ListItem>BLACK</asp:ListItem>
                    <asp:ListItem>GREY</asp:ListItem>
                    <asp:ListItem>OTHER </asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="height: 22px">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Insert Date"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtDate" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text="Opening Quantify"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txtOpening" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product Status"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="CheckRegular" runat="server" Text="Existent" />
            &nbsp;
                <asp:CheckBox ID="CheckIrregular" runat="server" Text="Inexsistent" />
            </td>
        </tr>
    </table>
 
    <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnInsert" runat="server" BackColor="DarkSlateGray" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="37px" Text="Insert" Width="87px" OnClientClick="return me ('Product add')" />

    &nbsp;
        <asp:Button ID="btnUpdate" runat="server" BackColor="DarkSlateGray" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="37px" Text="Update" Width="87px" OnClientClick="return confirm ('Update this Item?')" />

    &nbsp;
        <asp:Button ID="btnUpdate0" runat="server" BackColor="DarkSlateGray" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="37px" Text="Delete" Width="87px" OnClientClick="return confirm ('¿Are you sure to delete?')" />

    &nbsp;
        <asp:Button ID="btnInsert0" runat="server" BackColor="DarkSlateGray" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="37px" Text="Clean" Width="87px" />

    </div>
    <div align="center">
   
        <asp:GridView ID="GridView1" runat="server" Height="102px" HorizontalAlign="Center" Width="80%">
            <EmptyDataRowStyle HorizontalAlign="Right" />
            <HeaderStyle BackColor="DarkSlateGray" BorderStyle="None" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
            
        </div>
    
</asp:Content>
