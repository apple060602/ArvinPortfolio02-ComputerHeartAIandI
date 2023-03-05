<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="test.login" %>

<!DOCTYPE html>

<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link rel="icon" type="image/png" href="./000.png">
<appSettings><add key="ValidationSettings:UnobtrusiveValidationMode" value="none" /></appSettings>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel=stylesheet type="text/css" href="style.css">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Computer heart AI And I</title>

    <style>
    *{
    padding: 0;
    margin: 0;
    list-style: none;
    font-family: 微軟正黑體;
    box-sizing:border-box;
  }


        .auto-style1 {
            width: 100%;
        }


  .list-unstyled{
    display: block;
    margin: 150px 85px;
  }
  
  body{
    background-color: #333;
    color: #FFF;
  }
  .header{
    top: 0;
    z-index: 100;
    width: 100%;
    height: 50px;
    background-color: #44385c; /*#202923;*/
    position: fixed;
    box-shadow: 0px 2px 6px #444;
  }
  .logo{
    font-size: 0;
    width: 60px;
    height: 40px;
    position: relative;
    top: 5px;
    left: 10px;
  }
  .logo a{
    display:inline-block;
  }
  .logo a img{
    display:block;
  }
  /* 漢堡選單 */
  #menu_check{
    display:none;
  }
  .bar{
    width: 40px;
    height: 40px;
    background-color: #63ad7c; /*#aaa*/;
    position: absolute;
    right: 5px;
    top: 5px;
    cursor: pointer;
    padding: 2px;
    box-sizing:border-box;
  
  }
  .nav_bar{
    width: 80%;
    height: 3px;
    background-color: #96f2b5; /*#000*/;
    position: relative;
    display: block;
    top:45%;
    margin: auto;
    transition:.3s;
  
    
  }
  .nav_bar:before,.nav_bar:after{
    content:"";
    position: absolute;
    width: 100%;
    height: 100%;
    background-color: #96f2b5; /*#000*/;
    display: block;
    transition:.5s;
    
  }
  .nav_bar:before{
    top:-8px;
  }
  .nav_bar:after{
    top:8px;
  }
  
  #menu_check:checked+.bar .nav_bar{
    background-color: transparent;
  }
  #menu_check:checked+.bar .nav_bar:before{
    top:0px;
    transform:rotate(45deg);
  }
  #menu_check:checked+.bar .nav_bar:after{
    top:0px;
    transform:rotate(-45deg);
  }
  
  
  /* 選單 */
  nav{
    font-size: 0;
    position: absolute;
    top: 50px;
    width: 100%;
    left: -100%;
    transition:0.5s;
    height: calc(100vh - 50px);
    background-color: #202923;
  
   
  }
  .m_li{
    display:block;
    /* text-decoration:none; */
    color:#FFF; /*字體顏色*/
    border-radius:10px; /*給他圓角*/
    font-weight: bolder; /*字體加粗*/
    width: 100%;
    padding: 10px 10px;
    background-color: #202923;
    border-bottom:1px solid #aaa;
    font-size: 20px;
  }
  .m_li:hover{
    text-decoration:none;
    background-color: #ff7;
  }
  
  #menu_check:checked~ nav{
    left:0;
  }
  .clear_fix{
    clear: both;
  }
  
  
  @media screen and (min-width:768px) {
    .bar{
      display:none;
    }
    .logo,nav{
      display:inline-block;
      vertical-align: middle;
    }
      nav{
       display:block;
        width: auto;
        position: relative;
        background-color: transparent;
        top: 0px;
        left: 0;
        height: 50px;
        float: right;
      }
      .m_li{
        display:inline-block;
        width: auto;
        border-bottom:none;
        height: 50px;
        padding: 10px 25px;
        vertical-align: top;
        background-color: transparent;
    }
  }
          .footer{
              background-color: rgb(56, 23, 23);
              color:#aaa;
              text-align: center;
              padding: 10px 0;
              position: relative;
              bottom: 0;
          }

          @media screen and (min-width: 768px){
              
              .item-group{
                  display:flex;
              }
              .service .item{
                  display: flex;
                  margin: 0px;
              }
              .service .pic,
              .service .text{
                  width: 50%;
                  margin: 0;
              }
              .service .text{
                  display: flex;       /*是橫排*/
                  padding: 0 20px;
                  flex-direction: column;  /*變成直排*/
                  justify-content: center;  /*主軸對齊方式*/
                  box-sizing: border-box;
              }
              .service h3{
                  text-align: center;
              }
          }
    </style>
</head>

