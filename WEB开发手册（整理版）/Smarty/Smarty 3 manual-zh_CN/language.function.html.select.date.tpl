<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>{html_select_date} | Smarty</title>
    <meta name="description" content="{html_select_date}">
    <meta name="keywords" content=", ldelim, html_select_date, rdelim, ">
    <style type="text/css" media="screen">
    @import "css/screen/global.css";
    @import "css/typography.css";
    </style>
    
    <!--[if lt IE 7]>
    <style type="text/css" media="screen">
    @import "css/screen/fix_ie.css";
    </style>
    <![endif]-->
    
    <!--[if IE 7]>
    <style type="text/css" media="screen">
    @import "css/screen/fix_ie7.css";
    </style>
    <![endif]-->
    
    <link rel="stylesheet" type="text/css" media="print" href="css/typography.css">
    <link rel="stylesheet" type="text/css" media="print" href="css/print/global.css">
    <link rel="stylesheet" type="text/css" media="screen" href="js/bbedit.css">
    
    <script type="text/javascript" src="../../../www.google.com/jsapi_91823002"></script>
    <script type="text/javascript" src="../../../ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="../../../ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/jquery.bbedit.min.js"></script>
    
    <link href="js/prettify/prettify.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="js/prettify/prettify.js"></script>    
    
    <script type="text/JavaScript"> 
     $(document).ready(function(){
       prettyPrint();
              $("#commentFormBodyText").bbedit({
           highlight: true,
           enableSmileybar: false,
           tags: 'b,i,url,code,quote'
       });
       $("#commentPreviewText").hide();
       $("#commentPostedText").hide();
       $("#commentBusyIcon").hide();
       $("#commentForm").submit(function() { return false; });
       $("#commentFormPreviewButton").click(function(){
         $("#commentBusyIcon").show();
         $.post("/comments/preview", { body: $("#commentFormBodyText").val(), author: $("#commentFormAuthorText").val() },
            function(data){
              var options = {};
              if($("#commentPreviewText").is(":visible")) {
                $("#commentPreviewText").hide('blind',options,500,function() {
                  $("#commentPreviewText").html(data);
                  $("#commentPreviewText").show('blind',options,500,function() {
                    $("#commentBusyIcon").hide();
                  });                  
                });
              } else {
                $("#commentPreviewText").html(data);
                $("#commentPreviewText").show('blind',options,500,function() {
                  $("#commentBusyIcon").hide();
                });                  
              }
            });
       }); 
       $("#commentFormPostButton").click(function(){
         $("#commentBusyIcon").show();
         $.post("/comments/post", { body: $("#commentFormBodyText").val(), author: $("#commentFormAuthorText").val(), page_id: $("#commentFormPageID").val(), email: $("#commentFormEmailText").val(), challenge: $("#commentFormChallengeText").val(), obf: $("#commentFormChallengeObf").val()},
            function(data){
              var options = {};
              $("#commentPostedText").html(data);
              if($("#commentPreviewText").is(":visible")) {
                $("#commentPreviewText").hide('blind',options,500,function() {
                  $("#commentPostedText").show('blind',options,500,function() {
                    $("#commentBusyIcon").hide();
                    $("#commentFormPostButton").attr('disabled','true'); 
                    $("#commentFormPreviewButton").attr('disabled','true'); 
                  });
                });
              } else {
                $("#commentPostedText").show('blind',options,500,function() {
                  $("#commentBusyIcon").hide();
                  $("#commentFormPostButton").attr('disabled','true'); 
                  $("#commentFormPreviewButton").attr('disabled','true'); 
                });
              }                  
            });
       });
            });
          function clearDefaultandCSS(el) {
     	if (el.defaultValue==el.value) el.value = ""
     	// If Dynamic Style is supported, clear the style
     	if (el.style) el.style.cssText = ""
     }
         </script>
    
    <script type="text/javascript" src="js/smarty.js"></script>
  	<script type="text/javascript" src="../../../partner.googleadservices.com/gampad/google_service.js"> 
  	</script> 
  	<script type="text/javascript"> 
  	  GS_googleAddAdSenseService("ca-pub-8878956630941543");
  	  GS_googleEnableAllServices();
  	</script> 
  	<script type="text/javascript"> 
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_footer");
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_left_box");
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_right_skyscraper");
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_top_banner");
  	</script> 
  	<script type="text/javascript"> 
  	  GA_googleFetchAds();
  	</script>
  </head>
  <body>
  <a class="skiplink" accesskey="S" href="index.htm">返回导航菜单</a>
  <div id="wrapper">
      <div id="header">
        <div id="header_logo">
          <div id="logo"><a href="../../index.htm"><img src="../../images/logo_print.gif" width="249" height="74" alt="Smarty Template Engine"></a></div>
        </div>
        <div id="header_ad" style="float: right;">
      		<script type="text/javascript"> 
      		  GA_googleFillSlot("smarty_footer");
      		</script>
      	</div>
        <div class="clear"></div>
      </div>
      <div id="nav">
        <ul class="nav navHorz">
		  		  		  		  		  		              		<li><a href="../../index.htm" accesskey="1">Home</a></li>
					  		              		<li><a href="../../download/index.htm" >Download</a></li>
					  		              		<li><a href="../../documentation/index.htm" accesskey="6">Documentation</a></li>
					  		              		<li><a href="../../../smarty.incutio.com/query_B576CE4C" >FAQ</a></li>
					  		              		<li><a href="../../forums/index.htm" >Forum</a></li>
					  		              		<li><a href="../../mailinglists/index.htm" >Mailing Lists</a></li>
					          </ul>
        
        <form action="../../search/index.htm" method="get">
          <p>
            <input type="text" name="q" size="30" value="Search..." accesskey="4" class="field" onclick="smarty.removeDefaultValue(this, 'Search...');" onfocus="smarty.removeDefaultValue(this, 'Search...');" onblur="smarty.restoreDefaultValue(this, 'Search...');">
            in
            <select name="show" class="field">
              <optgroup label="Documentation">
                <option value="manual-en">English</option>
                <option value="manual-de">German</option>
                <option value="manual-es">Spanish</option>
                <option value="manual-fr">French</option>
                <option value="manual-it">Italian</option>
                <option value="manual-ja">Japanese</option>
                <option value="manual-pt_BR">Portuguese</option>
                <option value="manual-ru">Russian</option>
              </optgroup>
              <optgroup label="Mailing Lists">
                <option value="smarty-general-list">General</option>
                <option value="smarty-dev-list">Development</option>
              </optgroup>
            </select>
            <input type="image" src="../../images/search.png" alt="Submit Search" class="button">
          </p>
        </form>
        <div class="clear"></div>
      </div>
     
      <div class="col colSecondary">
        <div class="box box1">
          <h1 class="boxHead">Get Smarty</h1>
          <ul class="nav navVert"
            ><li><a href="../../download/index.htm">Download</a></li
          ></ul>
        </div>
        
        <div class="box box1">
          <h1 class="boxHead">About Smarty</h1>
          <ul class="nav navVert"
          ><li><a href="../../about_smarty/index.htm">All About Smarty</a></li
            ><li><a href="../../why_use/index.htm">Why use it?</a></li
              ><li><a href="../../use_cases/index.htm">Use Cases and Work Flow</a></li
            ><li><a href="../../syntax_comparison/index.htm">Syntax Comparison</a></li
            ><li><a href="../../inheritance/index.htm">Template Inheritance</a></li
            ><li><a href="../../best_practices/index.htm">Best Practices</a></li
            ><li><a href="../../crash_course/index.htm">Crash Course</a></li
            ><li><a href="../../v3_overview/index.htm">Version 3 Overview</a></li
            ><li><a href="../../forums/viewforum_98ED2CF7.php">Testimonials</a></li
              ><li><a href="../../../smarty.incutio.com/query_B3046D2B">Sites Using Smarty</a></li
          ></ul>
        </div>
        
        <div class="box box1">
          <h1 class="boxHead">Resources</h1>
          <ul class="nav navVert"
          ><li><a href="../../../smarty-php.googlecode.com/svn/trunk/distribution/SMARTY_2_BC_NOTES.txt">Smarty 2-&gt;3 upgrade notes</a></li
            ><li><a href="../../../smarty-php.googlecode.com/svn/trunk/distribution/README/index.htm">README (from distro)</a></li
          ><li><a href="../../quick_install/index.htm">Quick Install</a></li
	      ><li><a href="../../documentation/index.htm">Documentation</a></li
		  ><li><a href="../../forums/index.htm">Discussion Forums</a></li
	      ><li><a href="../../sampleapp1/index.htm">Example App</a></li
          ><li><a href="irc_F08802D1">IRC (chat)</a></li
          ><li><a href="../../mailinglists/index.htm">Mailing Lists</a></li
          ><li><a href="../../../smarty.incutio.com/index.htm">Community Wiki</a></li
          ><li><a href="../../../smarty.incutio.com/query_B576CE4C">FAQ (wiki)</a></li
          ><li><a href="../../forums/viewforum_4EBD8F8F.php" accesskey="5">FAQ (forums)</a></li
          ><li><a href="../../../www.jdoqocy.com/click-4355642-10718312_A21397F0">Hire Smarty Developers</a></li
          ></ul>
        </div>
        <div class="box box1">
          <h1 class="boxHead">Links</h1>
          <ul class="nav navVert"
          ><li><a href="../../../www.php.net/index.htm">www.php.net</a></li
            ><li><a href="../../../www.phpinsider.com/index.htm">www.phpinsider.com</a></li
          ></ul>
        </div>

        <div class="box box1" id="smartyIcons">
          <h1 class="boxHead">Smarty Icon</h1>
          <div align="center" class="boxContent">
            <p style="text-align: left">You may use the Smarty logo according to the <a href="../../copyright/index.htm">trademark notice</a>.</p>
            <p>
              <img src="../../images/icons/smarty_icon.gif" width="88" height="31" alt="Smarty Template Engine">
              <img src="../../images/icons/smarty-80x15.png" width="80" height="15" alt="Smarty Template Engine">
            </p>
            <p style="text-align: left">
              For sponsorship, advertising, news or other inquiries, contact us at: <script type="text/javascript" language="javascript">
{document.write(String.fromCharCode(60,97,32,104,114,101,102,61,34,109,97,105,108,116,111,58,119,101,98,109,97,115,116,101,114,64,115,109,97,114,116,121,46,110,101,116,34,32,62,119,101,98,109,97,115,116,101,114,64,115,109,97,114,116,121,46,110,101,116,60,47,97,62))}
</script>

            </p>
            <p>
              Check reviews of PHP <a href="../../../www.webhostingbreak.com/list/php-web-hosting/index.htm">Web Hosting</a>, compatible with Smarty Templates
            </p>
      			<p>
                	<script type="text/javascript"> 
      			  GA_googleFillSlot("smarty_left_box");
      			</script>
      			</p>
          </div>
        </div>        

      </div><!-- end colSecondary -->
      
      <div class="col colMain" id="mainContent">
      
