<%@ Control language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="HostName" Src="~/Admin/Skins/hostname.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Breadcrumb" Src="~/Admin/Skins/breadcrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Search" Src="../assets/ctl/search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Privacy" Src="~/Admin/Skins/privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Terms" Src="~/Admin/Skins/terms.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.UI.Skins" Assembly="DotNetNuke" %>
<%--<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>--%>
<%@ Register TagPrefix="ddr" TagName="DDRMENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Meta" Src="~/Admin/Skins/Meta.ascx" %>
<dnn:Meta ID="Meta1" runat="server" Name="viewport" Content="width=device-width, initial-scale=1.0" />
<dnn:Meta ID="Meta2" runat="server" Name="X-UA-Compatible" Content="IE=edge" />
<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" PathNameAlias="SkinPath" FilePath="js/bootstrap.min.js"  />
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" PathNameAlias="SkinPath" FilePath="css/bootstrap.min.css"  Priority="107" />
<dnn:DnnCssInclude ID="DnnCssInclude2" runat="server" PathNameAlias="SkinPath" FilePath="css/bootstrap-responsive.min.css"  Priority="108" />
<dnn:DnnCssInclude ID="DnnCssInclude7" runat="server" PathNameAlias="SkinPath" FilePath="assets/css/docs.css"  Priority="109" />
<dnn:DnnCssInclude ID="DnnCssInclude8" runat="server" PathNameAlias="SkinPath" FilePath="assets/css/prettify.css"  Priority="110" />
<dnn:DnnCssInclude ID="DnnCssInclude4" runat="server" PathNameAlias="SkinPath" FilePath="assets/css/animate.min.css"  Priority="111" />
<dnn:DnnCssInclude ID="DnnCssInclude5" runat="server" FilePath="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css"  Priority="112" />
<dnn:DnnCssInclude ID="DnnCssInclude6" runat="server" FilePath="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"  Priority="113" />
<dnn:DnnCssInclude ID="DnnCssInclude10" runat="server" PathNameAlias="SkinPath" FilePath="assets/js/video-js/video-js.css"  Priority="114" />
<dnn:DnnCssInclude ID="DnnCssInclude3" runat="server" PathNameAlias="SkinPath" FilePath="css/style.css"  Priority="115" />
<dnn:DnnCssInclude ID="DnnCssInclude9" runat="server" PathNameAlias="SkinPath" FilePath="assets/css/but.css"  Priority="116" />
<dnn:DnnJsInclude ID="DnnJsInclude2" runat="server" PathNameAlias="SkinPath" FilePath="assets/js/jquery.toc.min.js" />
<dnn:DnnJsInclude ID="DnnJsInclude4" runat="server" PathNameAlias="SkinPath" FilePath="assets/js/prettify.js"></dnn:DnnJsInclude>
<dnn:DnnJsInclude ID="DnnJsIncludeApp" runat="server" PathNameAlias="SkinPath" FilePath="assets/js/application.js" />
<dnn:DnnJsInclude ID="DnnJsInclude5" runat="server" PathNameAlias="SkinPath" FilePath="assets/js/video-js/video.js"></dnn:DnnJsInclude>
<script>videojs.options.flash.swf = "<%=SkinPath%>assets/js/video-js/video-js.swf";</script>
<div id="ControlPanel" runat="server"/>
<%
    '
    ' set navbar position to relative if control panel is present,
    ' which otherwise hides it
    '
    If ControlPanel.HasControls = True Then
%><style type="text/css">#scrolldeckheader {position:relative;}</style>
<%End If%>