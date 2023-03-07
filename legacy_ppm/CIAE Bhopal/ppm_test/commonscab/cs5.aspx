<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cs5.aspx.cs" Inherits="lb8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label4" runat="server" BackColor="#C0C0FF" BorderColor="Red" Font-Bold="True"
            Font-Names="Algerian" Font-Size="X-Large" ForeColor="#000040" Text="Potato Pest Manager"></asp:Label>&nbsp;
        BETA Version 1.0<br />
        <br />
        <strong>5<br />
        </strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
            BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1"
            ForeColor="Black" GridLines="None">
            <Columns>
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ppmConnectionString %>"
            SelectCommand="SELECT DISTINCT Question FROM ppm_table WHERE (q_level = 5) AND (dis_id = 6)">
        </asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
            DataTextField="q_option" DataValueField="q_option" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
        </asp:RadioButtonList><br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ppmConnectionString %>"
            SelectCommand="SELECT [q_option] FROM [ppm_table] WHERE (([dis_id] = 6) AND ([q_level] = 5))">
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" BackColor="Maroon" BorderColor="Black" Font-Bold="True"
            Font-Names="Bookman Old Style" ForeColor="Yellow" Text="*" Visible="False"></asp:Label><asp:TextBox ID="TextBox1" runat="server" BackColor="Yellow" Font-Bold="True" Font-Size="Large"
            ForeColor="Maroon" Width="33px" Visible="False"></asp:TextBox><br />
        <br />
        <table style="width: 636px">
            <tr>
                <td style="width: 5px; height: 26px">
        <asp:Button ID="Button1" runat="server" PostBackUrl="cs4.aspx" Text="Back" /></td>
                <td style="width: 46px; height: 26px">
        </td>
                <td style="width: 95px; height: 26px">
        <asp:Button ID="Button3" runat="server" Font-Bold="True" PostBackUrl="../ppm1.aspx"
            Text="Home" Width="131px" /></td>
                <td style="width: 49px; height: 26px; text-align: right">
                    <asp:Button ID="Button6" runat="server" PostBackUrl="cs_pic_help.aspx" Text="Picture Help" /></td>
                <td style="width: 32px; height: 26px">
                    <asp:Button ID="Button4" runat="server" PostBackUrl="cs_texthelp.aspx" Text="Text Help" /></td>
            </tr>
        </table>
        &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />
        &nbsp;<br />
        &nbsp; &nbsp;
        <br />
        <br />
        <br />
        __________________________________________________________________________________________________________________________________________<br />
        <strong><span style="color: #006600">Central Potato Research Institute, Shimla 171 001<br />
        </span></strong>(Indian Council of Agricultural Research)</div>
    </form>
</body>
</html>