<div class="navheader">
<table width="100%" summary="Navigation header">
<tr><th colspan="3" align="center">{html_select_date}</th></tr>
<tr>
<td width="20%" align="left">
<a accesskey="p" href="language.function.html.radios.tpl">Prev</a> </td>
<th width="60%" align="center">Chapter 8. 自定义函数</th>
<td width="20%" align="right"> <a accesskey="n" href="language.function.html.select.time.tpl">Next</a>
</td>
</tr>
</table>
<hr>
</div>
<div class="sect1" title="{html_select_date}">
<div class="titlepage"><div><div><h2 class="title" style="clear: both">
<a name="language.function.html.select.date"></a>{html_select_date}</h2></div></div></div>
<p>
   <code class="varname">{html_select_date}</code>是一个
   <a class="link" href="language.custom.functions.tpl" title="Chapter 8. 自定义函数">自定义函数</a>，用于创建一个选择日期的下拉框。
   它可以显示任何或者全部的年、月、日。
   任何不在上面列表中的键值对属性，都会被输出到<code class="literal">&lt;select&gt;</code>标签中作为属性和值。
 </p>
<div class="informaltable"><table border="1">
<colgroup>
<col align="center">
<col align="center">
<col align="center">
<col align="center">
<col>
</colgroup>
<thead><tr>
<th align="center">参数名称</th>
<th align="center">类型</th>
<th align="center">必选参数</th>
<th align="center">默认值</th>
<th>说明</th>
</tr></thead>
<tbody>
<tr>
<td align="center">prefix</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">Date_</td>
<td>下拉框名称的前缀</td>
</tr>
<tr>
<td align="center">time</td>
<td align="center">
      <a class="ulink" href="../../../www.php.net/function.time" target="_top">时间戳</a>, 
      <a class="ulink" href="../../../www.php.net/class.DateTime" target="_top">DateTime</a>, 
	  mysql时间戳或任何<a class="ulink" href="../../../www.php.net/strtotime/index.htm" target="_top"><code class="varname">strtotime()</code></a>
	  能支持的字符串，或者是数组（当设置了field_array）
     </td>
