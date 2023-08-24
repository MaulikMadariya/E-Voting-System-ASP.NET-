<%@ Page Title="" Language="C#" MasterPageFile="~/user side/uvote.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="user_side_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" style=" text-align: center; height: 500px; width: 99%; ">
           <div id="div1" style=" height: 30px; width: 99%; text-align:center; padding-top:10px; font-size:25px; color: #333333" >
           PROFILE
         </div><hr />
        <div id="div2" style="height:450px; width:60%; text-align:center; padding-left:400px; padding-top:6px;">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="profile" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    
                    <table id="tb1" border="15" height="425px" width="450px" style="font-size:20px">
                        <tr>
                            <th colspan="2">
                               
                              YOUR PROFILE
                          
                                     </th>
                        </tr>
                    
                    
                    <tr>
                        <th>
                            Name
                        </th>
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Phone
                        </th>
                        <td>
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                        </td>
                    </tr>
                    <tr>
                        <th>
                          password
                        </th>
                        <td>
                           <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' /> 
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Email
                        </th>
                        <td>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />                            
                        </td>
                    </tr>
                    <tr>
                        <th>
                          Gender
                        </th>
                        <td>
                            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                        </td>
                    </tr>
                    </table>
 
                </ItemTemplate>
                <EditItemTemplate>
                     <asp:TextBox ID="txtpassword" Text='<%# Eval("password")%>' runat="server" Width="100px" />
                     <asp:TextBox ID="txtemail" Text='<%# Eval("email")%>' runat="server" Width="100px" />
                     <asp:TextBox ID="Txtgender" Text='<%# Eval("gender")%>' runat="server" Width="100px" />
                </EditItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="profile" runat="server" ConnectionString="<%$ ConnectionStrings:online %>" SelectCommand="SELECT * FROM [citizen] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Id" SessionField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</asp:Content>

