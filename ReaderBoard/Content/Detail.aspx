﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="ReaderBoard.Detail" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://d3js.org/d3.v3.min.js" lang="JavaScript"></script>
    <script src="Scripts/liquidFillGauge.js" lang="JavaScript"></script>
    <script src="Scripts/liquidFillGauge.js" lang="JavaScript"></script>
    <style>
        .liquidFillGaugeText { font-family: Helvetica; font-weight: bold; }
        .container {
            display: flex;
        }
        .container > div {
          flex: 1; /*grow*/
        }
        #ENG,#phone {
            background-color:lightcoral;padding:5px,10px,5px,10px;margin: 5px,10px,5px,5px;border:double;border-color:lightcoral;border-width:10px
        }
        #FRE,#chat{
        background-color:lightgrey;padding:5px,10px,5px,10px;margin: 0px,10px,5px,10px;border:double;border-color:lightgrey;border-width:10px
        }
        p{padding:0px,0px,0px,10px; margin:0px;}

        #phoneE{background-color:lightblue;padding:2px,5px;margin: 2px,5px;}
        #G2TE{background-color:plum;padding:2px,5px;margin: 2px,5px;}
        #ChatE{background-color:lightgoldenrodyellow;padding:2px,5px;margin: 2px,5px;}
        #ChatAppE {background-color:lightgray;padding:2px,5px;margin: 2px,5px;}

        #PhoneF{background-color:coral;padding:2px,5px;margin: 2px,5px;}
        #G2TF{background-color:lightgoldenrodyellow;padding:2px,5px;margin: 2px,5px;}
        #ChatF{background-color:lime;padding:2px,5px;margin: 2px,5px;}
        #ChatAppF {background-color:lightblue;padding:2px,5px;margin: 2px,5px;}
        .bigfont {
            font-size:116px;
        }
        .midfont {
            font-size:42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
                    <asp:Label ID="lblDate1" runat="server" Text="Refreshing" CssClass="midfont"></asp:Label>
                </div>
                <div>
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
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaitTime" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
            </div>
            <div id="G2TE">
                <h3>Good to Talk</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_g2t" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_g2t" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_g2t" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_g2t" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_g2t" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaittime_g2t" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_g2t" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
            </div>
            <div id="ChatE">
                <h3>Chat Desktop</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_ChatE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_ChatE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_ChatE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_ChatE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandle_ChatEd" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaittime_ChatE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_ChatE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
            </div>
            <div id="ChatAppE">
                <h3>Chat Mobile</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_ChatAppE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_ChatAppE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_ChatAppE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_ChatAppE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_ChatAppE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaittime_ChatAppE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_ChatAppE" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
            </div>
         </div>
             <br />
        <div id="FRE" class="container">
            <h2>French</h2>
            <div id="PhoneF">
            <h3>Phone</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_F" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_F" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_F" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_F" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_F" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaitTime_F" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_F" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
            </div>
            <div id="G2TF">
                <h3>Good to Talk</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_g2t_f" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_g2t_f" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_g2t_f" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_g2t_f" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_g2t_f" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaitTime_g2t_f" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_g2t_f" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
            </div>
            <div id="ChatF">
                <h3>Chat Desk</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_ChatF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_ChatF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_ChatF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_ChatF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_ChatF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaitTime_ChatF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_ChatF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
            </div>
            <div id="ChatAppF">
                <h3>Chat Mobile</h3>
                <p>Current Queued:&nbsp<asp:Label ID="lblCurQueued_ChatAppF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Logged On:&nbsp<asp:Label ID="lblAgentsLoggedOn_ChatAppF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of Agents Ready:&nbsp<asp:Label ID="lblAgentsReady_ChatAppF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Num of offered:&nbsp<asp:Label ID="lbloffered_ChatAppF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Number of Handled in this queue:&nbsp<asp:Label ID="lblHandled_ChatAppF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Longest wait time:&nbsp <asp:Label ID="lblLongestwaittime_ChatAppF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>Estimated Wait Time:&nbsp<asp:Label ID="lblWaitTime_ChatAppF" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
            </div>
        </div>
        <div>
        <div>
            <br /><br /><br />
            <asp:Button ID="Button1" runat="server" Text="testing others" OnClick="Button1_Click" />
        </div>
            <div id="test1">
                <p>QueueStats Phone_Eng: <asp:Label ID="lblQueueStats" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>QueueStats Chat_Eng: <asp:Label ID="lblChat_Eng" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>QueueStats ChatApp_Eng: <asp:Label ID="lblChatApp_Eng" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <br/>
                <p>GetTargetASA phone_Eng: <asp:Label ID="GetTargetASA_phone_Eng" runat="server" Font-Size="25px" ForeColor="Red" Text=""></asp:Label></p>
                <p>GetTargetASA Chat_Eng: <asp:Label ID="GetTargetASA_Chat_Eng" runat="server" Font-Size="25px" ForeColor="Red" Text=""></asp:Label></p>
                <p>GetTargetASA ChatApp_Eng: <asp:Label ID="GetTargetASA_ChatApp_Eng" runat="server" Font-Size="25px" ForeColor="Red" Text=""></asp:Label></p>
                <br/>
                <p>NumHandledLessThanTargetASA phone_Eng: <asp:Label ID="lblHandledLessThanTargetASA_Phone_E" runat="server" Font-Size="25px" ForeColor="Red" Text=""></asp:Label></p>
                <p>NumHandledLessThanTargetASA Chat_Eng: <asp:Label ID="lblHandledLessThanTargetASA_Chat_E" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
                <p>NumHandledLessThanTargetASA ChatApp_Eng:<asp:Label ID="lblHandledLessThanTargetASA_ChatApp_E" runat="server" Text="" Font-Size="25px" ForeColor="Red"></asp:Label></p>
            </div>
 
       </div>



        <div>
            <asp:Label ID="lblerror1" runat="server" Text=""></asp:Label>
        </div>
            </div>






    </form>
</body>
</html>