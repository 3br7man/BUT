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
%><style type="text/css">.navbar-fixed-top, .navbar-fixed-bottom {position:relative;}</style>
<%End If%><!-- navbar -->
<div class="navbar navbar-fixed-top navbar-inverse">
    <div class="navbar-inner">
    <div class="container">
        <button type="button" class="btn btn-navbar btn-inverse" data-toggle="collapse" data-target=".nav-collapse-search">
            <i class="icon-search"></i>
        </button>
        <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="brand" href="<%=NavigateURL(PortalSettings.HomeTabId)%>">
            <%=PortalSettings.PortalName%>
            <%--<dnn:logo id="dnnlogo" runat="server"></dnn:logo>--%>
        </a>
        <div class="nav-collapse collapse">
        <div class="pull-left">
            <ddr:DDRMENU ID="navmain" runat="server" MenuStyle="aim" ExcludeNodes="Home,Admin,Host"></ddr:DDRMENU>
        </div>
        <ul class="nav pull-right" role="navigation">
            <li class="divider-vertical"></li>
            <li>
                <!-- nav navbar-search pull-right logincontrols -->
                <ul class="logincontrols">
                    <li><span><i class="icon-user"></i> <dnn:USER ID="dnnUser" runat="server" LegacyMode="true" ShowAvatar="true" ShowUnreadMessages="false" /></span></li>
                    <li><span><i class="icon-lock"></i> <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="true" /></span></li>
                </ul>
            </li>
            <li class="divider-vertical"></li>
            <li class="hidden-tablet hidden-phone"><!--  class="nav navbar-search" -->
                <dnn:Search ID="dnnsearch" runat="server" ShowWeb="false" ShowSite="false" />
            </li>
            <li>
                <ul class="nav nav-tabs pull-right">
                <li class="dropdown">
                <a class="dropdown-toggle language" data-toggle="dropdown" href="#">
                    <i class="icon-globe"></i>
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <dnn:LANGUAGE runat="server" id="dnnLANGUAGE"  showMenu="False" showLinks="True" itemtemplate="&lt;li&gt;&lt;span class=&quot;Language&quot; title=&quot;[CULTURE:NATIVENAME]&quot;&gt;&lt;a href=&quot;[URL]&quot; &gt;&lt;img src=&quot;[I][FLAGSRC]&quot; alt=&quot;[CULTURE:NAME]&quot; /&gt;[CULTURE:NATIVENAME]&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;" AlternateTemplate="&lt;li&gt;&lt;span class=&quot;Language&quot; title=&quot;[CULTURE:NATIVENAME]&quot;&gt;&lt;a href=&quot;[URL]&quot; &gt;&lt;img src=&quot;[I][FLAGSRC]&quot; alt=&quot;[CULTURE:NAME]&quot; /&gt;[CULTURE:NATIVENAME]&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;" SelectedItemTemplate="&lt;li&gt;&lt;span class=&quot;Language selected&quot; title=&quot;[CULTURE:NATIVENAME]&quot; &gt;&lt;img src=&quot;[I][FLAGSRC]&quot; alt=&quot;[CULTURE:NAME]&quot; /&gt;[CULTURE:NATIVENAME]&lt;/span&gt;&lt;/li&gt;" />  
                </ul>
                </li>
            </ul>
          </li>
        </ul>
        </div>
        <div class="nav-collapse-search collapse hidden-desktop">
            <dnn:Search ID="dnnsearchMobile" runat="server" ShowWeb="false" ShowSite="false" />    
        </div>
    </div>
    </div>
</div>