<td align="center">No</td>
<td align="center">当前 <a class="ulink" href="../../../www.php.net/function.time" target="_top">时间戳</a>
</td>
<td>
	 默认选中的日期。如果提供了数组，那么field_array和prefix属性将单独作用在每个数组元素上，
	 包括年月日。
     </td>
</tr>
<tr>
<td align="center">start_year</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">当前年份</td>
<td>
	 下拉框开始显示的年份，可以设置一个年份数字或者默认当前年份(+/- N)</td>
</tr>
<tr>
<td align="center">end_year</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">same as start_year</td>
<td>
	 下拉框结束显示的年份，可以设置一个年份的数字或者默认当前年份(+/- N)</td>
</tr>
<tr>
<td align="center">display_days</td>
<td align="center">boolean</td>
<td align="center">No</td>
<td align="center"><code class="constant">TRUE</code></td>
<td>是否显示日期</td>
</tr>
<tr>
<td align="center">display_months</td>
<td align="center">boolean</td>
<td align="center">No</td>
<td align="center"><code class="constant">TRUE</code></td>
<td>是否显示月份</td>
</tr>
<tr>
<td align="center">display_years</td>
<td align="center">boolean</td>
<td align="center">No</td>
<td align="center"><code class="constant">TRUE</code></td>
<td>是否显示年份</td>
</tr>
<tr>
<td align="center">month_format</td>
<td align="center">array</td>
<td align="center">No</td>
<td align="center">null</td>
<td>月份显示的字符串的数组.如 array(1 =&gt; 'Jan', …, 12 =&gt; 'Dec')</td>
</tr>
<tr>
<td align="center">month_names</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">%B</td>
<td>月份显示的格式 (strftime)</td>
</tr>
<tr>
<td align="center">day_format</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">%02d</td>
<td>日期显示的格式 (sprintf)</td>
</tr>
<tr>
<td align="center">day_value_format</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">%d</td>
<td>日期值显示的格式 (sprintf)</td>
</tr>
<tr>
<td align="center">year_as_text</td>
<td align="center">boolean</td>
<td align="center">No</td>
<td align="center"><code class="constant">FALSE</code></td>
<td>是否将年份显示为文字</td>
</tr>
<tr>
<td align="center">reverse_years</td>
<td align="center">boolean</td>
<td align="center">No</td>
<td align="center"><code class="constant">FALSE</code></td>
<td>是否按倒序显示年份</td>
</tr>
<tr>
<td align="center">field_array</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>
	 如果设置了field_array值，则下拉框的值发送的PHP时，将会是
	 值[Day], 值[Year], 值[Month]的格式。
     </td>
