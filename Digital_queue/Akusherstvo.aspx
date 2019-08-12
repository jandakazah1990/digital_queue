<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Akusherstvo.aspx.cs" Inherits="Digital_queue.Отделение_Акушерства" %>

<%@ Register assembly="ASPNetAudio.NET4" namespace="ASPNetAudio" tagprefix="ASPNetAudio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #footer {
            position: absolute;
            bottom: 10px;
            left: 1px;
            width: 100%;
            height: 40px; /*Height of frame div*/
            overflow: hidden; /*Disable scrollbars. Set to "scroll" to enable*/
           
            color: black;
        }
        .auto-style4 {
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <table style="width:100%">
                    <tr>
                         <td align="center" colspan="3"><asp:Label ID="lblHeader" runat="server" Font-Bold="True" Font-Size="40px" ForeColor="#3366FF" Text="ОТДЕЛЕНИЕ ЖЕНСКОГО ЗДОРОВЬЯ"></asp:Label></td>                  
                    </tr>
                    <tr>
                        <td class="auto-style4"><asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>		
                        <td></td>
                    </tr>
                    <tr>
                         <td colspan="3">
                             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                 <ContentTemplate>
                                     <asp:Label ID="lblShowMessage" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                                     <asp:GridView ID="GridView1" runat="server" Font-Bold="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="10px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Font-Size="100px" Width="100%" Height="100%">
                                         <AlternatingRowStyle BackColor="White" />
                                         <FooterStyle BackColor="#CCCC99" />
                                         <HeaderStyle Font-Size="50px" BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                         <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                         <RowStyle BackColor="#F7F7DE" />
                                         <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                         <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                         <SortedAscendingHeaderStyle BackColor="#848384" />
                                         <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                         <SortedDescendingHeaderStyle BackColor="#575357" />
                                     </asp:GridView>
                                     <br />
                                     <asp:Label ID="lblShowDate" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                     <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick">
                                     </asp:Timer>
                                     <ASPNetAudio:Audio ID="Audio1" runat="server" AudioURL="~/sound.mp3" AutoPlay="false">
                                     </ASPNetAudio:Audio>
                                 </ContentTemplate>
                             </asp:UpdatePanel>
                         </td>
                        <td></td>
                        <td Align="right"></td> 
                    </tr>
                </table>
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
        <br />
        <br />
        <br />
        <br />
        <br />  
        <br />
        <br />
        <br /> 
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <div id="footer">
        </div>
    </form>
</body>
</html>
