<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
  <link href="css/bootstrap.min.css" rel="stylesheet" />
  <link href="css/summernote-0.6.16.css" rel="stylesheet" />
  
  <script src="js/jquery-3.1.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/summernote-0.6.16.js"></script>
  <script src="js/app.js"></script>
</head>
<body>
  <form id="form1" runat="server">
    <asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="up1" runat="server">
      <Triggers>
        <asp:AsyncPostBackTrigger ControlID="timerAutoSaveDraft" EventName="Tick" />
      </Triggers>
      <ContentTemplate>
        <asp:Label runat="server" ID="lblDraft" Text=""></asp:Label>
        <asp:Timer runat="server" ID="timerAutoSaveDraft" Interval="5000" OnTick="timerAutoSaveDraft_Tick"></asp:Timer>
      </ContentTemplate>
    </asp:UpdatePanel>
    <div id="divEditorBody">
      <textarea id="editorBody" runat="server" cols="30" rows="10"></textarea>
    </div>
    
    <asp:Button ID="btn" runat="server" OnClick="btn_Click" Text="Click" />
    <input id="txtcontent" runat="server" type="hidden" />
  </form>
</body>
</html>
