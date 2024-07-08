<!DOCTYPE html>
    <html lang="{LANG.Content_Language}" xmlns="https://www.w3.org/1999/xhtml" prefix="og: https://ogp.me/ns#">
    <head>
        <title>{THEME_PAGE_TITLE}</title>
        <!-- BEGIN: metatags --><meta {THEME_META_TAGS.name}="{THEME_META_TAGS.value}" content="{THEME_META_TAGS.content}">
        <!-- END: metatags -->
        <link rel="shortcut icon" href="{SITE_FAVICON}">
        <!-- BEGIN: links -->
        <link<!-- BEGIN: attr --> {LINKS.key}<!-- BEGIN: val -->="{LINKS.value}"<!-- END: val --><!-- END: attr -->>
        <!-- END: links -->
        <!-- BEGIN: js -->
        <script<!-- BEGIN: ext --> src="{JS_SRC}"<!-- END: ext -->><!-- BEGIN: int -->{JS_CONTENT}<!-- END: int --></script>
        <!-- END: js -->
        <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "Organization",
            "url": "{NV_MY_DOMAIN}",
            "logo": "{NV_MY_DOMAIN}{LOGO_SRC}"
        }
        </script> 
		
    <!--Google dich -->
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
   <script type="text/javascript" >
      function googleTranslateElementInit() {
      new google.translate.TranslateElement({
      pageLanguage: 'vi'
      }, 'PhatTrien-dichvanban');
   }
   </script>
<!--Google dich --> 

<link rel="stylesheet" href="{NV_STATIC_URL}themes/{TEMPLATE}/css/animate.css">
<script src="{NV_STATIC_URL}themes/{TEMPLATE}/js/wow.js"></script>

<script>
    wow = new WOW(
      {
        animateClass: 'animated',
        offset:       100,
        callback:     function(box) {
          console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
        }
      }
    );
    wow.init();
    document.getElementById('moar').onclick = function() {
      var row = document.createElement('row');
      row.className = 'row--purple wow fadeInDown';
      this.parentNode.insertBefore(row, this);
    };
  </script>
  
    </head>
    <body>
