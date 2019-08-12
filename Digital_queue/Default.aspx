<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Digital_queue.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register assembly="ASPNetAudio.NET4" namespace="ASPNetAudio" tagprefix="ASPNetAudio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title>Электронная очередь</title>
    <style type="text/css">
        .auto-style3 {
            width: 282px;
        }
        #footer {
            position: absolute;
            bottom: 8px;
            left: 1px;
            width: 100%;
            height: 40px; /*Height of frame div*/
            overflow: hidden; /*Disable scrollbars. Set to "scroll" to enable*/
            background: #3366FF;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="height=100%">
        <table style="width:100%;">
            <tr>
                <td align="center" colspan="3"><asp:Label ID="lblHeader" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#3366FF" Text="Электронная очередь"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td align="left" class="auto-style3"><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" Text=" Введите номер вашего кабинета: "></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="roomId" runat="server" BackColor="White" Font-Bold="True" Font-Size="Medium" style="margin-left: 0px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSend" runat="server" BackColor="White" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click" Text="Отправить" Width="150px" />
                </td>
                <td align="right">
                     <asp:UpdatePanel ID="UpdatePanel1" runat="server" align="right">
                            <ContentTemplate>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                <asp:Label ID="lblTimer" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#3366FF"></asp:Label>
                                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                                </asp:Timer>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><asp:Label ID="lblShowError" runat="server" Font-Bold="False"></asp:Label></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td><br /><br /></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnPediatria" runat="server" Font-Bold="True" Font-Size="Medium" Height="35px" Text="Монитор Педиатрии" Width="251px" BackColor="White" OnClick="btnPediatria_Click" Visible="False" />
                   </td>
                <td>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnAkusherstvo" runat="server" Font-Bold="True" Font-Size="Medium" Height="35px" Text="Монитор Женского Здоровья" Width="252px" BackColor="White" OnClick="btnAkusherstvo_Click" />
                </td>
                <td>
                    &nbsp;</td>
                <td> &nbsp;</td>
            </tr>
        </table>
        <div id="footer">
             Разработчик: Сайлаубеков Жандос<br />
             Создано на ASP.NET.
        </div>
    </form>
</body>
</html>