</tr>
<tr>
<td align="center">day_size</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>附加日期select标签的size属性</td>
</tr>
<tr>
<td align="center">month_size</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>附加月份select标签的size属性</td>
</tr>
<tr>
<td align="center">year_size</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>附加年份select标签的size属性</td>
</tr>
<tr>
<td align="center">all_extra</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>附加给全部select/input标签附加的属性</td>
</tr>
<tr>
<td align="center">day_extra</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>附加给日期select/input标签附加的属性</td>
</tr>
<tr>
<td align="center">month_extra</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>附加给月份select/input标签附加的属性</td>
</tr>
<tr>
<td align="center">year_extra</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>附加给年份select/input标签附加的属性</td>
</tr>
<tr>
<td align="center">all_id</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>全部select/input标签的ID值</td>
</tr>
<tr>
<td align="center">day_id</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>日期select/input标签的ID值</td>
</tr>
<tr>
<td align="center">month_id</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>月份select/input标签的ID值</td>
</tr>
<tr>
<td align="center">year_id</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>年份select/input标签的ID值</td>
</tr>
<tr>
<td align="center">field_order</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">MDY</td>
<td>显示各下拉框的顺序</td>
</tr>
<tr>
<td align="center">field_separator</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">\n</td>
<td>显示在各字段之间间隔的字符串</td>
</tr>
<tr>
<td align="center">month_value_format</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">%m</td>
<td>月份值的显示格式（按strftime()）默认是 %m </td>
</tr>
<tr>
<td align="center">all_empty</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>该属性可以在每个下拉框的第一行显示文字，并以<span class="quote">“<span class="quote"></span>”</span>作为它的值。
	 在需要让下拉框的第一行显示<span class="quote">“<span class="quote">请选择</span>”</span> 的情况下比较有用。</td>
