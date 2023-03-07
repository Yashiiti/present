<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Potato Pest Manager</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: lightblue; text-align: center">
        <asp:Label ID="Label4" runat="server" BackColor="#C0C0FF" BorderColor="Red" Font-Bold="True"
            Font-Names="Algerian" Font-Size="X-Large" ForeColor="#000040" Text="Potato Pest Manager"></asp:Label>
        &nbsp; &nbsp;&nbsp; BETA Version 1.0<br />
        <br />
        <br />
        <br />
        <table style="font-size: 12pt; width: 400px; color: #000000; font-family: Times New Roman;
            height: 114px; text-align: center">
            <tr>
                <td style="width: 92px; text-align: right">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="User Name :"></asp:Label></td>
                <td style="width: 2px; color: #ff0000; text-align: left; text-decoration: underline">
                    <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" Font-Bold="True"
                        Width="164px"></asp:TextBox></td>
            </tr>
            <tr style="color: black; ">
                <td style="width: 92px; text-align: right">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Password :"></asp:Label></td>
                <td style="width: 2px; text-align: left">
                    <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" Font-Bold="True"
                        TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 92px">
                </td>
                <td style="width: 2px; text-align: left">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" /></td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#C00000" Text="*"></asp:Label><br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <strong><span style="color: #000099"></span><span style="color: #006600">Central Potato
            Research Institute, Shimla 171 001<br />
        </span></strong>(Indian Council of Agricultural Research)<br />
        <strong><em><span style="color: #ff0000"><span style="text-decoration: underline">Disclaimer:
        </span>No liability what so ever is accepted for use of this package<br />
            <span style="text-decoration: underline"></span></span></em></strong>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
