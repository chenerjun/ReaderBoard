﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="ReaderBoard.Detail" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Real time SOAP values in detail </title>
    <meta http-equiv="refresh" content="30000" />
    <script src="http://d3js.org/d3.v3.min.js" lang="JavaScript"></script>
    <script src="Scripts/liquidFillGauge.js" lang="JavaScript"></script>
    <script src="Scripts/liquidFillGauge.js" lang="JavaScript"></script>
    <style>
        table, td, tr {border: 1px solid black;padding:3px 10px 3px 10px;}
        td {width:100px}
        .liquidFillGaugeText { font-family: Helvetica; font-weight: bold; }
        .container {
            display: flex;
        }
        .container > div {
          flex: 1; /*grow*/
        }
        #ENG,#phone {
            background-color:#73acfb;padding:5px,10px,5px,10px;margin: 5px,10px,5px,5px;border:double;border-color:lightcoral;border-width:10px
        }
        #FRE,#chat{
        background-color:#da9dfd;padding:5px,10px,5px,10px;margin: 0px,10px,5px,10px;border:double;border-color:lightgrey;border-width:10px
        }
        p{padding:0px,0px,0px,10px; margin:0px;}

        #phoneE{background-color:lightblue;padding:2px,5px;margin: 2px,5px;}
        #G2TE{background-color:plum;padding:2px,5px;margin: 2px,5px;}
        #ChatE{background-color:lightgoldenrodyellow;padding:2px,5px;margin: 2px,5px;}
        #ChatAppE {background-color:lightgray;padding:2px,5px;margin: 2px,5px;}

        #PhoneF{background-color:#50ffb3;padding:2px,5px;margin: 2px,5px;}
        #G2TF{background-color:lightgoldenrodyellow;padding:2px,5px;margin: 2px,5px;}
        #ChatF{background-color:lime;padding:2px,5px;margin: 2px,5px;}
        #ChatAppF {background-color:lightblue;padding:2px,5px;margin: 2px,5px;}
        .bigfont {
            font-size:28px;
        }
        .midfont {
            font-size:18px;
        }
		.color{
		}
		p,h3 {padding:0px 3px 0px 8px;Font-Size:20px; color:#333000; font-weight:bold;}
		h2 {padding-right:8px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
                    
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font class="midfont" >ComputerTalk Realtime SOAP values in detail</font>
       &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblDate1" runat="server" Text="Refreshing" CssClass="midfont"></asp:Label>&nbsp;&nbsp;&nbsp;@&nbsp;
					<asp:Label ID="lblTime1" runat="server" Text="Refreshing" CssClass="midfont"></asp:Label>
                </div>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>  
            </ContentTemplate>
        </asp:UpdatePanel>

        <div >
            <div id="ENG" class="container">
                <h2> English </h2>
           
            <div id="phoneE">
                <h3>Phone</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady" runat="server" Text=""   ></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered" runat="server" Text=""   ></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled" runat="server" Text=""   ></asp:Label></p>
                <p>GetNumAgentsOnContact: &nbsp <asp:Label ID="lblNumAgentsOnContact" runat="server" Text=""   ></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaitTime" runat="server" Text=""   ></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime" runat="server" Text=""   ></asp:Label></p>
                <p>Get the handled queued time:&nbsp <asp:Label ID="lblGetHandledQueuedTime" runat="server" Text=""   ></asp:Label></p>

            </div>
            <div id="G2TE">
                <h3>Good to Talk</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_g2t" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_g2t" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_g2t" runat="server" Text=""   ></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_g2t" runat="server" Text=""   ></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_g2t" runat="server" Text=""   ></asp:Label></p>
                <p>GetNumAgentsOnContact: &nbsp <asp:Label ID="lblNumAgentsOnContact_g2t" runat="server" Text=""   ></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaittime_g2t" runat="server" Text=""   ></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_g2t" runat="server" Text=""   ></asp:Label></p>
                <p>Get the handled queued time:&nbsp<asp:Label ID="lblGetHandledQueuedTime_g2t" runat="server" Text=""   ></asp:Label></p>
            </div>
            <div id="HealthE">
                <h3>Health</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_hlth" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_hlth" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_hlth" runat="server" Text=""   ></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_hlth" runat="server" Text=""   ></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_hlth" runat="server" Text=""   ></asp:Label></p>
                <p>GetNumAgentsOnContact:&nbsp<asp:Label ID="lblNumAgentsOnContact_hlth" runat="server" Text=""   ></asp:Label></p>
                <p>Longest wait time:&nbsp<asp:Label ID="lblLongestwaittime_hlth" runat="server" Text=""   ></asp:Label> </p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_hlth" runat="server" Text=""   ></asp:Label></p>
                <p>Get the handled queued time: &nbsp<asp:Label ID="lblGetHandledQueuedTime_hlth" runat="server" Text=""   ></asp:Label></p>
            </div>
            <div id="ChatE">
                <h3>Chat Desktop</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_ChatE" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_ChatE" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_ChatE" runat="server" Text=""   ></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_ChatE" runat="server" Text=""   ></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandle_ChatEd" runat="server" Text=""   ></asp:Label></p>
                <p>GetNumAgentsOnContact: &nbsp <asp:Label ID="lblNumAgentsOnContact_ChatE" runat="server" Text=""   ></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaittime_ChatE" runat="server" Text=""   ></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_ChatE" runat="server" Text=""   ></asp:Label></p>
                 <p>Get the handled queued time:&nbsp<asp:Label ID="lblGetHandledQueuedTime_ChatE" runat="server" Text=""   ></asp:Label></p>
            </div>
            <div id="ChatAppE">
                <h3>Chat Mobile</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_ChatAppE" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_ChatAppE" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_ChatAppE" runat="server" Text=""   ></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_ChatAppE" runat="server" Text=""   ></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_ChatAppE" runat="server" Text=""   ></asp:Label></p>
                <p>GetNumAgentsOnContact: &nbsp <asp:Label ID="lblNumAgentsOnContact_ChatAppE" runat="server" Text=""   ></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaittime_ChatAppE" runat="server" Text=""   ></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_ChatAppE" runat="server" Text=""   ></asp:Label></p>
                <p>Get the handled queued time:&nbsp<asp:Label ID="lblGetHandledQueuedTime_ChartAppE" runat="server" Text=""   ></asp:Label></p>
            </div>
         </div>
            


        <div id="FRE" class="container">
            <h2>French</h2>
            <div id="PhoneF">
            <h3>Phone</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_F" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_F" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_F" runat="server" Text=""   ></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_F" runat="server" Text=""   ></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_F" runat="server" Text=""   ></asp:Label></p>
                <p>GetNumAgentsOnContact: &nbsp <asp:Label ID="lblNumAgentsOnContact_F" runat="server" Text=""   ></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaitTime_F" runat="server" Text=""   ></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_F" runat="server" Text=""   ></asp:Label></p>
                <p>Get the handled queued time:&nbsp<asp:Label ID="lblGetHandledQueuedTime_F" runat="server" Text=""   ></asp:Label></p>
<%--                <p>Get CTI User Data:&nbsp <asp:Label ID="lblGetCTIUserData_F" runat="server" Text=""   ></asp:Label></p>
                <p>Get Ice User Data:&nbsp <asp:Label ID="lblGetIceUserData_F" runat="server" Text=""   ></asp:Label></p>--%>
            </div>
            <div id="G2TF">
                <h3>Good to Talk</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_g2t_f" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_g2t_f" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_g2t_f" runat="server" Text=""   ></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_g2t_f" runat="server" Text=""   ></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_g2t_f" runat="server" Text=""   ></asp:Label></p>
                <p>GetNumAgentsOnContact: &nbsp <asp:Label ID="lblNumAgentsOnContact_g2t_f" runat="server" Text=""   ></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaitTime_g2t_f" runat="server" Text=""   ></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_g2t_f" runat="server" Text=""   ></asp:Label></p>
                <p>Get the handled queued time:&nbsp<asp:Label ID="lblGetHandledQueuedTime_g2t_f" runat="server" Text=""   ></asp:Label></p>
            </div>
            <div id="HealthF">
                <h3>Health</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_hlth_f" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_hlth_f" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_hlth_f" runat="server" Text=""   ></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_hlth_f" runat="server" Text=""   ></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_hlth_f" runat="server" Text=""   ></asp:Label></p>
                <p>GetNumAgentsOnContact: &nbsp<asp:Label ID="lblNumAgentsOnContact_hlth_f" runat="server" Text=""   ></asp:Label></p>
                <p>Longest wait time:&nbsp<asp:Label ID="lblLongestwaitTime_hlth_f" runat="server" Text=""   ></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_hlth_f" runat="server" Text=""   ></asp:Label></p>
                <p>Get the handled queued time: &nbsp<asp:Label ID="lblGetHandledQueuedTime_hlth_f" runat="server" Text=""   ></asp:Label></p>
            </div>
            <div id="ChatF">
                <h3>Chat Desk</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_ChatF" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_ChatF" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_ChatF" runat="server" Text=""   ></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_ChatF" runat="server" Text=""   ></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_ChatF" runat="server" Text=""   ></asp:Label></p>
                <p>GetNumAgentsOnContact: &nbsp <asp:Label ID="lblNumAgentsOnContact_ChatF" runat="server" Text=""   ></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaitTime_ChatF" runat="server" Text=""   ></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_ChatF" runat="server" Text=""   ></asp:Label></p>
                <p>Get the handled queued time:&nbsp<asp:Label ID="lblGetHandledQueuedTime_ChatF" runat="server" Text=""   ></asp:Label></p>
            </div>
            <div id="ChatAppF">
                <h3>Chat Mobile</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_ChatAppF" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_ChatAppF" runat="server" Text=""   ></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_ChatAppF" runat="server" Text=""   ></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_ChatAppF" runat="server" Text=""   ></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_ChatAppF" runat="server" Text=""   ></asp:Label></p>
                <p>GetNumAgentsOnContact: &nbsp <asp:Label ID="lblNumAgentsOnContact_ChatAppF" runat="server" Text=""   ></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaittime_ChatAppF" runat="server" Text=""   ></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_ChatAppF" runat="server" Text=""   ></asp:Label></p>
                <p>Get the handled queued time:&nbsp<asp:Label ID="lblGetHandledQueuedTime_charAppF" runat="server" Text=""   ></asp:Label></p>
            </div>
        </div>
        <div>
        <div>
  
          

            
            <table>
                <tr><td>AgentID:<asp:TextBox ID="tbAgentID" runat="server" Width="100px" AutoPostBack="True" OnTextChanged="Page_Load"></asp:TextBox></td>
                    <td>Get CTI User Data</td><td>Get Ice User Data</td><td>GetIceAgentState</td>
                    <td>iSessionID</td><td>iIceID</td><td>szDN</td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnGetAgent" runat="server" Text="Get Agent's....." OnClick="btnGetAgent_Click" /></td>
                    <td><asp:Label ID="lblGetCTIUserData" runat="server" Text=""   ></asp:Label></td>
                    <td><asp:Label ID="lblGetIceUserData" runat="server" Text=""   ></asp:Label></td>
                    <td><asp:Label ID="lblGetIceAgentState" runat="server" Text=""    ></asp:Label></td>
                    <td><asp:Label ID="lbliSessionID" runat="server" Text=""     ></asp:Label></td>
                    <td><asp:Label ID="lbliIcdID" runat="server" Text=""     ></asp:Label></td></td>
                    <td><asp:Label ID="lblszDN" runat="server" Text=""     ></asp:Label></td></td>
                </tr>
                </table>
        </div>
    <div id="test1" class="container">
        <div class="container">
            <table>
                <tr>
                    <td><font style="font-weight: 800">GetTargetASA</font></td>
                    <td>phone</td>
                    <td>G2T</td>
                    <td>Health</td>
                    <td>Chat</td>
                    <td>ChatApp</td>
                </tr>
                <tr>
                    <td>English</td>
                    <td>
                        <asp:Label ID="GetTargetASA_phone_Eng" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="GetTargetASA_G2T_Eng" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="GetTargetASA_Hlth_Eng" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="GetTargetASA_Chat_Eng" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="GetTargetASA_ChatApp_Eng" runat="server"    Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>French</td>
                    <td>
                        <asp:Label ID="GetTargetASA_phone_Fr" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="GetTargetASA_G2T_Fr" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="GetTargetASA_Hlth_Fr" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="GetTargetASA_Chat_Fr" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="GetTargetASA_ChatApp_Fr" runat="server"    Text=""></asp:Label></td>

                </tr>
            </table>
        </div>
        <br />
 
        <div class="container">
            <table>
                <tr>
                    <td><font style="font-weight: 800">NumHandledLessThanTargetASA</font></td>
                    <td>Phone</td>
                    <td>G2T</td>
                    <td>Health</td>
                    <td>Chat</td>
                    <td>ChatApp</td>
                </tr>
                <tr>
                    <td>English</td>
                    <td>
                        <asp:Label ID="lblHandledLessThanTargetASA_Phone_En" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="lblHandledLessThanTargetASA_G2T_En" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="lblHandledLessThanTargetASA_Hlth_En" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="lblHandledLessThanTargetASA_Chat_E" runat="server" Text=""   ></asp:Label></td>
                    <td>
                        <asp:Label ID="lblHandledLessThanTargetASA_ChatApp_E" runat="server" Text=""   ></asp:Label></td>

                </tr>
                <tr>
                    <td>French</td>
                    <td>
                        <asp:Label ID="lblHandledLessThanTargetASA_Phone_Fr" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="lblHandledLessThanTargetASA_G2T_Fr" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="lblHandledLessThanTargetASA_Hlth_Fr" runat="server"    Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="lblHandledLessThanTargetASA_Chat_Fr" runat="server" Text=""   ></asp:Label></td>
                    <td>
                        <asp:Label ID="lblHandledLessThanTargetASA_ChatApp_Fr" runat="server" Text=""   ></asp:Label></td>
                </tr>
            </table>
        </div>
    </div>
           
 
       </div>
 
                <p>QueueStats Phone_Eng: <asp:Label ID="lblQueueStats" runat="server" Text=""   ></asp:Label></p>
                <p>QueueStats Chat_Eng: <asp:Label ID="lblChat_Eng" runat="server" Text=""   ></asp:Label></p>
                <p>QueueStats ChatApp_Eng: <asp:Label ID="lblChatApp_Eng" runat="server" Text=""   ></asp:Label></p>
                <br/>

        <div>
            <asp:Label ID="lblerror1" runat="server" Text=""></asp:Label>
        </div>
            </div>






    </form>
</body>
</html>
