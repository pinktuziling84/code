(function(window){var svgSprite='<svg><symbol id="icon-musicnote" viewBox="0 0 1024 1024"><path d="M512 85.333333C530.346667 85.333333 547.84 91.306667 561.92 101.12 673.28 181.333333 784.64 261.12 815.36 354.56 846.08 448 810.666667 554.666667 746.666667 661.333333 853.333333 384 554.666667 320 554.666667 320L554.666667 768C554.666667 862.293333 469.333333 938.666667 362.666667 938.666667 256 938.666667 170.666667 862.293333 170.666667 768 170.666667 673.706667 256 597.333333 362.666667 597.333333 385.28 597.333333 406.613333 600.746667 426.666667 607.146667L426.666667 170.666667C426.666667 123.733333 465.066667 85.333333 512 85.333333Z"  ></path></symbol><symbol id="icon-musicnoteoff" viewBox="0 0 1024 1024"><path d="M85.333333 224.853333 139.946667 170.666667 853.333333 884.053333 799.146667 938.666667 554.666667 694.186667 554.666667 768C554.666667 862.293333 469.333333 938.666667 362.666667 938.666667 256 938.666667 170.666667 862.293333 170.666667 768 170.666667 673.706667 256 597.333333 362.666667 597.333333 385.28 597.333333 406.613333 600.746667 426.666667 607.146667L426.666667 566.186667 85.333333 224.853333M512 85.333333C530.346667 85.333333 547.84 91.306667 561.92 101.12 673.28 181.333333 784.64 261.12 815.36 354.56 846.08 448 810.666667 554.666667 746.666667 661.333333 853.333333 384 554.666667 320 554.666667 320L554.666667 477.013333 426.666667 349.013333 426.666667 170.666667C426.666667 123.733333 465.066667 85.333333 512 85.333333Z"  ></path></symbol></svg>';var script=function(){var scripts=document.getElementsByTagName("script");return scripts[scripts.length-1]}();var shouldInjectCss=script.getAttribute("data-injectcss");var ready=function(fn){if(document.addEventListener){if(~["complete","loaded","interactive"].indexOf(document.readyState)){setTimeout(fn,0)}else{var loadFn=function(){document.removeEventListener("DOMContentLoaded",loadFn,false);fn()};document.addEventListener("DOMContentLoaded",loadFn,false)}}else if(document.attachEvent){IEContentLoaded(window,fn)}function IEContentLoaded(w,fn){var d=w.document,done=false,init=function(){if(!done){done=true;fn()}};var polling=function(){try{d.documentElement.doScroll("left")}catch(e){setTimeout(polling,50);return}init()};polling();d.onreadystatechange=function(){if(d.readyState=="complete"){d.onreadystatechange=null;init()}}}};var before=function(el,target){target.parentNode.insertBefore(el,target)};var prepend=function(el,target){if(target.firstChild){before(el,target.firstChild)}else{target.appendChild(el)}};function appendSvg(){var div,svg;div=document.createElement("div");div.innerHTML=svgSprite;svgSprite=null;svg=div.getElementsByTagName("svg")[0];if(svg){svg.setAttribute("aria-hidden","true");svg.style.position="absolute";svg.style.width=0;svg.style.height=0;svg.style.overflow="hidden";prepend(svg,document.body)}}if(shouldInjectCss&&!window.__iconfont__svg__cssinject__){window.__iconfont__svg__cssinject__=true;try{document.write("<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size:16px;}</style>")}catch(e){console&&console.log(e)}}ready(appendSvg)})(window)