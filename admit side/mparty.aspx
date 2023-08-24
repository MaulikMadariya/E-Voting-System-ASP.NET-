<%@ Page Title="" Language="C#" MasterPageFile="~/admit side/amb.master" AutoEventWireup="true" CodeFile="mparty.aspx.cs" Inherits="admit_side_mparty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" style=" text-align: center; height: 500px; width: 99%; ">
        <div id="div1" style=" height: 50px; width: 90%; text-align:left;padding-left:30px; padding-top:10px; ">

            <asp:Button ID="Button1"  runat="server" Text="ADD PARTY" Height="50px" Width="150px" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White" OnClick="Button1_Click" />

        </div><hr/>
        <div id="div2" style="height:450px; width:90%; text-align:center; padding-left:80px; ">
            <asp:GridView ID="Gridview1" runat="server" Font-Bold="False" Font-Size="20px" DataKeyNames="id" AutoGenerateColumns="false" Width="95%" OnRowEditing="Gridview1_RowEditing" OnRowCancelingEdit="Gridview1_RowCancelingEdit" OnRowUpdating="Gridview1_RowUpdating" OnRowDeleting="Gridview1_RowDeleting" AllowPaging="true" PageSize="4" OnPageIndexChanging="Gridview1_PageIndexChanging1">

               
    
            <Columns>
                <asp:TemplateField HeaderText="Party Id">
                    <ItemTemplate>
                        <asp:Label ID="lblid" Text='<%# Bind("id")%>' runat="server" />
                    </ItemTemplate>
            
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Party Image">
                    <ItemTemplate>
                        <asp:Image id="pimage" ImageUrl='<%# Eval("image")%>' Height="80px" Width="80px" runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtimage" Text='<%# Eval("image")%>' runat="server" Width="100px" />
                    </EditItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Party Name">
                    <ItemTemplate>
                        <asp:Label ID="lblname" Text='<%# Eval("name")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtname" Text='<%# Eval("name")%>' runat="server" Width="100px" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Phone No">
                    <ItemTemplate>
                        <asp:Label ID="Lblphone" Text='<%# Eval("phone")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtphone" Text='<%# Eval("phone")%>' runat="server" Width="100px"/>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="Lblemail" Text='<%# Eval("email")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtemail" Text='<%# Eval("email")%>' runat="server" Width="100px" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="City">
                    <ItemTemplate>
                        <asp:Label ID="lblcity" Text='<%# Eval("city")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcity" Text='<%# Eval("city")%>' runat="server" Width="100px"/>
                    </EditItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Details">
                    <ItemTemplate>
                        <asp:Label ID="lbldetails" Text='<%# Eval("details")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdetails" Text='<%# Eval("details")%>' runat="server" Width="100px"/>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Total Vote">
                    <ItemTemplate>
                        <asp:Label ID="lbltvote" Text='<%# Eval("tvote")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txttvote" Text='<%# Eval("tvote")%>' runat="server" Width="100px"/>
                    </EditItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:Button Text="Edit" CommandName="Edit" ToolTip="Edit" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"/>
                    </ItemTemplate>
                    <EditItemTemplate >
                        <asp:Button Text="Update" CommandName="Update" ToolTip="Update" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"/>
                        <asp:Button ID="Cancel" Text="Cancel" CommandName="Cancel" ToolTip="Cancel" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"/>
                        
                    </EditItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button Text="Delete" CommandName="Delete" ToolTip="Delete" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"/>
                    </ItemTemplate>
                </asp:TemplateField> 
            </Columns>
            </asp:GridView>
            
        </div>
    </form>
</asp:Content>

   
