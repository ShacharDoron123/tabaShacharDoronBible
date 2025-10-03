<%@ page title="" language="c#" masterpagefile="~/master.master" autoeventwireup="true" codebehind="updateUser.aspx.cs" inherits="tabaShacharDoronBible.updateUser"%>
<asp:content id="content1" contentplaceholderid="head" runat="server">
</asp:content>
<asp:content id="content2" contentplaceholderid="contentplaceholder1" runat="server">
    <h1>עדכון פרטי משתמש:</h1>
   <form method="post" runat="server">
    <table>
        <tr>
            <td>שם משתמש:</td>
            <td>
                <input type="text" name="uName" disabled="disabled" value="<%= uName %>" />
            </td>
        </tr>
        <tr>
            <td>שם פרטי:</td>
            <td>
                <input type="text" id="fName" name="fName" value="<%= fName %>" />
            </td>
        </tr>
        <tr>
            <td>שם משפחה:</td>
            <td>
                <input type="text" id="lName" name="lName" value="<%= lName %>" />

            </td>
        </tr>
         <tr>
            <td>גיל:</td>
            <td>
                <input type="text" id="age" name="age" value="<%= age %>" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <input type="submit" name="submit" value="שמור" />
            </td>
        </tr>
    </table>
       <h3><%=msg %></h3>
</form>
</asp:content>
