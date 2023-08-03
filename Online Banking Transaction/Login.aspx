<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Banking_Transaction.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <table>
            <tr>
                <td colspan="4" align="center">
                    <h4>Login</h4>
                </td>
            </tr>
            <tr> 
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Height="28px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtUsername"
                        SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td style="padding-right:40px;">
                </td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" Height="28px" OnClick="btnRegister_Click" CauseValidation="false"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:label> 
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                        ControlToValidate="txtPassword" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="4" style="padding-left:77px;">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Height="28px" OnClick="btnLogin_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div id="error" runat="server" style="color:red">

                    </div>
                </td>
                <td>
                    <asp:LinkButton ID="lbForgotPasssword" runat="server" Height="28px" CausesValidation="false" OnClick="lbForgotPasssword_Click">Forgot Password</asp:LinkButton>
                </td>
                <td></td>
                <td></td>
            </tr>
        </table>

</asp:Content>
