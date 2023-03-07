<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ppm1.aspx.cs" Inherits="ppm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; background-color: papayawhip;">
        <asp:Label ID="Label4" runat="server" BackColor="#C0C0FF" BorderColor="Red" Font-Bold="True"
            Font-Names="Algerian" Font-Size="X-Large" ForeColor="#000040" Text="Potato Pest Manager"></asp:Label><br />
        <br />
        <br />
        <br />
        <table style="width: 721px; height: 119px">
            <tr>
                <td colspan="3" style="background-color: palegoldenrod">
                    <strong><span style="font-size: 16pt; color: #990000; text-decoration: underline">Click
            Image for selection</span></strong><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="300px" ImageUrl="images/late_blight2.BMP"
                        Width="350px" PostBackUrl="lb/lb1.aspx" /></td>
                <td style="width: 353px">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="300px" ImageUrl="images/alternarialeaf1.BMP"
                        Width="350px" PostBackUrl="earlyblight/eb1.aspx" /></td>
                <td>
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="300px" ImageUrl="images/black_scurf1.BMP"
                        Width="350px" PostBackUrl="blackscurf/bs1.aspx" /></td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="300px" ImageUrl="images/DryRot.bmp"
                        Width="350px" PostBackUrl="dryrot/dr1.aspx" /></td>
                <td style="width: 353px"><asp:ImageButton ID="ImageButton5" runat="server" Height="300px" ImageUrl="images/WhiteGrub2.bmp"
                        Width="350px" PostBackUrl="whitegrub/wg1.aspx" /></td>
                <td><asp:ImageButton ID="ImageButton6" runat="server" Height="300px" ImageUrl="images/CommonScab1.bmp"
                        Width="350px" PostBackUrl="commonscab/cs1.aspx" /></td>
            </tr>
            <tr>
                <td><asp:ImageButton ID="ImageButton7" runat="server" Height="300px" ImageUrl="images/goldennematode.bmp"
                        Width="350px" PostBackUrl="goldennematode/gn1.aspx" /></td>
                <td style="width: 353px"><asp:ImageButton ID="ImageButton8" runat="server" Height="300px" ImageUrl="images/Mite.bmp"
                        Width="350px" PostBackUrl="mites/mites1.aspx" /></td>
                <td><asp:ImageButton ID="ImageButton9" runat="server" Height="300px" ImageUrl="images/LeafRoll.bmp"
                        Width="350px" /></td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton10" runat="server" Height="300px" ImageUrl="images/Mosaic.bmp"
                        Width="350px" /></td>
                <td style="width: 353px">
                    <asp:ImageButton ID="ImageButton11" runat="server" Height="300px" ImageUrl="images/backterial_wilt.BMP"
                        Width="350px" /></td>
                <td>
                    <asp:ImageButton ID="ImageButton12" runat="server" Height="300px" ImageUrl="images/TuberMoth1.bmp"
                        Width="350px" /></td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton13" runat="server" Height="300px" ImageUrl="images/WART.BMP"
                        Width="350px" /></td>
                <td style="width: 353px">
                    <asp:ImageButton ID="ImageButton14" runat="server" Height="300px" ImageUrl="images/RootKnematode2.bmp"
                        Width="350px" /></td>
                <td>
                    <asp:ImageButton ID="ImageButton15" runat="server" Height="300px" ImageUrl="images/TuberMoth2.bmp"
                        Width="350px" /></td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton16" runat="server" Height="300px" ImageUrl="images/SoftRot1.bmp"
                        Width="350px" /></td>
                <td style="width: 353px">
                    <asp:ImageButton ID="ImageButton17" runat="server" Height="300px" ImageUrl="images/CutWorm1.bmp"
                        Width="350px" /></td>
                <td>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        &nbsp;<br />
        <br />
        <br />
        <strong><span style="color: #006600">Central Potato Research Institute, Shimla 171 001<br />
        </span></strong>(Indian Council of Agricultural Research)<br />
        <strong><em><span style="color: #ff0000"><span style="text-decoration: underline">Disclaimer:
        </span>No liability what so ever is accepted for use of this package<br />
        </span></em></strong>
    
    </div>
    </form>
</body>
</html>
