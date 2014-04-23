<!--#include file="include/header-navbar-static-top-fixedwidth.ascx" -->
<div id="carouselPane" class="container" runat="server" />
<div class="container">
    <div id="bread_style" class="breadcrumb">
        <a href="<%=NavigateURL(PortalSettings.HomeTabId)%>"><i class="icon-home"></i></a>
        <dnn:BREADCRUMB runat="server" id="dnnBREADCRUMB"  CssClass="Breadcrumb" RootLevel="0" Separator="&nbsp;>&nbsp;" />
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="span12">
            <div id="contentPane" class="contentPane" runat="server" />
        </div>
    </div>
    <div class="row">
        <div class="span3">
            <div id="leftPane" class="leftPane" runat="server" />
        </div>
        <div class="span9">
            <div id="contentPane2" runat="server" class="contentPane2" />
        </div>
    </div>
    <div class="row">
        <div class="span2">
            <div id="d1of6" class="contentPane" runat="server" />
        </div>
        <div class="span2">
            <div id="d2of6" class="contentPane" runat="server" />
        </div>
        <div class="span2">
            <div id="d3of6" class="contentPane" runat="server" />
        </div>
        <div class="span2">
            <div id="d4of6" class="contentPane" runat="server" />
        </div>
        <div class="span2">
            <div id="d5of6" class="contentPane" runat="server" />
        </div>
        <div class="span2">
            <div id="d6of6" class="contentPane" runat="server" />
        </div> 
    </div>
</div>
<!--#include file="include/footer.ascx" -->