<body>
    <!-- MENU -->
    <!-- MENU -->
    <!-- MENU -->
    <div class="header">
            <div class="logo">
              <a href="index.html">
                 <img src="./image/logo.png" width="100%" height="100%">
              </a>
            </div>
          <input type="checkbox" id="menu_check">
          <label for="menu_check" class="bar">
            <span class="nav_bar"></span>
          </label>
          <nav>
            <a href="./introduction.html" class="m_li">簡介</a>
            <a href="./history.html" class="m_li">歷史背景</a>
            <a href="./up.html" class="m_li">成長背景</a>
            <a href="./technology.html" class="m_li">技術講解</a>
            <a href="#" class="m_li">功能性比較</a>
            <a href="./web03.aspx" class="m_li">登入</a>
            <a href="./login.aspx" class="m_li">註冊</a>
          </nav>
        <div class="clear_fix"></div>
        
    </div>
        <!-- -----------------內容區--------------- -->
       
        <body>
            <form id="form1" runat="server">
                <div>
                    <br />
                    <br />
                    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF66" BorderColor="#FFFF66" ForeColor="Blue">
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 會員註冊系統<br /> 
                     
                        <br />
                    </asp:Panel>
                    <asp:Label ID="Label3" runat="server" Text="會員資訊"></asp:Label>
                    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="姓名："></asp:Label>
                    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="必填*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
        &nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="account" runat="server" Text="帳號："></asp:Label>
                    <asp:TextBox ID="accountbox" runat="server" Height="19px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="accountbox" ErrorMessage="必填*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="accountbox" ErrorMessage="  請至少六字元" ForeColor="#CC0000" ValidationExpression="[a-zA-Z0-9]{6,}"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="password" runat="server" Text="密碼："></asp:Label>
                    <asp:TextBox ID="passwordbox" runat="server" TextMode="Password" ToolTip="請輸入密碼"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordbox" ErrorMessage="必填*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="confirm" runat="server" Text="確認密碼："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="passwordbox" ErrorMessage="密碼不一致" ForeColor="#CC0000" ControlToCompare="TextBox1"></asp:CompareValidator>
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td>
                    <asp:Label ID="gender" runat="server" Text="性別"></asp:Label>
                                <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="boy" runat="server" Text="男" OnCheckedChanged="boy_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="girl" runat="server" Text="女" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ScriptManager ID="ScriptManager2" runat="server">
                                </asp:ScriptManager>
                            </td>
                        </tr>
                    </table>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
                        <ContentTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="出生日期："></asp:Label>
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="26px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="101px">
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="81px">
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="DropDownList3" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
                    <br />
                    <asp:Panel ID="Panel2" runat="server">
                        居住城市：<asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>台北市</asp:ListItem>
                            <asp:ListItem>桃園市</asp:ListItem>
                            <asp:ListItem>新北市</asp:ListItem>
                            <asp:ListItem>新竹市</asp:ListItem>
                            <asp:ListItem>台南市</asp:ListItem>
                            <asp:ListItem>苗栗縣</asp:ListItem>
                        </asp:DropDownList>
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="Panel3" runat="server">
                        電子信箱：<asp:TextBox ID="email1" runat="server"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="請輸入正確格式" ControlToValidate="email1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" BackColor="White" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                    </asp:Panel>
                    <br />
                    <br />
                    <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="立即註冊" Width="211px" />
                    <br />
                    <br />
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\member.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [member] WHERE [account] = @account" InsertCommand="INSERT INTO [member] ([account], [password]) VALUES (@account, @password)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [member]" UpdateCommand="UPDATE [member] SET [password] = @password WHERE [account] = @account">
                        <DeleteParameters>
                            <asp:Parameter Name="account" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="accountbox" Name="account" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="passwordbox" Name="password" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="password" Type="String" />
                            <asp:Parameter Name="account" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </form>
        </body>

        <!-- -----------------內容區--------------- -->
        <div class="footer">
          Copyright 2020 &copy;  All Rights Reserved.
        </div>



    <!-- Live Chat Widget powered by https://keyreply.com/chat/ -->
<!-- Advanced options: -->
<!-- data-align="left" -->
<!-- data-overlay="true" -->
<script data-align="right" data-overlay="false" id="keyreply-script" a href="//index.html" src="//keyreply.com/chat/widget.js" data-color="#123" data-apps="JTdCJTIybGluZSUyMjolMjJDb21wdXRlciUyMGhlYXJ0JTIwQUklMjBBbmQlMjBJJTIyLCUyMnNreXBlJTIyOiUyMkNvbXB1dGVyJTIwaGVhcnQlMjBBSSUyMEFuZCUyMEklMjIsJTIydHdpdHRlciUyMjolMjJDb21wdXRlciUyMGhlYXJ0JTIwQUklMjBBbmQlMjBJJTIyLCUyMndoYXRzYXBwJTIyOiUyMkNvbXB1dGVyJTIwaGVhcnQlMjBBSSUyMEFuZCUyMEklMjIsJTIyc21zJTIyOiUyMkNvbXB1dGVyJTIwaGVhcnQlMjBBSSUyMEFuZCUyMEklMjIsJTIycGhvbmUlMjI6JTIyQ29tcHV0ZXIlMjBoZWFydCUyMEFJJTIwQW5kJTIwSSUyMiwlMjJ0ZWxlZ3JhbSUyMjolMjIwOTIzNDU2Nzg5JTIyLCUyMmZhY2Vib29rJTIyOiUyMkNvbXB1dGVyJTIwaGVhcnQlMjBBSSUyMEFuZCUyMEklMjIsJTIyZW1haWwlMjI6JTIyQ29tcHV0ZXIlMjBoZWFydCUyMEFJJTIwQW5kJTIwSSUyMiU3RA=="></script>
</body>
</html> 