</tr>
<tr>
<td align="center">year_empty</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>
	 该属性可以在年份下拉框的第一行显示文字，并以<span class="quote">“<span class="quote"></span>”</span>作为它的值。
	 在需要让年份下拉框的第一行显示<span class="quote">“<span class="quote">请选择年份</span>”</span> 的情况下比较有用。
	 注意你可以使用如<span class="quote">“<span class="quote">-MM-DD</span>”</span>的值，作为时间属性来显示没有选中的年份。</td>
</tr>
<tr>
<td align="center">month_empty</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>
	该属性可以在月份下拉框的第一行显示文字，并以<span class="quote">“<span class="quote"></span>”</span>作为它的值。
	 注意你可以使用如<span class="quote">“<span class="quote">YYYY--DD</span>”</span>的值，作为时间属性来显示没有选中的月份。</td>
</tr>
<tr>
<td align="center">day_empty</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center">null</td>
<td>
	该属性可以在日期下拉框的第一行显示文字，并以<span class="quote">“<span class="quote"></span>”</span>作为它的值。
	 注意你可以使用如<span class="quote">“<span class="quote">YYYY-MM-</span>”</span>的值，作为时间属性来显示没有选中的日期。</td>
</tr>
</tbody>
</table></div>
<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
<h3 class="title">Note</h3>
<p>
  在<a class="link" href="tips.dates.tpl" title="日期时间">日期技巧</a>文章中，介绍了
  较有用的php函数来将<code class="varname">{html_select_date}</code>值转换成时间戳。
  </p>
</div>
<div class="example">
<a name="id462334"></a><p class="title"><b>Example 8.16. {html_select_date}</b></p>
<div class="example-contents">
<p>模板代码</p>
<pre class="programlisting">

{html_select_date}

  </pre>
<p>
   输出
  </p>
<pre class="screen">

&lt;select name="Date_Month"&gt;
&lt;option value="1"&gt;January&lt;/option&gt;
&lt;option value="2"&gt;February&lt;/option&gt;
&lt;option value="3"&gt;March&lt;/option&gt;
  ..... snipped .....
&lt;option value="10"&gt;October&lt;/option&gt;
&lt;option value="11"&gt;November&lt;/option&gt;
&lt;option value="12" selected="selected"&gt;December&lt;/option&gt;
&lt;/select&gt;
&lt;select name="Date_Day"&gt;
&lt;option value="1"&gt;01&lt;/option&gt;
&lt;option value="2"&gt;02&lt;/option&gt;
&lt;option value="3"&gt;03&lt;/option&gt;
  ..... snipped .....
&lt;option value="11"&gt;11&lt;/option&gt;
&lt;option value="12"&gt;12&lt;/option&gt;
&lt;option value="13" selected="selected"&gt;13&lt;/option&gt;
&lt;option value="14"&gt;14&lt;/option&gt;
&lt;option value="15"&gt;15&lt;/option&gt;
  ..... snipped .....
&lt;option value="29"&gt;29&lt;/option&gt;
&lt;option value="30"&gt;30&lt;/option&gt;
&lt;option value="31"&gt;31&lt;/option&gt;
&lt;/select&gt;
&lt;select name="Date_Year"&gt;
&lt;option value="2006" selected="selected"&gt;2006&lt;/option&gt;
&lt;/select&gt;

  </pre>
