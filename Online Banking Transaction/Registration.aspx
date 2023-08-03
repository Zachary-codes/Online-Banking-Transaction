﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Online_Banking_Transaction.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <table align="center">
            <tr>
                <td colspan="4" align="center">
                    <h4>Registration</h4>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <asp:Label ID="Label1" runat="server" Text="Account Number"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAccountNumber" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <asp:Label ID="Label2" runat="server" Text="Account Type"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAccountType" runat="server" Text="Savings"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Height="28px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtUsername"
                        SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    <div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Minimum username length must be 6 characters(alphanumeric)" ControlToValidate="txtUsername" ForeColor="Red" 
                        SetFocusOnError="true" Display="Dynamic" ValidationExpression="[a-zA-Z0-9\s]{6,15}$"></asp:RegularExpressionValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:label> 
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                        ControlToValidate="txtPassword" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    <div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Minimum password length must be 6 characters" ControlToValidate="txtPassword" ForeColor="Red" 
                        SetFocusOnError="true" Display="Dynamic" ValidationExpression="[a-zA-Z0-9'@&#.\s]{6,15}$"></asp:RegularExpressionValidator>
                    </div> 
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:label> 
                </td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" 
                        ControlToValidate="txtConfirmPassword" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    <div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ErrorMessage="Minimum password length must be 6 characters" ControlToValidate="txtPassword" ForeColor="Red" 
                            SetFocusOnError="true" Display="Dynamic" ValidationExpression="[a-zA-Z0-9'@&#.\s]{6,15}$"></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Incorrect Password" ForeColor="Red"
                            SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"></asp:CompareValidator>
                    </div> 
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                     <asp:Label ID="Label6" runat="server" Text="Gender"></asp:label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlGender" runat="server" Height="28px" Width="200px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <asp:Label ID="Label8" runat="server" Text="Email"></asp:label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Height="28px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" 
                        ControlToValidate="txtEmail" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                     <div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ErrorMessage="Invalid email format" ControlToValidate="txtEmail" ForeColor="Red" 
                        SetFocusOnError="true" Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                     </div>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <asp:Label ID="Label7" runat="server" Text="Address"></asp:label>
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" Height="28px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" 
                        ControlToValidate="txtAddress" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                     <asp:Label ID="Label9" runat="server" Text="Security Question"></asp:label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlSecurityQuestion" runat="server" Height="28px" Width="200px" DataSourceID="SqlDataSource1" 
                        DataTextField="SecurityQuestionName" DataValueField="SecurityQuestionId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:BankingTransactionDBConnectionString %>" 
                        SelectCommand="SELECT * FROM [SecurityQuestion]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <asp:Label ID="Label10" runat="server" Text="Answer"></asp:label>
                </td>
                <td>
                    <asp:TextBox ID="txtAnswer" runat="server" Height="28px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" 
                        ControlToValidate="txtAnswer" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <asp:Label ID="Label11" runat="server" Text="Amount"></asp:label>
                </td>
                <td>
                    <asp:TextBox ID="txtAmount" runat="server" Height="28px" Width="200px" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" 
                        ControlToValidate="txtAmount" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    <div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ErrorMessage="Amount length must be between 1 to 5 digits" ControlToValidate="txtAmount" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" 
                        ValidationExpression="\d{1,5}"></asp:RegularExpressionValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" Height="28px" OnClick="btnRegister_Click"/>
                </td>
                <td>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="28px" OnClick="btnCancel_Click" CausesValidation="false"/>
                </td>
            </tr>
            <tr>
                 <td colspan="2">
                    <div id="error" runat="server" style="color:red">

                    </div>

                </td>
            </tr>

        </table>

</asp:Content>
