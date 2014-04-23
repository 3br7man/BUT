<a href="#" class="scrollup">Scroll</a>
<div id="Footer">
    <div class="container">
    <div class="row-fluid">
        <div class="span6"><div id="Footer_LeftPane" runat="server"></div></div>
        <div class="span6"><div id="Footer_RightPane" runat="server"></div></div>
    </div>
    <div class="row-fluid">
        <div class="span12"><div id="Copyright"><dnn:COPYRIGHT ID="dnnCopyright" runat="server" /> <dnn:TERMS ID="dnnTerms" runat="server" /><dnn:PRIVACY ID="dnnPrivacy" runat="server" /></div></div>
    </div>
    </div>
</div>
<script type="text/javascript">
$(function () {
    $('.carousel').carousel();

	 $('.dropdown-toggle').click(function (e) {
            e.preventDefault();
            setTimeout($.proxy(function () {
                if ('ontouchstart' in document.documentElement) {
                    $(this).siblings('.dropdown-backdrop').off().remove();
                }
            }, this), 0);
        });

    /* build TOC */
    $('.div-but-toc').toc({
        selectors: '.page h1, .page h2, .page h3'
    });

    // spy for but-toc
    var $window = $(window);
    $('body').attr('data-spy', 'scroll');
    $('body').attr('data-target', '.div-but-toc');
    // but-toc side bar affix
    setTimeout(function () {
        $('.but-toc').affix({
            offset: {
                top: function () {
                    return $window.width() <= 980 ? 290 : 210
                }
            , bottom: 270
            }
        })
    }, 100);

    // make code pretty
    window.prettyPrint && prettyPrint();

    //animations with https://github.com/daneden/animate.css
    $('[data-animation]').mouseover(function () {
        var anim = $(this).attr('data-animation');
        dnnButAnimation($(this), anim);
    });

    function dnnButAnimation(obj, anim) {
        $(obj).removeClass('animated ' + anim).addClass('animated ' + anim);
        var wait = window.setTimeout(function () {
            $(obj).removeClass('animated ' + anim)
        },
            1300
        );
    }

    /* scrolltop cfr http://gazpo.com/2012/02/scrolltop/ */
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.scrollup').fadeIn();
        } else {
            $('.scrollup').fadeOut();
        }
    });

    $('.scrollup').click(function () {
        $("html, body").animate({ scrollTop: 0 }, 600);
        return false;
    });

    $('.butsearch .icon-search').click(function () {
        var e = jQuery.Event("keydown");
        e.which = 13;
        e.keyCode = 13;
        $("#dnn_dnnsearch_txtSearch").trigger(e);
    });

	$('.buttooltip').tooltip();
	
	$("a[data-toggle=popover]")
	  .popover()
	  .click(function (e) {
		  e.preventDefault();
	  });

    /* BUT: fix issue with chrome & ff */
	$('.modal.hide').appendTo('body');



});
</script>