</div>
</div>
<br class="example-break"><div class="example">
<a name="id462359"></a><p class="title"><b>Example 8.17. {html_select_date} 第二个地理</b></p>
<div class="example-contents">
<pre class="programlisting">

{* start and end year can be relative to current year *}
{html_select_date prefix='StartDate' time=$time start_year='-5'
   end_year='+1' display_days=false}

  </pre>
<p>
   如果当前是 2000年 则输出:
  </p>
<pre class="screen">

&lt;select name="StartDateMonth"&gt;
&lt;option value="1"&gt;January&lt;/option&gt;
&lt;option value="2"&gt;February&lt;/option&gt;
.... snipped ....
&lt;option value="11"&gt;November&lt;/option&gt;
&lt;option value="12" selected="selected"&gt;December&lt;/option&gt;
&lt;/select&gt;
&lt;select name="StartDateYear"&gt;
&lt;option value="1995"&gt;1995&lt;/option&gt;
.... snipped ....
&lt;option value="1999"&gt;1999&lt;/option&gt;
&lt;option value="2000" selected="selected"&gt;2000&lt;/option&gt;
&lt;option value="2001"&gt;2001&lt;/option&gt;
&lt;/select&gt;

  </pre>
</div>
</div>
<br class="example-break"><p>
  参见
  <a class="link" href="language.function.html.select.time.tpl" title="{html_select_time}"><code class="varname">{html_select_time}</code></a>,
  <a class="link" href="language.modifier.date.format.tpl" title="date_format"><code class="varname">date_format</code></a>,
  <a class="link" href="language.variables.smarty.tpl#language.variables.smarty.now" title="{$smarty.now}"><em class="parameter"><code>$smarty.now</code></em></a>
  和 <a class="link" href="tips.dates.tpl" title="日期时间">日期技巧</a>.
 </p>
