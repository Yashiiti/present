<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mites1.aspx.cs" Inherits="lb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: left">
        <asp:Label ID="Label4" runat="server" BackColor="#C0C0FF" BorderColor="Red" Font-Bold="True"
            Font-Names="Algerian" Font-Size="X-Large" ForeColor="#000040" Text="Potato Pest Manager"></asp:Label>&nbsp;
        BETA Version 1.0<br />
        <br />
        <strong>
        1</strong><br />
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
            SelectCommand="SELECT DISTINCT Question FROM ppm_table WHERE (q_level = 1) AND (dis_id = 8)">
        </asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
            DataTextField="q_option" DataValueField="q_option" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
        </asp:RadioButtonList><br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ppmConnectionString %>"
            SelectCommand="SELECT [q_option] FROM [ppm_table] WHERE (([dis_id] = 8) AND ([q_level] = 1))">
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:TextBox ID="TextBox1" runat="server" Visible="False" ></asp:TextBox>&nbsp;<br />
        <br />
        &nbsp; &nbsp;
        <table style="width: 636px">
            <tr>
                <td style="width: 174px; height: 26px;">
        <asp:Button ID="Button1" runat="server" PostBackUrl="mites2.aspx" Text="Next" /></td>
                <td style="height: 26px">
                </td>
                <td style="width: 163px; height: 26px;">
                    <asp:Button ID="Button2" runat="server" PostBackUrl="mites_pic_help.aspx" Text="Picture Help" /></td>
                <td style="width: 106px; height: 26px;">
                    <asp:Button ID="Button3" runat="server" PostBackUrl="mites_texthelp.aspx" Text="Text Help" /></td>
            </tr>
        </table>
        <br />
        
        __________________________________________________________________________________________________________________________________________<br />
        <strong><span style="color: #006600">
            Central Potato Research Institute, Shimla 171 001<br />
        </span></strong>(Indian Council of Agricultural Research)<br />
    
    </div>
    </form>
</body>
</html>
