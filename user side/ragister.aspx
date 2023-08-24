<%@ Page Title="" Language="C#" MasterPageFile="~/user side/umb.master" AutoEventWireup="true" CodeFile="ragister.aspx.cs" Inherits="user_side_ragister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <form id="form1" style=" text-align: center; height: 500px; width: 99%; ">
        <div id="div1" style=" height: 30px; width: 99%; text-align:center; padding-top:10px; font-size:25px; color: #333333" >
           CITIZEN REGISTRATION
         </div><hr />
        <div id="div2" style=" height: 400px; width: 80%; text-align:center; padding-top:10px; margin-left:160px;  color: #333333; ">
           <table id="table1"  style="text-align:center; height:400px; width:60%;">
               <tr>
                   <td id="td1" style="text-align:left;">
                       NAME
                   </td>
                   <td id="td2" style="text-align:left;" >
                       <asp:TextBox ID="TextBox1" runat="server" style="height:30px; width:800px;"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                    <td  id="td3" style="text-align:left;">
                        PASSWORD
                    </td>
                    <td  id="td4" style="text-align:left;">
                        <asp:TextBox ID="TextBox2" runat="server" style="height:30px; width:800px;"></asp:TextBox>
                    </td>
               </tr>
               <tr>
                   <td  id="td5" style="text-align:left;">
                       CONFIEM PASSWORD
                   </td>
                   <td  id="td6" style="text-align:left;">
                       <asp:TextBox ID="TextBox3" runat="server" style="height:30px; width:800px;"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td  id="td7" style="text-align:left;">
                       PHONE NO
                   </td  >
                   <td id="td8" style="text-align:left;">
                       <asp:TextBox ID="TextBox4" runat="server" style="height:30px; width:800px;"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td  id="td9" style="text-align:left;">
                        ADDRESS
                   </td>
                   <td  id="td10" style="text-align:left;">
                       <asp:TextBox ID="TextBox5" runat="server" style="height:30px; width:800px;"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td  id="td11" style="text-align:left;">
                       EMAIL
                   </td>
                   <td  id="td12" style="text-align:left;">
                        <asp:TextBox ID="TextBox6" runat="server" style="height:30px; width:800px;"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td id="td13" style="text-align:left;">
                       GENDER
                   </td>
                   <td id="td14" style="text-align:left;">
                       <asp:RadioButton ID="RadioMale" Text="MALE" GroupName="gender" runat="server" />
                       <asp:RadioButton ID="RadioFemale" Text="FEMALE" GroupName="gender" runat="server" /> 
                   </td>
               </tr>
               <tr>
                   <td colspan="2"  >
                       <asp:Button ID="Button1"  runat="server" Text="insert" Height="30px" Width="100px"  BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White" OnClick="Button1_Click"    />
                       <input id="Reset1"style="height:30px; width:100px; background-color:#333333; color:white; border-color:white;" type="reset" value="reset" />
                   </td>
               </tr>
               
           </table>
            </div>
        <div style="text-align:center; margin-right:30px;">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online %>" SelectCommand="SELECT * FROM [citizen]"></asp:SqlDataSource>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">If You Are Alreday Ragister. Click Hear</asp:LinkButton> 
         </div>
        </form>

</asp:Content>

