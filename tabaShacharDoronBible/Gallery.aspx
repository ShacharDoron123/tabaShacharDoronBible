<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="tabaShacharDoronBible.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
       img {
    width: 400px;
    height: 300px;
    object-fit: cover;
}
   </style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>גלרייה:</h1>
<a href="https://www.929.org.il/p/home">
<img src="images/929.png" alt="929" class="ratio-4x3">
</a>
<a href="https://he.wikipedia.org/wiki/%D7%AA%D7%A0%22%D7%9A">
<img src="images/wiki.jpg" alt="wikipedia" class="ratio-4x3">
</a>
<a href="https://www.sefaria.org.il/Genesis?tab=contents">
<img src="images/sefaria.png" alt="sefaria" class="ratio-4x3">
</a>
<a href="https://www.youtube.com/watch?v=mDl_wqo_Mxw&t=110s">
<img src="images/youtube.png" alt="youtube" class="ratio-4x3">
</a>
<a href="https://www.youtube.com/watch?v=mDl_wqo_Mxw&t=110s">
<img src="images/youtube.png" alt="youtube" class="ratio-4x3">
</a>
<a href="https://www.youtube.com/watch?v=SSk5FkTkIQc">
<img src="images/youtube.png" alt="youtube" class="ratio-4x3">
</a>

</asp:Content>
