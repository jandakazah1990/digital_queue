<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page2.aspx.cs" Inherits="Digital_queue.page2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<%@ Register assembly="ASPNetAudio.NET4" namespace="ASPNetAudio" tagprefix="ASPNetAudio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
.modalBackground
{
    background-color: Black;
    filter: alpha(opacity=70);
    opacity: 0.7;
}
.PopUpWindow
{
    
    color: Black;
    min-width: 800px;
    max-width: 98%;
    border: 1px solid rgba(0,0,0, .5);
    padding: 15px;
    max-height: 98%;
}
button
{
    font-family: Arial, sans-serif;
    font-size: 12px;
    font-weight: bold;
    width: 65px;
    height: 23px;
}
.button:hover
{
    border: solid 0px white;
    font-family: Arial, sans-serif;
    font-size: 12px;
    font-weight: bold;
    color: White;
    width: 65px;
    height: 23px;
}
#footer {
            position: absolute;
            bottom: 10px;
            left: 1px;
            width: 100%;
            height: 40px; /*Height of frame div*/
            overflow: hidden; /*Disable scrollbars. Set to "scroll" to enable*/
            color: black;
        }
        </style>
    
    <title>Жандос приложение</title>
</head>
<body>
    <form id="form1" runat="server" >    
        <asp:Panel ID="myPanel" runat="server" Height="100%" Width="100%" BackColor="White" HorizontalAlign="Left">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
            <ContentTemplate>
                <table style="width:100%">
                    <tr>
                         <td align="center" colspan="3"><asp:Label ID="lblHeader" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#3366FF" Text="Электронная очередь"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="lblRoomShow" runat="server" Font-Bold="True" Font-Size="Large" Text="Номер вашего кабинета: "></asp:Label>
                        </td>
                        <td></td>		
                        <td></td>
                    </tr>
                    <tr>
                         <td>
                             Введите номер пациента: <asp:TextBox ID="IDpatienta" runat="server" BackColor="White" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                             <asp:Button ID="btnEnter" runat="server" Font-Bold="True" Font-Size="Medium" Height="50px" OnClick="btnEnter_Click" 
                                 Text="Вызвать пациента" Width="200" BackColor="White" />
                         </td>
                        <td></td>
                        <td Align="right">
                            <asp:Button ID="btnExit" runat="server" BackColor="White" Font-Bold="True" Font-Size="Medium" Height="50px" Text="Выйти" Width="230px" OnClick="btnExit_Click1"/>
                         </td>
                     </tr>
                    <tr>
                         <td>
                             <asp:Label ID="lblPatient" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                             <asp:ScriptManager ID="ScriptManager1" runat="server">
                             </asp:ScriptManager>
                         </td>
                         <td></td>
                         <td></td>
                    </tr>
                    <tr>
                         <td colspan="3">
                             <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" Font-Size="50px" Width="100%" Height="100%" ForeColor="Black" GridLines="None" Font-Bold="true">
                                 <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                 <FooterStyle BackColor="Tan" />
                                 <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                 <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                 <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                 <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                 <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                 <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                 <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                             </asp:GridView>
                         </td>
                    </tr>
                    <caption>
                        <br />
                        <tr>
                            <td align="left">
                            </td>
                            <td></td>
                            <td align="right">
                                <asp:Button ID="btnGoBack" runat="server" BackColor="White" Font-Bold="True" Font-Size="Medium" Height="50px" OnClick="btnGoBack_Click" Text="Изменить номер кабинета" Width="230px" />
                            </td>
                        </tr>
                    </caption>
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
                <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="3000" OnTick="Timer1_Tick">
                </asp:Timer>
        <br />
        <br /> 
                <ASPNetAudio:Audio ID="Audio1" runat="server" AudioURL="~/sound.mp3" AutoPlay="false"></ASPNetAudio:Audio>
            </ContentTemplate>
        </asp:UpdatePanel>
        </asp:Panel>
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
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Visible="False" />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label><br />  
        <asp:Label ID="lblShowRooms" runat="server"></asp:Label><br />
        <asp:Label ID="lblShowPatients" runat="server"></asp:Label><br /> 
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br/>
        <div id="footer">
             Разработчик: Сайлаубеков Жандос<br />
             Создано на ASP.NET.
        </div>
    </form>
</body>
</html>