</div>
<div class="navfooter">
<hr>
<table width="100%" summary="Navigation footer">
<tr>
<td width="40%" align="left">
<a accesskey="p" href="language.function.html.radios.tpl">Prev</a> </td>
<td width="20%" align="center"><a accesskey="u" href="language.custom.functions.tpl">Up</a></td>
<td width="40%" align="right"> <a accesskey="n" href="language.function.html.select.time.tpl">Next</a>
</td>
</tr>
<tr>
<td width="40%" align="left" valign="top">{html_radios} </td>
<td width="20%" align="center"><a accesskey="h" href="index.tpl">Home</a></td>
<td width="40%" align="right" valign="top"> {html_select_time}</td>
</tr>
</table>
</div>

		
		  <div class="comments">
      
                  <div id="commentHeader"><strong>Comments</strong></div>
          <div class="commentInfo">
          
                                <div class="commentWrapperEven">
              <div class="commentBody"><emphasis>No comments for this page.</emphasis></div>
            </div>          
                    </div>
          <div id="commentFormWrapper">
            <div id="commentFormHeader"><strong>Post a Comment</strong></div>
            <div id="commentFormElements">
            <form id="commentForm" method="post" action="../../comments/post/index.htm">
              <div id="commentText" style="font-style: italic; color:#f00">All comments are moderated. Support questions are ignored, use the <a href="../../forums/index.htm">forums</a> instead.</div>
              <div id="commentFormAuthor">Author: <input id="commentFormAuthorText" type="text" name="author" size="40" value="anonymous" style="color: grey" onFocus="clearDefaultandCSS(this)"></div>
              <div id="commentFormEmail">Email: <input id="commentFormEmailText" type="text" name="email" size="30" value="your@email.com" style="color: grey" onFocus="clearDefaultandCSS(this)"> <span style="font-style: italic">(not shown)</span></div>
              
              <div id="commentFormChallenge">What is 16 plus 8? <input id="commentFormChallengeText" type="text" name="challenge" size="30" value="" style="color: grey"> <span style="font-style: italic">(Are you human?)</span></div>
              <input id="commentFormChallengeObf" type="hidden" name="obf" value="d60ec30184770b8b9b4a01d5f5d8a5f0">
              <div id="commentFormBody"><textarea id="commentFormBodyText" name="body" rows="8" cols="60"></textarea></div>
              <div id="commentFormSubmitButtons">
                <input id="commentFormPostButton" type="submit" value="Post Comment">
                <input id="commentFormPreviewButton" type="submit" value="Preview">
                <img id="commentBusyIcon" src="../../images/busy.gif">
              </div>
              <input id="commentFormPageID" type="hidden" name="page_id" value="docs/zh_CN/language.function.html.select.date.tpl">
            </form>
            </div>
          </div>
          <div id="commentPreviewText">
          </div>
          <div id="commentPostedText">
          </div>
              
      </div>
      
      </div><!-- end colMain -->
      
      <div class="col colAdditional" align="left">
        <div id="skyscraper">
    		<script type="text/javascript"> 
    		  GA_googleFillSlot("smarty_right_skyscraper");
    		</script>
    		</div>
  		  <div class="box box1" id="smartySponsors">
          <h1 class="boxHead">Sponsors <a href="../../sponsors/index.htm">[info]</a></h1>
          <div class="boxContent">
						  <a href="../../../www.hostdone.com/index.htm">Cheap Website Hosting</a> <span style="font-size: .7em">@hostdone.com</span><br>
						  <a href="../../../www.activecampaign.com/index.htm">email marketing</a> <span style="font-size: .7em">@ActiveCampaign</span><br>
						  <a href="../../../www.broadbandgenie.co.uk/deals/index.htm">broadband deals</a> <span style="font-size: .7em">@BroadbandGenie</span><br>
						  <a href="../../../www.pass-guaranteed.com/index.htm">I.T Certification Exams</a> <span style="font-size: .7em">@pass-guaranteed.com</span><br>
						  <a href="../../../www.firsttrycertify.com/index.htm">Certification Practice Tests</a> <span style="font-size: .7em">@firsttrycertify.com</span><br>
						  <a href="../../../www.ace-it-certifications.com/index.htm">Certification Practice Exam Questions</a> <span style="font-size: .7em">@ace-it-certifications.com</span><br>
						  <a href="../../../www.broadbandspeed.co.uk/index.htm">Broadband Speed Test</a> <span style="font-size: .7em">@broadbandspeed.co.uk</span><br>
						  <a href="../../../www.americaint.com/index.htm">bulk email software</a> <span style="font-size: .7em">@americaint.com</span><br>
						  <a href="../../../www.aspnethosting.co.uk/index.htm">ASP.NET hosting</a> <span style="font-size: .7em">@aspnethosting.co.uk</span><br>
			          </div>
        </div>
      </div><!-- end colAdditional -->    
      <div class="clear"></div>
    </div><!-- end wrapper -->

  <div id="footer">
    <div id="colTopFooter">
      <a href="../../credits/index.htm" class="rightMar">credits</a>
      <a href="../../copyright/index.htm" accesskey="8" class="rightMar">copyright</a>
      <a href="../../accessibility/index.htm" accesskey="0">accessibility</a>
    </div>
    <p>Smarty Copyright &copy; 2002 &ndash; 2012 New Digital Group, Inc. All rights reserved.</p>
    <p>This page generated in 0.02400 secs with <a href="../../../www.tinymvc.com/index.htm">TinyMVC</a> and Smarty 3.</p>
  </div>    
<script src="../../../www.google-analytics.com/urchin.js" type="text/javascript"> 
</script> 
<script type="text/javascript"> 
_uacct = "UA-638513-4";
urchinTracker();
</script>
<script type="text/javascript">
    var GoSquared={};
    GoSquared.acct = "GSN-138769-Y";
    (function(w){
        function gs(){
            w._gstc_lt=+(new Date); var d=document;
            var g = d.createElement("script"); g.type = "text/javascript"; g.async = true; g.src = "../../../d1l6p2sc9645hc.cloudfront.net/tracker.js";
            var s = d.getElementsByTagName("script")[0]; s.parentNode.insertBefore(g, s);
        }
        w.addEventListener?w.addEventListener("load",gs,false):w.attachEvent("onload",gs);
    })(window);
</script>
</body>
</html>
