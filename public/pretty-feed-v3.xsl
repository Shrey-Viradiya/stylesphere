 <?xml version="1.0" encoding="utf-8"?>
<!--

# Pretty Feed

Styles an RSS/Atom
feed, making it friendly for humans viewers, and adds a link
to aboutfeeds.com
for new user onboarding. See it in action:

  
https://interconnected.org/home/feed


## How to use

1. Download this XML stylesheet from the following URL and
host it on your own
   domain (this is a limitation of XSL in browsers):

  
https://github.com/genmon/aboutfeeds/blob/main/tools/pretty-feed-v3.xsl

2. Include
the XSL at the top of the RSS/Atom feed, like:

```
<?xml version="1.0"
encoding="UTF-8"?>
<?xml-stylesheet href="/PATH-TO-YOUR-STYLES/pretty-feed-v3.xsl"
type="text/xsl"?>
```

3. Serve the feed with the following HTTP
headers:

```
Content-Type: application/xml; charset=utf-8  # not
application/rss+xml
x-content-type-options: nosniff
...
...
```

(These headers are required to style feeds for users with
Safari on iOS/Mac.)



## Limitations

- Styling the feed *prevents* the browser
from automatically opening a
  newsreader application. This is a trade off, but it's a benefit to new users
  who won't have a newsreader installed, and they are saved from seeing or
  downloaded obscure XML content. For existing
newsreader users, they will know
  to copy-and-paste the feed URL, and they get the
benefit of an in-browser feed
  preview.
- Feed styling, for all browsers, is only
available to site owners who control
  their own platform. The need to add both
XML and HTTP headers makes this a
  limited solution.


## Credits

pretty-feed is
based on work by lepture.com:

  
https://lepture.com/en/2019/rss-style-with-xsl

This current version is maintained by aboutfeeds.com:

  
https://github.com/genmon/aboutfeeds


## Feedback
...
...
This file is in BETA. Please test and
contribute to the discussion:

    
https://github.com/genmon/aboutfeeds/issues/8

-->
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   
            xmlns:atom="http://www.w3.org/2005/Atom"
xmlns:dc="http://purl.org/dc/elements/1.1/"
               
xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">
  <xsl:output method="html" version="1.0" encoding="UTF-8"
indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml"
lang="en">
      <head>
        <title><xsl:value-of
select="/rss/channel/title"/> Web Feed</title>
        <meta http-equiv="Content-Type" content="text/html;
charset=utf-8"/>
        <meta name="viewport" content="width=device-width,
...
...
initial-scale=1, maximum-scale=1"/>
        <style type="text/css">/*!
normalize.css v4.1.1 | MIT License | github.com/necolas/normalize.css
*/html{font-family:san
-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}body{margin:0}ar
icle,aside,details,figcaption,figure,footer,header,main,menu,nav,section{displa
:block}summary{display:list-item}audio,canvas,progress,video{display:inline-blo
k}audio:not([controls]){display:none;height:0}progress{vertical-align:baseline}
hidden],template{display:none!important}a{background-color:transparent}a:active
a:hover{outline-width:0}abbr[title]{border-bottom:none;text-decoration:underline;text-decoration:underline
dotted}b,strong{font-weight:inherit}b,strong{font-weight:bolder}dfn{font-style:italic}h1{font-size:2em;margin:.67em
...
...
0}mark{backgroun
-color:#ff0;color:#000}small{font-size:80%}sub,sup{font-size:75%;line-height:0;
osition:relative;vertical-align:baseline}sub{bottom:-.25em}sup{top:-.5em}img{bo
der-style:none}svg:not(:root){overflow:hidden}code,kbd,pre,samp{font-family:monospace,monospace;font-size:1em}figure{margin:1em
40px}hr{box-sizing:content-box;
eight:0;overflow:visible}button,input,select,textarea{font:inherit;margin:0}opt
roup{font-weight:700}button,input{overflow:visible}button,select{text-transform:none}[type=reset],[type=submit],button,html
[type=button]{-webkit-appearance:bu
ton}[type=button]::-moz-focus-inner,[type=reset]::-moz-focus-inner,[type=submit
...
...
::-moz-focus-inner,button::-moz-focus-inner{border-style:none;padding:0}[type=b
tton]:-moz-focusring,[type=reset]:-moz-focusring,[type=submit]:-moz-focusring,button:-moz-focusring{outline:1px dotted ButtonText}fieldset{border:1px solid
silver;margin:0 2px;padding:.35em .625em
.75em}legend{box-sizing:border-box;color:i
herit;display:table;max-width:100%;padding:0;white-space:normal}textarea{overfl
w:auto}[type=checkbox],[type=radio]{box-sizing:border-box;padding:0}[type=numbe
]::-webkit-inner-spin-button,[type=number]::-webkit-outer-spin-button{height:au
o}[type=search]{-webkit-appearance:textfield;outline-offset:-2px}[type=search]:
-webkit-search-cancel-button,[type=search]::-webkit-search-decoration{-webkit-a
pearance:none}::-webkit-input-placeholder{color:inherit;opacity:.54}::-webkit-f
...
...
le-upload-button{-webkit-appearance:button;font:inherit}*{box-sizing:border-box
button,input,select,textarea{font-family:inherit;font-size:inherit;line-height:inherit}body{font-family:-apple-system,BlinkMacSystemFont,"Segoe
UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI
Symbol";font-size
14px;line-height:1.5;color:#24292e;background-color:#fff}a{color:#0366d6;text-d
coration:none}a:hover{text-decoration:underline}b,strong{font-weight:600}.rule,hr{height:0;margin:15px 0;overflow:hidden;background:0
0;border:0;border-bottom:1px solid
#dfe2e5}.rule::before,hr::before{display:table;content:""}.rule::after
hr::after{display:table;clear:both;content:""}table{border-spacing:0;border-col
...
...
apse:collapse}td,th{padding:0}button{cursor:pointer;border-radius:0}[hidden][hidden]{display:none!important}details
summary{cursor:pointer}details:not([open])>*
:not(summary){display:none!important}h1,h2,h3,h4,h5,h6{margin-top:0;margin-bot
om:0}h1{font-size:32px;font-weight:600}h2{font-size:24px;font-weight:600}h3{fon
-size:20px;font-weight:600}h4{font-size:16px;font-weight:600}h5{font-size:14px;
ont-weight:600}h6{font-size:12px;font-weight:600}p{margin-top:0;margin-bottom:1
px}small{font-size:90%}blockquote{margin:0}ol,ul{padding-left:0;margin-top:0;margin-bottom:0}ol ol,ul ol{list-style-type:lower-roman}ol ol ol,ol ul ol,ul ol
...
...
ol,ul ul
ol{list-style-type:lower-alpha}dd{margin-left:0}code,tt{font-family:SFMono-Regular,Consolas,"Liberation
Mono",Menlo,Courier,monospace;font-size:12px}pre{margin-top:0;margin-bottom:0;font-family:SFMono-Regular,Consolas,"Liberation
Mon
",Menlo,Courier,monospace;font-size:12px}.octicon{vertical-align:text-bottom}.a
im-fade-in{animation-name:fade-in;animation-duration:1s;animation-timing-function:ease-in-out}.anim-fade-in.fast{animation-duration:.3s}@keyframes
fade-in{0%{o
acity:0}100%{opacity:1}}.anim-fade-out{animation-name:fade-out;animation-durati
n:1s;animation-timing-function:ease-out}.anim-fade-out.fast{animation-duration:.3s}@keyframes
...
...
fade-out{0%{opacity:1}100%{opacity:0}}.anim-fade-up{opacity:0;ani
ation-name:fade-up;animation-duration:.3s;animation-fill-mode:forwards;animation-timing-function:ease-out;animation-delay:1s}@keyframes
fade-up{0%{opacity:.8;t
ansform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}.anim-fade-dow
{animation-name:fade-down;animation-duration:.3s;animation-fill-mode:forwards;animation-timing-function:ease-in}@keyframes
fade-down{0%{opacity:1;transform:tra
slateY(0)}100%{opacity:.5;transform:translateY(100%)}}.anim-grow-x{width:0%;ani
ation-name:grow-x;animation-duration:.3s;animation-fill-mode:forwards;animation-timing-function:ease;animation-delay:.5s}@keyframes
...
...
grow-x{to{width:100%}}.anim
shrink-x{animation-name:shrink-x;animation-duration:.3s;animation-fill-mode:forwards;animation-timing-function:ease-in-out;animation-delay:.5s}@keyframes
shrin
-x{to{width:0%}}.anim-scale-in{animation-name:scale-in;animation-duration:.15s;animation-timing-function:cubic-bezier(.2,0,.13,1.5)}@keyframes
scale-in{0%{opac
ty:0;transform:scale(.5)}100%{opacity:1;transform:scale(1)}}.anim-pulse{animati
n-name:pulse;animation-duration:2s;animation-timing-function:linear;animation-iteration-count:infinite}@keyframes
pulse{0%{opacity:.3}10%{opacity:1}100%{opacity:.3}}.anim-pulse-in{animation-name:pulse-in;animation-duration:.5s}@keyframes
p
...
...
lse-in{0%{transform:scale3d(1,1,1)}50%{transform:scale3d(1.1,1.1,1.1)}100%{transform:scale3d(1,1,1)}}.hover-grow{transition:transform
.3s;backface-visibility:hidden}.hover-grow:hover{transform:scale(1.025)}.border{border:1px #e1e4e8
solid!important}.border-y{border-top:1px #e1e4e8 solid!important;border-bottom:1px
#e1e4e8
solid!important}.border-0{border:0!important}.border-dashed{border-style:da
hed!important}.border-blue{border-color:#0366d6!important}.border-blue-light{bo
der-color:#c8e1ff!important}.border-green{border-color:#34d058!important}.borde
-green-light{border-color:#a2cbac!important}.border-red{border-color:#d73a49!im
...
...
ortant}.border-red-light{border-color:#cea0a5!important}.border-purple{border-c
lor:#6f42c1!important}.border-yellow{border-color:#d9d0a5!important}.border-gra
-light{border-color:#eaecef!important}.border-gray-dark{border-color:#d1d5da!im
ortant}.border-black-fade{border-color:rgba(27,31,35,.15)!important}.border-top{border-top:1px #e1e4e8 solid!important}.border-right{border-right:1px #e1e4e8
solid!important}.border-bottom{border-bottom:1px #e1e4e8 solid!important}.border-left{border-left:1px #e1e4e8
solid!important}.border-top-0{border-top:0!importan
}.border-right-0{border-right:0!important}.border-bottom-0{border-bottom:0!impo
...
...
tant}.border-left-0{border-left:0!important}.rounded-0{border-radius:0!importan
}.rounded-1{border-radius:3px!important}.rounded-2{border-radius:6px!important}
rounded-top-0{border-top-left-radius:0!important;border-top-right-radius:0!impo
tant}.rounded-top-1{border-top-left-radius:3px!important;border-top-right-radiu
:3px!important}.rounded-top-2{border-top-left-radius:6px!important;border-top-r
ght-radius:6px!important}.rounded-right-0{border-top-right-radius:0!important;b
rder-bottom-right-radius:0!important}.rounded-right-1{border-top-right-radius:3
x!important;border-bottom-right-radius:3px!important}.rounded-right-2{border-to
-right-radius:6px!important;border-bottom-right-radius:6px!important}.rounded-b
ttom-0{border-bottom-right-radius:0!important;border-bottom-left-radius:0!impor
...
...
ant}.rounded-bottom-1{border-bottom-right-radius:3px!important;border-bottom-le
t-radius:3px!important}.rounded-bottom-2{border-bottom-right-radius:6px!importa
t;border-bottom-left-radius:6px!important}.rounded-left-0{border-bottom-left-ra
ius:0!important;border-top-left-radius:0!important}.rounded-left-1{border-botto
-left-radius:3px!important;border-top-left-radius:3px!important}.rounded-left-2
border-bottom-left-radius:6px!important;border-top-left-radius:6px!important}@media (min-width:544px){.border-sm-top{border-top:1px #e1e4e8
solid!important}.border-sm-right{border-right:1px #e1e4e8
solid!important}.border-sm-bottom{border-bottom:1px #e1e4e8 solid!important}.border-sm-left{border-left:1px #e1e4e8
solid
...
...
important}.border-sm-top-0{border-top:0!important}.border-sm-right-0{border-rig
t:0!important}.border-sm-bottom-0{border-bottom:0!important}.border-sm-left-0{b
rder-left:0!important}.rounded-sm-0{border-radius:0!important}.rounded-sm-1{bor
er-radius:3px!important}.rounded-sm-2{border-radius:6px!important}.rounded-sm-t
p-0{border-top-left-radius:0!important;border-top-right-radius:0!important}.rou
ded-sm-top-1{border-top-left-radius:3px!important;border-top-right-radius:3px!i
portant}.rounded-sm-top-2{border-top-left-radius:6px!important;border-top-right
radius:6px!important}.rounded-sm-right-0{border-top-right-radius:0!important;bo
der-bottom-right-radius:0!important}.rounded-sm-right-1{border-top-right-radius
3px!important;border-bottom-right-radius:3px!important}.rounded-sm-right-2{bord
...
...
r-top-right-radius:6px!important;border-bottom-right-radius:6px!important}.roun
ed-sm-bottom-0{border-bottom-right-radius:0!important;border-bottom-left-radius
0!important}.rounded-sm-bottom-1{border-bottom-right-radius:3px!important;borde
-bottom-left-radius:3px!important}.rounded-sm-bottom-2{border-bottom-right-radi
s:6px!important;border-bottom-left-radius:6px!important}.rounded-sm-left-0{bord
r-bottom-left-radius:0!important;border-top-left-radius:0!important}.rounded-sm
left-1{border-bottom-left-radius:3px!important;border-top-left-radius:3px!impor
ant}.rounded-sm-left-2{border-bottom-left-radius:6px!important;border-top-left-radius:6px!important}}@media (min-width:768px){.border-md-top{border-top:1px
#e1e4e8 solid!important}.border-md-right{border-right:1px #e1e4e8
...
...
solid!important}.border-md-bottom{border-bottom:1px #e1e4e8
solid!important}.border-md-left{border-left:1px #e1e4e8
solid!important}.border-md-top-0{bor
er-top:0!important}.border-md-right-0{border-right:0!important}.border-md-botto
-0{border-bottom:0!important}.border-md-left-0{border-left:0!important}.rounded
md-0{border-radius:0!important}.rounded-md-1{border-radius:3px!important}.round
d-md-2{border-radius:6px!important}.rounded-md-top-0{border-top-left-radius:0!i
portant;border-top-right-radius:0!important}.rounded-md-top-1{border-top-left-r
...
...
dius:3px!important;border-top-right-radius:3px!important}.rounded-md-top-2{bord
r-top-left-radius:6px!important;border-top-right-radius:6px!important}.rounded-
g-right-0{border-top-right-radius:0!important;border-bottom-right-radius:0!impo
tant}.rounded-md-right-1{border-top-right-radius:3px!important;border-bottom-ri
ht-radius:3px!important}.rounded-md-right-2{border-top-right-radius:6px!importa
t;border-bottom-right-radius:6px!important}.rounded-md-bottom-0{border-bottom-r
ght-radius:0!important;border-bottom-left-radius:0!important}.rounded-md-bottom
1{border-bottom-right-radius:3px!important;border-bottom-left-radius:3px!import
nt}.rounded-md-bottom-2{border-bottom-right-radius:6px!important;border-bottom-
eft-radius:6px!important}.rounded-md-left-0{border-bottom-left-radius:0!importa
...
...
t;border-top-left-radius:0!important}.rounded-md-left-1{border-bottom-left-radi
s:3px!important;border-top-left-radius:3px!important}.rounded-md-left-2{border-bottom-left-radius:6px!important;border-top-left-radius:6px!important}}@media
(min-width:1012px){.border-lg-top{border-top:1px #e1e4e8 solid!important}.border-lg-right{border-right:1px
#e1e4e8 solid!important}.border-lg-bottom{border-bottom:1px #e1e4e8
solid!important}.border-lg-left{border-left:1px #e1e4e8
solid!important}.border-lg-top-0{bor
er-top:0!important}.border-lg-right-0{border-right:0!important}.border-lg-botto
-0{border-bottom:0!important}.border-lg-left-0{border-left:0!important}.rounded
lg-0{border-radius:0!important}.rounded-lg-1{border-radius:3px!important}.round
d-lg-2{border-radius:6px!important}.rounded-lg-top-0{border-top-left-radius:0!i
portant;border-top-right-radius:0!important}.rounded-lg-top-1{border-top-left-r
...
...
dius:3px!important;border-top-right-radius:3px!important}.rounded-lg-top-2{bord
r-top-left-radius:6px!important;border-top-right-radius:6px!important}.rounded-
g-right-0{border-top-right-radius:0!important;border-bottom-right-radius:0!impo
tant}.rounded-lg-right-1{border-top-right-radius:3px!important;border-bottom-ri
ht-radius:3px!important}.rounded-lg-right-2{border-top-right-radius:6px!importa
t;border-bottom-right-radius:6px!important}.rounded-lg-bottom-0{border-bottom-r
ght-radius:0!important;border-bottom-left-radius:0!important}.rounded-lg-bottom
1{border-bottom-right-radius:3px!important;border-bottom-left-radius:3px!import
nt}.rounded-lg-bottom-2{border-bottom-right-radius:6px!important;border-bottom-
eft-radius:6px!important}.rounded-lg-left-0{border-bottom-left-radius:0!importa
...
...
t;border-top-left-radius:0!important}.rounded-lg-left-1{border-bottom-left-radi
s:3px!important;border-top-left-radius:3px!important}.rounded-lg-left-2{border-bottom-left-radius:6px!important;border-top-left-radius:6px!important}}@media
(min-width:1280px){.border-xl-top{border-top:1px #e1e4e8
solid!important}.border-xl-right{border-right:1px #e1e4e8
solid!important}.border-xl-bottom{border-bottom:1px #e1e4e8 solid!important}.border-xl-left{border-left:1px #e1e4e8
solid!impor
ant}.border-xl-top-0{border-top:0!important}.border-xl-right-0{border-right:0!i
portant}.border-xl-bottom-0{border-bottom:0!important}.border-xl-left-0{border-
eft:0!important}.rounded-xl-0{border-radius:0!important}.rounded-xl-1{border-ra
...
...
ius:3px!important}.rounded-xl-2{border-radius:6px!important}.rounded-xl-top-0{b
rder-top-left-radius:0!important;border-top-right-radius:0!important}.rounded-x
-top-1{border-top-left-radius:3px!important;border-top-right-radius:3px!importa
t}.rounded-xl-top-2{border-top-left-radius:6px!important;border-top-right-radiu
:6px!important}.rounded-xl-right-0{border-top-right-radius:0!important;border-b
ttom-right-radius:0!important}.rounded-xl-right-1{border-top-right-radius:3px!i
portant;border-bottom-right-radius:3px!important}.rounded-xl-right-2{border-top
right-radius:6px!important;border-bottom-right-radius:6px!important}.rounded-xl
bottom-0{border-bottom-right-radius:0!important;border-bottom-left-radius:0!imp
rtant}.rounded-xl-bottom-1{border-bottom-right-radius:3px!important;border-bott
...
...
m-left-radius:3px!important}.rounded-xl-bottom-2{border-bottom-right-radius:6px
important;border-bottom-left-radius:6px!important}.rounded-xl-left-0{border-bot
om-left-radius:0!important;border-top-left-radius:0!important}.rounded-xl-left-
{border-bottom-left-radius:3px!important;border-top-left-radius:3px!important}.
ounded-xl-left-2{border-bottom-left-radius:6px!important;border-top-left-radius:6px!important}}.circle{border-radius:50%!important}.box-shadow{box-shadow:0 1px
1px rgba(27,31,35,.1)!important}.box-shadow-medium{box-shadow:0 1px 5px
rgba(27,31,35,.15)!important}.box-shadow-large{box-shadow:0 1px 15px
rgba(27,31,35,.15)!important}.box-shadow-extra-large{box-shadow:0 10px 50px
rgba(27,31,35,.07)!imp
...
...
rtant}.box-shadow-none{box-shadow:none!important}.bg-white{background-color:#ff
!important}.bg-blue{background-color:#0366d6!important}.bg-blue-light{backgroun
-color:#f1f8ff!important}.bg-gray-dark{background-color:#24292e!important}.bg-g
ay{background-color:#f6f8fa!important}.bg-gray-light{background-color:#fafbfc!i
portant}.bg-green{background-color:#28a745!important}.bg-green-light{background
color:#dcffe4!important}.bg-red{background-color:#d73a49!important}.bg-red-ligh
{background-color:#ffdce0!important}.bg-yellow{background-color:#ffd33d!importa
t}.bg-yellow-light{background-color:#fff5b1!important}.bg-purple{background-col
r:#6f42c1!important}.bg-purple-light{background-color:#f5f0ff!important}.bg-sha
...
...
e-gradient{background-image:linear-gradient(180deg,rgba(27,31,35,.065),rgba(27,31,35,0))!important;background-repeat:no-repeat!important;background-size:100%
2
0px!important}.text-blue{color:#0366d6!important}.text-red{color:#cb2431!import
nt}.text-gray-light{color:#6a737d!important}.text-gray{color:#586069!important}
text-gray-dark{color:#24292e!important}.text-green{color:#28a745!important}.tex
-orange{color:#a04100!important}.text-orange-light{color:#e36209!important}.tex
-purple{color:#6f42c1!important}.text-white{color:#fff!important}.text-inherit{
olor:inherit!important}.text-pending{color:#b08800!important}.bg-pending{color:
dbab09!important}.link-gray{color:#586069!important}.link-gray:hover{color:#036
...
...
d6!important}.link-gray-dark{color:#24292e!important}.link-gray-dark:hover{colo
:#0366d6!important}.link-hover-blue:hover{color:#0366d6!important}.muted-link{c
lor:#586069!important}.muted-link:hover{color:#0366d6!important;text-decoration
none}.details-overlay[open]>summary::before{position:fixed;top:0;right:0;bottom:0;left:0;z-index:80;display:block;cursor:default;content:" ";background:0
0}.de
ails-overlay-dark[open]>summary::before{z-index:99;background:rgba(27,31,35,.5)
.flex-row{flex-direction:row!important}.flex-row-reverse{flex-direction:row-rev
rse!important}.flex-column{flex-direction:column!important}.flex-wrap{flex-wrap
wrap!important}.flex-nowrap{flex-wrap:nowrap!important}.flex-justify-start{just
fy-content:flex-start!important}.flex-justify-end{justify-content:flex-end!impo
...
...
tant}.flex-justify-center{justify-content:center!important}.flex-justify-betwee
{justify-content:space-between!important}.flex-justify-around{justify-content:s
ace-around!important}.flex-items-start{align-items:flex-start!important}.flex-i
ems-end{align-items:flex-end!important}.flex-items-center{align-items:center!im
ortant}.flex-items-baseline{align-items:baseline!important}.flex-items-stretch{
lign-items:stretch!important}.flex-content-start{align-content:flex-start!impor
ant}.flex-content-end{align-content:flex-end!important}.flex-content-center{ali
n-content:center!important}.flex-content-between{align-content:space-between!im
ortant}.flex-content-around{align-content:space-around!important}.flex-content-stretch{align-content:stretch!important}.flex-auto{flex:1 1
auto!important}.flex
shrink-0{flex-shrink:0!important}.flex-self-auto{align-self:auto!important}.fle
...
...
-self-start{align-self:flex-start!important}.flex-self-end{align-self:flex-end!
mportant}.flex-self-center{align-self:center!important}.flex-self-baseline{alig
-self:baseline!important}.flex-self-stretch{align-self:stretch!important}.flex-item-equal{flex-grow:1;flex-basis:0}@media
(min-width:544px){.flex-sm-row{flex-d
rection:row!important}.flex-sm-row-reverse{flex-direction:row-reverse!important
.flex-sm-column{flex-direction:column!important}.flex-sm-wrap{flex-wrap:wrap!im
ortant}.flex-sm-nowrap{flex-wrap:nowrap!important}.flex-sm-justify-start{justif
-content:flex-start!important}.flex-sm-justify-end{justify-content:flex-end!imp
rtant}.flex-sm-justify-center{justify-content:center!important}.flex-sm-justify
between{justify-content:space-between!important}.flex-sm-justify-around{justify
content:space-around!important}.flex-sm-items-start{align-items:flex-start!impo
...
...
tant}.flex-sm-items-end{align-items:flex-end!important}.flex-sm-items-center{al
gn-items:center!important}.flex-sm-items-baseline{align-items:baseline!importan
}.flex-sm-items-stretch{align-items:stretch!important}.flex-sm-content-start{al
gn-content:flex-start!important}.flex-sm-content-end{align-content:flex-end!imp
rtant}.flex-sm-content-center{align-content:center!important}.flex-sm-content-b
tween{align-content:space-between!important}.flex-sm-content-around{align-conte
t:space-around!important}.flex-sm-content-stretch{align-content:stretch!important}.flex-sm-auto{flex:1 1
auto!important}.flex-sm-shrink-0{flex-shrink:0!importa
t}.flex-sm-self-auto{align-self:auto!important}.flex-sm-self-start{align-self:f
ex-start!important}.flex-sm-self-end{align-self:flex-end!important}.flex-sm-sel
-center{align-self:center!important}.flex-sm-self-baseline{align-self:baseline!
...
...
mportant}.flex-sm-self-stretch{align-self:stretch!important}.flex-sm-item-equal{flex-grow:1;flex-basis:0}}@media
(min-width:768px){.flex-md-row{flex-direction:
ow!important}.flex-md-row-reverse{flex-direction:row-reverse!important}.flex-md
column{flex-direction:column!important}.flex-md-wrap{flex-wrap:wrap!important}.
lex-md-nowrap{flex-wrap:nowrap!important}.flex-md-justify-start{justify-content
flex-start!important}.flex-md-justify-end{justify-content:flex-end!important}.f
ex-md-justify-center{justify-content:center!important}.flex-md-justify-between{
ustify-content:space-between!important}.flex-md-justify-around{justify-content:
pace-around!important}.flex-md-items-start{align-items:flex-start!important}.fl
x-md-items-end{align-items:flex-end!important}.flex-md-items-center{align-items
center!important}.flex-md-items-baseline{align-items:baseline!important}.flex-m
...
...
-items-stretch{align-items:stretch!important}.flex-md-content-start{align-conte
t:flex-start!important}.flex-md-content-end{align-content:flex-end!important}.f
ex-md-content-center{align-content:center!important}.flex-md-content-between{al
gn-content:space-between!important}.flex-md-content-around{align-content:space-
round!important}.flex-md-content-stretch{align-content:stretch!important}.flex-md-auto{flex:1 1
auto!important}.flex-md-shrink-0{flex-shrink:0!important}.flex-
d-self-auto{align-self:auto!important}.flex-md-self-start{align-self:flex-start
important}.flex-md-self-end{align-self:flex-end!important}.flex-md-self-center{
lign-self:center!important}.flex-md-self-baseline{align-self:baseline!important
.flex-md-self-stretch{align-self:stretch!important}.flex-md-item-equal{flex-grow:1;flex-basis:0}}@media
(min-width:1012px){.flex-lg-row{flex-direction:row!impo
...
...
tant}.flex-lg-row-reverse{flex-direction:row-reverse!important}.flex-lg-column{
lex-direction:column!important}.flex-lg-wrap{flex-wrap:wrap!important}.flex-lg-
owrap{flex-wrap:nowrap!important}.flex-lg-justify-start{justify-content:flex-st
rt!important}.flex-lg-justify-end{justify-content:flex-end!important}.flex-lg-j
stify-center{justify-content:center!important}.flex-lg-justify-between{justify-
ontent:space-between!important}.flex-lg-justify-around{justify-content:space-ar
und!important}.flex-lg-items-start{align-items:flex-start!important}.flex-lg-it
ms-end{align-items:flex-end!important}.flex-lg-items-center{align-items:center!
mportant}.flex-lg-items-baseline{align-items:baseline!important}.flex-lg-items-
tretch{align-items:stretch!important}.flex-lg-content-start{align-content:flex-
tart!important}.flex-lg-content-end{align-content:flex-end!important}.flex-lg-c
ntent-center{align-content:center!important}.flex-lg-content-between{align-cont
...
...
nt:space-between!important}.flex-lg-content-around{align-content:space-around!i
portant}.flex-lg-content-stretch{align-content:stretch!important}.flex-lg-auto{flex:1 1
auto!important}.flex-lg-shrink-0{flex-shrink:0!important}.flex-lg-self-
uto{align-self:auto!important}.flex-lg-self-start{align-self:flex-start!importa
t}.flex-lg-self-end{align-self:flex-end!important}.flex-lg-self-center{align-se
f:center!important}.flex-lg-self-baseline{align-self:baseline!important}.flex-l
-self-stretch{align-self:stretch!important}.flex-lg-item-equal{flex-grow:1;flex-basis:0}}@media
(min-width:1280px){.flex-xl-row{flex-direction:row!important}.f
ex-xl-row-reverse{flex-direction:row-reverse!important}.flex-xl-column{flex-dir
ction:column!important}.flex-xl-wrap{flex-wrap:wrap!important}.flex-xl-nowrap{f
...
...
ex-wrap:nowrap!important}.flex-xl-justify-start{justify-content:flex-start!impo
tant}.flex-xl-justify-end{justify-content:flex-end!important}.flex-xl-justify-c
nter{justify-content:center!important}.flex-xl-justify-between{justify-content:
pace-between!important}.flex-xl-justify-around{justify-content:space-around!imp
rtant}.flex-xl-items-start{align-items:flex-start!important}.flex-xl-items-end{
lign-items:flex-end!important}.flex-xl-items-center{align-items:center!importan
}.flex-xl-items-baseline{align-items:baseline!important}.flex-xl-items-stretch{
lign-items:stretch!important}.flex-xl-content-start{align-content:flex-start!im
ortant}.flex-xl-content-end{align-content:flex-end!important}.flex-xl-content-c
nter{align-content:center!important}.flex-xl-content-between{align-content:spac
-between!important}.flex-xl-content-around{align-content:space-around!important}.flex-xl-content-stretch{align-content:stretch!important}.flex-xl-auto{flex:1 1
...
...
auto!important}.flex-xl-shrink-0{flex-shrink:0!important}.flex-xl-self-auto{ali
n-self:auto!important}.flex-xl-self-start{align-self:flex-start!important}.flex
xl-self-end{align-self:flex-end!important}.flex-xl-self-center{align-self:cente
!important}.flex-xl-self-baseline{align-self:baseline!important}.flex-xl-self-s
retch{align-self:stretch!important}.flex-xl-item-equal{flex-grow:1;flex-basis:0
}.position-static{position:static!important}.position-relative{position:relativ
!important}.position-absolute{position:absolute!important}.position-fixed{posit
on:fixed!important}.top-0{top:0!important}.right-0{right:0!important}.bottom-0{
ottom:0!important}.left-0{left:0!important}.v-align-middle{vertical-align:middl
!important}.v-align-top{vertical-align:top!important}.v-align-bottom{vertical-a
...
...
ign:bottom!important}.v-align-text-top{vertical-align:text-top!important}.v-ali
n-text-bottom{vertical-align:text-bottom!important}.v-align-baseline{vertical-a
ign:baseline!important}.overflow-hidden{overflow:hidden!important}.overflow-scr
ll{overflow:scroll!important}.overflow-auto{overflow:auto!important}.clearfix::
efore{display:table;content:""}.clearfix::after{display:table;clear:both;conten
:""}.float-left{float:left!important}.float-right{float:right!important}.float-none{float:none!important}@media
(min-width:544px){.float-sm-left{float:left!imp
rtant}.float-sm-right{float:right!important}.float-sm-none{float:none!important}}@media
(min-width:768px){.float-md-left{float:left!important}.float-md-right{float:right!important}.float-md-none{float:none!important}}@media
(min-width:1012
x){.float-lg-left{float:left!important}.float-lg-right{float:right!important}.float-lg-none{float:none!important}}@media
...
...
(min-width:1280px){.float-xl-left{floa
:left!important}.float-xl-right{float:right!important}.float-xl-none{float:none
important}}.width-fit{max-width:100%!important}.width-full{width:100%!important
.height-fit{max-height:100%!important}.height-full{height:100%!important}.min-w
dth-0{min-width:0!important}.direction-rtl{direction:rtl!important}.direction-ltr{direction:ltr!important}@media
(min-width:544px){.direction-sm-rtl{direction:rtl!important}.direction-sm-ltr{direction:ltr!important}}@media
(min-width:768px
{.direction-md-rtl{direction:rtl!important}.direction-md-ltr{direction:ltr!important}}@media
(min-width:1012px){.direction-lg-rtl{direction:rtl!important}.direction-lg-ltr{direction:ltr!important}}@media
(min-width:1280px){.direction-xl-rt
...
...
{direction:rtl!important}.direction-xl-ltr{direction:ltr!important}}.m-0{margin
0!important}.mt-0{margin-top:0!important}.mr-0{margin-right:0!important}.mb-0{m
rgin-bottom:0!important}.ml-0{margin-left:0!important}.mx-0{margin-right:0!impo
tant;margin-left:0!important}.my-0{margin-top:0!important;margin-bottom:0!impor
ant}.m-1{margin:4px!important}.mt-1{margin-top:4px!important}.mr-1{margin-right
4px!important}.mb-1{margin-bottom:4px!important}.ml-1{margin-left:4px!important
.mt-n1{margin-top:-4px!important}.mr-n1{margin-right:-4px!important}.mb-n1{marg
n-bottom:-4px!important}.ml-n1{margin-left:-4px!important}.mx-1{margin-right:4p
...
...
!important;margin-left:4px!important}.my-1{margin-top:4px!important;margin-bott
m:4px!important}.m-2{margin:8px!important}.mt-2{margin-top:8px!important}.mr-2{
argin-right:8px!important}.mb-2{margin-bottom:8px!important}.ml-2{margin-left:8
x!important}.mt-n2{margin-top:-8px!important}.mr-n2{margin-right:-8px!important
.mb-n2{margin-bottom:-8px!important}.ml-n2{margin-left:-8px!important}.mx-2{mar
in-right:8px!important;margin-left:8px!important}.my-2{margin-top:8px!important
margin-bottom:8px!important}.m-3{margin:16px!important}.mt-3{margin-top:16px!im
ortant}.mr-3{margin-right:16px!important}.mb-3{margin-bottom:16px!important}.ml
...
...
3{margin-left:16px!important}.mt-n3{margin-top:-16px!important}.mr-n3{margin-ri
ht:-16px!important}.mb-n3{margin-bottom:-16px!important}.ml-n3{margin-left:-16p
!important}.mx-3{margin-right:16px!important;margin-left:16px!important}.my-3{m
rgin-top:16px!important;margin-bottom:16px!important}.m-4{margin:24px!important
.mt-4{margin-top:24px!important}.mr-4{margin-right:24px!important}.mb-4{margin-
ottom:24px!important}.ml-4{margin-left:24px!important}.mt-n4{margin-top:-24px!i
portant}.mr-n4{margin-right:-24px!important}.mb-n4{margin-bottom:-24px!importan
}.ml-n4{margin-left:-24px!important}.mx-4{margin-right:24px!important;margin-le
...
...
t:24px!important}.my-4{margin-top:24px!important;margin-bottom:24px!important}.
-5{margin:32px!important}.mt-5{margin-top:32px!important}.mr-5{margin-right:32p
!important}.mb-5{margin-bottom:32px!important}.ml-5{margin-left:32px!important}
mt-n5{margin-top:-32px!important}.mr-n5{margin-right:-32px!important}.mb-n5{mar
in-bottom:-32px!important}.ml-n5{margin-left:-32px!important}.mx-5{margin-right
32px!important;margin-left:32px!important}.my-5{margin-top:32px!important;margi
-bottom:32px!important}.m-6{margin:40px!important}.mt-6{margin-top:40px!importa
t}.mr-6{margin-right:40px!important}.mb-6{margin-bottom:40px!important}.ml-6{ma
...
...
gin-left:40px!important}.mt-n6{margin-top:-40px!important}.mr-n6{margin-right:-
0px!important}.mb-n6{margin-bottom:-40px!important}.ml-n6{margin-left:-40px!imp
rtant}.mx-6{margin-right:40px!important;margin-left:40px!important}.my-6{margin
top:40px!important;margin-bottom:40px!important}.mx-auto{margin-right:auto!important;margin-left:auto!important}@media
(min-width:544px){.m-sm-0{margin:0!impor
ant}.mt-sm-0{margin-top:0!important}.mr-sm-0{margin-right:0!important}.mb-sm-0{
argin-bottom:0!important}.ml-sm-0{margin-left:0!important}.mx-sm-0{margin-right
0!important;margin-left:0!important}.my-sm-0{margin-top:0!important;margin-bott
...
...
m:0!important}.m-sm-1{margin:4px!important}.mt-sm-1{margin-top:4px!important}.m
-sm-1{margin-right:4px!important}.mb-sm-1{margin-bottom:4px!important}.ml-sm-1{
argin-left:4px!important}.mt-sm-n1{margin-top:-4px!important}.mr-sm-n1{margin-r
ght:-4px!important}.mb-sm-n1{margin-bottom:-4px!important}.ml-sm-n1{margin-left
-4px!important}.mx-sm-1{margin-right:4px!important;margin-left:4px!important}.m
-sm-1{margin-top:4px!important;margin-bottom:4px!important}.m-sm-2{margin:8px!i
portant}.mt-sm-2{margin-top:8px!important}.mr-sm-2{margin-right:8px!important}.
...
...
b-sm-2{margin-bottom:8px!important}.ml-sm-2{margin-left:8px!important}.mt-sm-n2
margin-top:-8px!important}.mr-sm-n2{margin-right:-8px!important}.mb-sm-n2{margi
-bottom:-8px!important}.ml-sm-n2{margin-left:-8px!important}.mx-sm-2{margin-rig
t:8px!important;margin-left:8px!important}.my-sm-2{margin-top:8px!important;mar
in-bottom:8px!important}.m-sm-3{margin:16px!important}.mt-sm-3{margin-top:16px!
mportant}.mr-sm-3{margin-right:16px!important}.mb-sm-3{margin-bottom:16px!impor
ant}.ml-sm-3{margin-left:16px!important}.mt-sm-n3{margin-top:-16px!important}.m
...
...
-sm-n3{margin-right:-16px!important}.mb-sm-n3{margin-bottom:-16px!important}.ml
sm-n3{margin-left:-16px!important}.mx-sm-3{margin-right:16px!important;margin-l
ft:16px!important}.my-sm-3{margin-top:16px!important;margin-bottom:16px!importa
t}.m-sm-4{margin:24px!important}.mt-sm-4{margin-top:24px!important}.mr-sm-4{mar
in-right:24px!important}.mb-sm-4{margin-bottom:24px!important}.ml-sm-4{margin-l
ft:24px!important}.mt-sm-n4{margin-top:-24px!important}.mr-sm-n4{margin-right:-
4px!important}.mb-sm-n4{margin-bottom:-24px!important}.ml-sm-n4{margin-left:-24
x!important}.mx-sm-4{margin-right:24px!important;margin-left:24px!important}.my
...
...
sm-4{margin-top:24px!important;margin-bottom:24px!important}.m-sm-5{margin:32px
important}.mt-sm-5{margin-top:32px!important}.mr-sm-5{margin-right:32px!importa
t}.mb-sm-5{margin-bottom:32px!important}.ml-sm-5{margin-left:32px!important}.mt
sm-n5{margin-top:-32px!important}.mr-sm-n5{margin-right:-32px!important}.mb-sm-
5{margin-bottom:-32px!important}.ml-sm-n5{margin-left:-32px!important}.mx-sm-5{
argin-right:32px!important;margin-left:32px!important}.my-sm-5{margin-top:32px!
mportant;margin-bottom:32px!important}.m-sm-6{margin:40px!important}.mt-sm-6{ma
gin-top:40px!important}.mr-sm-6{margin-right:40px!important}.mb-sm-6{margin-bot
...
...
om:40px!important}.ml-sm-6{margin-left:40px!important}.mt-sm-n6{margin-top:-40p
!important}.mr-sm-n6{margin-right:-40px!important}.mb-sm-n6{margin-bottom:-40px
important}.ml-sm-n6{margin-left:-40px!important}.mx-sm-6{margin-right:40px!impo
tant;margin-left:40px!important}.my-sm-6{margin-top:40px!important;margin-botto
:40px!important}.mx-sm-auto{margin-right:auto!important;margin-left:auto!important}}@media
(min-width:768px){.m-md-0{margin:0!important}.mt-md-0{margin-top:0!i
portant}.mr-md-0{margin-right:0!important}.mb-md-0{margin-bottom:0!important}.m
-md-0{margin-left:0!important}.mx-md-0{margin-right:0!important;margin-left:0!i
...
...
portant}.my-md-0{margin-top:0!important;margin-bottom:0!important}.m-md-1{margi
:4px!important}.mt-md-1{margin-top:4px!important}.mr-md-1{margin-right:4px!impo
tant}.mb-md-1{margin-bottom:4px!important}.ml-md-1{margin-left:4px!important}.m
-md-n1{margin-top:-4px!important}.mr-md-n1{margin-right:-4px!important}.mb-md-n
{margin-bottom:-4px!important}.ml-md-n1{margin-left:-4px!important}.mx-md-1{mar
in-right:4px!important;margin-left:4px!important}.my-md-1{margin-top:4px!import
nt;margin-bottom:4px!important}.m-md-2{margin:8px!important}.mt-md-2{margin-top
...
...
8px!important}.mr-md-2{margin-right:8px!important}.mb-md-2{margin-bottom:8px!im
ortant}.ml-md-2{margin-left:8px!important}.mt-md-n2{margin-top:-8px!important}.
r-md-n2{margin-right:-8px!important}.mb-md-n2{margin-bottom:-8px!important}.ml-
d-n2{margin-left:-8px!important}.mx-md-2{margin-right:8px!important;margin-left
8px!important}.my-md-2{margin-top:8px!important;margin-bottom:8px!important}.m-
d-3{margin:16px!important}.mt-md-3{margin-top:16px!important}.mr-md-3{margin-ri
ht:16px!important}.mb-md-3{margin-bottom:16px!important}.ml-md-3{margin-left:16
x!important}.mt-md-n3{margin-top:-16px!important}.mr-md-n3{margin-right:-16px!i
...
...
portant}.mb-md-n3{margin-bottom:-16px!important}.ml-md-n3{margin-left:-16px!imp
rtant}.mx-md-3{margin-right:16px!important;margin-left:16px!important}.my-md-3{
argin-top:16px!important;margin-bottom:16px!important}.m-md-4{margin:24px!impor
ant}.mt-md-4{margin-top:24px!important}.mr-md-4{margin-right:24px!important}.mb
md-4{margin-bottom:24px!important}.ml-md-4{margin-left:24px!important}.mt-md-n4
margin-top:-24px!important}.mr-md-n4{margin-right:-24px!important}.mb-md-n4{mar
in-bottom:-24px!important}.ml-md-n4{margin-left:-24px!important}.mx-md-4{margin
right:24px!important;margin-left:24px!important}.my-md-4{margin-top:24px!import
...
...
nt;margin-bottom:24px!important}.m-md-5{margin:32px!important}.mt-md-5{margin-t
p:32px!important}.mr-md-5{margin-right:32px!important}.mb-md-5{margin-bottom:32
x!important}.ml-md-5{margin-left:32px!important}.mt-md-n5{margin-top:-32px!impo
tant}.mr-md-n5{margin-right:-32px!important}.mb-md-n5{margin-bottom:-32px!impor
ant}.ml-md-n5{margin-left:-32px!important}.mx-md-5{margin-right:32px!important;
argin-left:32px!important}.my-md-5{margin-top:32px!important;margin-bottom:32px
important}.m-md-6{margin:40px!important}.mt-md-6{margin-top:40px!important}.mr-
d-6{margin-right:40px!important}.mb-md-6{margin-bottom:40px!important}.ml-md-6{
...
...
argin-left:40px!important}.mt-md-n6{margin-top:-40px!important}.mr-md-n6{margin
right:-40px!important}.mb-md-n6{margin-bottom:-40px!important}.ml-md-n6{margin-
eft:-40px!important}.mx-md-6{margin-right:40px!important;margin-left:40px!impor
ant}.my-md-6{margin-top:40px!important;margin-bottom:40px!important}.mx-md-auto{margin-right:auto!important;margin-left:auto!important}}@media
(min-width:1012p
){.m-lg-0{margin:0!important}.mt-lg-0{margin-top:0!important}.mr-lg-0{margin-ri
ht:0!important}.mb-lg-0{margin-bottom:0!important}.ml-lg-0{margin-left:0!import
nt}.mx-lg-0{margin-right:0!important;margin-left:0!important}.my-lg-0{margin-to
...
...
:0!important;margin-bottom:0!important}.m-lg-1{margin:4px!important}.mt-lg-1{ma
gin-top:4px!important}.mr-lg-1{margin-right:4px!important}.mb-lg-1{margin-botto
:4px!important}.ml-lg-1{margin-left:4px!important}.mt-lg-n1{margin-top:-4px!imp
rtant}.mr-lg-n1{margin-right:-4px!important}.mb-lg-n1{margin-bottom:-4px!import
nt}.ml-lg-n1{margin-left:-4px!important}.mx-lg-1{margin-right:4px!important;mar
in-left:4px!important}.my-lg-1{margin-top:4px!important;margin-bottom:4px!impor
ant}.m-lg-2{margin:8px!important}.mt-lg-2{margin-top:8px!important}.mr-lg-2{mar
...
...
in-right:8px!important}.mb-lg-2{margin-bottom:8px!important}.ml-lg-2{margin-lef
:8px!important}.mt-lg-n2{margin-top:-8px!important}.mr-lg-n2{margin-right:-8px!
mportant}.mb-lg-n2{margin-bottom:-8px!important}.ml-lg-n2{margin-left:-8px!impo
tant}.mx-lg-2{margin-right:8px!important;margin-left:8px!important}.my-lg-2{mar
in-top:8px!important;margin-bottom:8px!important}.m-lg-3{margin:16px!important}
mt-lg-3{margin-top:16px!important}.mr-lg-3{margin-right:16px!important}.mb-lg-3
margin-bottom:16px!important}.ml-lg-3{margin-left:16px!important}.mt-lg-n3{marg
n-top:-16px!important}.mr-lg-n3{margin-right:-16px!important}.mb-lg-n3{margin-b
...
...
ttom:-16px!important}.ml-lg-n3{margin-left:-16px!important}.mx-lg-3{margin-righ
:16px!important;margin-left:16px!important}.my-lg-3{margin-top:16px!important;m
rgin-bottom:16px!important}.m-lg-4{margin:24px!important}.mt-lg-4{margin-top:24
x!important}.mr-lg-4{margin-right:24px!important}.mb-lg-4{margin-bottom:24px!im
ortant}.ml-lg-4{margin-left:24px!important}.mt-lg-n4{margin-top:-24px!important
.mr-lg-n4{margin-right:-24px!important}.mb-lg-n4{margin-bottom:-24px!important}
ml-lg-n4{margin-left:-24px!important}.mx-lg-4{margin-right:24px!important;margi
-left:24px!important}.my-lg-4{margin-top:24px!important;margin-bottom:24px!impo
...
...
tant}.m-lg-5{margin:32px!important}.mt-lg-5{margin-top:32px!important}.mr-lg-5{
argin-right:32px!important}.mb-lg-5{margin-bottom:32px!important}.ml-lg-5{margi
-left:32px!important}.mt-lg-n5{margin-top:-32px!important}.mr-lg-n5{margin-righ
:-32px!important}.mb-lg-n5{margin-bottom:-32px!important}.ml-lg-n5{margin-left:
32px!important}.mx-lg-5{margin-right:32px!important;margin-left:32px!important}
my-lg-5{margin-top:32px!important;margin-bottom:32px!important}.m-lg-6{margin:4
px!important}.mt-lg-6{margin-top:40px!important}.mr-lg-6{margin-right:40px!impo
tant}.mb-lg-6{margin-bottom:40px!important}.ml-lg-6{margin-left:40px!important}
...
...
mt-lg-n6{margin-top:-40px!important}.mr-lg-n6{margin-right:-40px!important}.mb-
g-n6{margin-bottom:-40px!important}.ml-lg-n6{margin-left:-40px!important}.mx-lg
6{margin-right:40px!important;margin-left:40px!important}.my-lg-6{margin-top:40
x!important;margin-bottom:40px!important}.mx-lg-auto{margin-right:auto!important;margin-left:auto!important}}@media
(min-width:1280px){.m-xl-0{margin:0!importa
t}.mt-xl-0{margin-top:0!important}.mr-xl-0{margin-right:0!important}.mb-xl-0{ma
gin-bottom:0!important}.ml-xl-0{margin-left:0!important}.mx-xl-0{margin-right:0
important;margin-left:0!important}.py-xl-0{padding-top:0!important;padding-bott
...
...
m:0!important}.m-xl-1{margin:4px!important}.mt-xl-1{margin-top:4px!important}.m
-xl-1{margin-right:4px!important}.mb-xl-1{margin-bottom:4px!important}.ml-xl-1{
argin-left:4px!important}.mt-xl-n1{margin-top:-4px!important}.mr-xl-n1{margin-r
ght:-4px!important}.mb-xl-n1{margin-bottom:-4px!important}.ml-xl-n1{margin-left
-4px!important}.mx-xl-1{margin-right:4px!important;margin-left:4px!important}.m
-xl-1{margin-top:4px!important;margin-bottom:4px!important}.m-xl-2{margin:8px!i
portant}.mt-xl-2{margin-top:8px!important}.mr-xl-2{margin-right:8px!important}.
b-xl-2{margin-bottom:8px!important}.ml-xl-2{margin-left:8px!important}.mt-xl-n2
margin-top:-8px!important}.mr-xl-n2{margin-right:-8px!important}.mb-xl-n2{margi
-bottom:-8px!important}.ml-xl-n2{margin-left:-8px!important}.mx-xl-2{margin-rig
t:8px!important;margin-left:8px!important}.my-xl-2{margin-top:8px!important;mar
in-bottom:8px!important}.m-xl-3{margin:16px!important}.mt-xl-3{margin-top:16px!
mportant}.mr-xl-3{margin-right:16px!important}.mb-xl-3{margin-bottom:16px!impor
ant}.ml-xl-3{margin-left:16px!important}.mt-xl-n3{margin-top:-16px!important}.m
...
...
-xl-n3{margin-right:-16px!important}.mb-xl-n3{margin-bottom:-16px!important}.ml
xl-n3{margin-left:-16px!important}.mx-xl-3{margin-right:16px!important;margin-l
ft:16px!important}.my-xl-3{margin-top:16px!important;margin-bottom:16px!importa
t}.m-xl-4{margin:24px!important}.mt-xl-4{margin-top:24px!important}.mr-xl-4{mar
in-right:24px!important}.mb-xl-4{margin-bottom:24px!important}.ml-xl-4{margin-l
ft:24px!important}.mt-xl-n4{margin-top:-24px!important}.mr-xl-n4{margin-right:-
4px!important}.mb-xl-n4{margin-bottom:-24px!important}.ml-xl-n4{margin-left:-24
x!important}.mx-xl-4{margin-right:24px!important;margin-left:24px!important}.my
...
...
xl-4{margin-top:24px!important;margin-bottom:24px!important}.m-xl-5{margin:32px
important}.mt-xl-5{margin-top:32px!important}.mr-xl-5{margin-right:32px!importa
t}.mb-xl-5{margin-bottom:32px!important}.ml-xl-5{margin-left:32px!important}.mt
xl-n5{margin-top:-32px!important}.mr-xl-n5{margin-right:-32px!important}.mb-xl-
5{margin-bottom:-32px!important}.ml-xl-n5{margin-left:-32px!important}.mx-xl-5{
argin-right:32px!important;margin-left:32px!important}.my-xl-5{margin-top:32px!
mportant;margin-bottom:32px!important}.m-xl-6{margin:40px!important}.mt-xl-6{ma
gin-top:40px!important}.mr-xl-6{margin-right:40px!important}.mb-xl-6{margin-bot
...
...
om:40px!important}.ml-xl-6{margin-left:40px!important}.mt-xl-n6{margin-top:-40p
!important}.mr-xl-n6{margin-right:-40px!important}.mb-xl-n6{margin-bottom:-40px
important}.ml-xl-n6{margin-left:-40px!important}.mx-xl-6{margin-right:40px!impo
tant;margin-left:40px!important}.my-xl-6{margin-top:40px!important;margin-botto
:40px!important}.mx-xl-auto{margin-right:auto!important;margin-left:auto!important}}.p-0{padding:0!important}.pt-0{padding-top:0!important}.pr-0{padding-right:0!
mportant}.pb-0{padding-bottom:0!important}.pl-0{padding-left:0!important}.px-0{
adding-right:0!important;padding-left:0!important}.py-0{padding-top:0!important
...
...
padding-bottom:0!important}.p-1{padding:4px!important}.pt-1{padding-top:4px!imp
rtant}.pr-1{padding-right:4px!important}.pb-1{padding-bottom:4px!important}.pl-
{padding-left:4px!important}.px-1{padding-right:4px!important;padding-left:4px!
mportant}.py-1{padding-top:4px!important;padding-bottom:4px!important}.p-2{padd
ng:8px!important}.pt-2{padding-top:8px!important}.pr-2{padding-right:8px!import
nt}.pb-2{padding-bottom:8px!important}.pl-2{padding-left:8px!important}.px-2{pa
ding-right:8px!important;padding-left:8px!important}.py-2{padding-top:8px!impor
ant;padding-bottom:8px!important}.p-3{padding:16px!important}.pt-3{padding-top:
...
...
6px!important}.pr-3{padding-right:16px!important}.pb-3{padding-bottom:16px!impo
tant}.pl-3{padding-left:16px!important}.px-3{padding-right:16px!important;paddi
g-left:16px!important}.py-3{padding-top:16px!important;padding-bottom:16px!impo
tant}.p-4{padding:24px!important}.pt-4{padding-top:24px!important}.pr-4{padding
right:24px!important}.pb-4{padding-bottom:24px!important}.pl-4{padding-left:24p
!important}.px-4{padding-right:24px!important;padding-left:24px!important}.py-4
padding-top:24px!important;padding-bottom:24px!important}.p-5{padding:32px!impo
tant}.pt-5{padding-top:32px!important}.pr-5{padding-right:32px!important}.pb-5{
...
...
adding-bottom:32px!important}.pl-5{padding-left:32px!important}.px-5{padding-ri
ht:32px!important;padding-left:32px!important}.py-5{padding-top:32px!important;
adding-bottom:32px!important}.p-6{padding:40px!important}.pt-6{padding-top:40px
important}.pr-6{padding-right:40px!important}.pb-6{padding-bottom:40px!importan
}.pl-6{padding-left:40px!important}.px-6{padding-right:40px!important;padding-l
ft:40px!important}.py-6{padding-top:40px!important;padding-bottom:40px!important}@media
(min-width:544px){.p-sm-0{padding:0!important}.pt-sm-0{padding-top:0!im
ortant}.pr-sm-0{padding-right:0!important}.pb-sm-0{padding-bottom:0!important}.
...
...
l-sm-0{padding-left:0!important}.px-sm-0{padding-right:0!important;padding-left
0!important}.py-sm-0{padding-top:0!important;padding-bottom:0!important}.p-sm-1
padding:4px!important}.pt-sm-1{padding-top:4px!important}.pr-sm-1{padding-right
4px!important}.pb-sm-1{padding-bottom:4px!important}.pl-sm-1{padding-left:4px!i
portant}.px-sm-1{padding-right:4px!important;padding-left:4px!important}.py-sm-
{padding-top:4px!important;padding-bottom:4px!important}.p-sm-2{padding:8px!imp
rtant}.pt-sm-2{padding-top:8px!important}.pr-sm-2{padding-right:8px!important}.
b-sm-2{padding-bottom:8px!important}.pl-sm-2{padding-left:8px!important}.px-sm-
...
...
{padding-right:8px!important;padding-left:8px!important}.py-sm-2{padding-top:8p
!important;padding-bottom:8px!important}.p-sm-3{padding:16px!important}.pt-sm-3
padding-top:16px!important}.pr-sm-3{padding-right:16px!important}.pb-sm-3{paddi
g-bottom:16px!important}.pl-sm-3{padding-left:16px!important}.px-sm-3{padding-r
ght:16px!important;padding-left:16px!important}.py-sm-3{padding-top:16px!import
nt;padding-bottom:16px!important}.p-sm-4{padding:24px!important}.pt-sm-4{paddin
-top:24px!important}.pr-sm-4{padding-right:24px!important}.pb-sm-4{padding-bott
m:24px!important}.pl-sm-4{padding-left:24px!important}.px-sm-4{padding-right:24
...
...
x!important;padding-left:24px!important}.py-sm-4{padding-top:24px!important;pad
ing-bottom:24px!important}.p-sm-5{padding:32px!important}.pt-sm-5{padding-top:3
px!important}.pr-sm-5{padding-right:32px!important}.pb-sm-5{padding-bottom:32px
important}.pl-sm-5{padding-left:32px!important}.px-sm-5{padding-right:32px!impo
tant;padding-left:32px!important}.py-sm-5{padding-top:32px!important;padding-bo
tom:32px!important}.p-sm-6{padding:40px!important}.pt-sm-6{padding-top:40px!imp
rtant}.pr-sm-6{padding-right:40px!important}.pb-sm-6{padding-bottom:40px!import
nt}.pl-sm-6{padding-left:40px!important}.px-sm-6{padding-right:40px!important;p
...
...
dding-left:40px!important}.py-sm-6{padding-top:40px!important;padding-bottom:40px!important}}@media
(min-width:768px){.p-md-0{padding:0!important}.pt-md-0{padd
ng-top:0!important}.pr-md-0{padding-right:0!important}.pb-md-0{padding-bottom:0
important}.pl-md-0{padding-left:0!important}.px-md-0{padding-right:0!important;
adding-left:0!important}.py-md-0{padding-top:0!important;padding-bottom:0!impor
ant}.p-md-1{padding:4px!important}.pt-md-1{padding-top:4px!important}.pr-md-1{p
dding-right:4px!important}.pb-md-1{padding-bottom:4px!important}.pl-md-1{paddin
-left:4px!important}.px-md-1{padding-right:4px!important;padding-left:4px!impor
...
...
ant}.py-md-1{padding-top:4px!important;padding-bottom:4px!important}.p-md-2{pad
ing:8px!important}.pt-md-2{padding-top:8px!important}.pr-md-2{padding-right:8px
important}.pb-md-2{padding-bottom:8px!important}.pl-md-2{padding-left:8px!impor
ant}.px-md-2{padding-right:8px!important;padding-left:8px!important}.py-md-2{pa
ding-top:8px!important;padding-bottom:8px!important}.p-md-3{padding:16px!import
nt}.pt-md-3{padding-top:16px!important}.pr-md-3{padding-right:16px!important}.p
-md-3{padding-bottom:16px!important}.pl-md-3{padding-left:16px!important}.px-md
3{padding-right:16px!important;padding-left:16px!important}.py-md-3{padding-top
...
...
16px!important;padding-bottom:16px!important}.p-md-4{padding:24px!important}.pt
md-4{padding-top:24px!important}.pr-md-4{padding-right:24px!important}.pb-md-4{
adding-bottom:24px!important}.pl-md-4{padding-left:24px!important}.px-md-4{padd
ng-right:24px!important;padding-left:24px!important}.py-md-4{padding-top:24px!i
portant;padding-bottom:24px!important}.p-md-5{padding:32px!important}.pt-md-5{p
dding-top:32px!important}.pr-md-5{padding-right:32px!important}.pb-md-5{padding
bottom:32px!important}.pl-md-5{padding-left:32px!important}.px-md-5{padding-rig
t:32px!important;padding-left:32px!important}.py-md-5{padding-top:32px!importan
...
...
;padding-bottom:32px!important}.p-md-6{padding:40px!important}.pt-md-6{padding-
op:40px!important}.pr-md-6{padding-right:40px!important}.pb-md-6{padding-bottom
40px!important}.pl-md-6{padding-left:40px!important}.px-md-6{padding-right:40px
important;padding-left:40px!important}.py-md-6{padding-top:40px!important;padding-bottom:40px!important}}@media
(min-width:1012px){.p-lg-0{padding:0!important}
pt-lg-0{padding-top:0!important}.pr-lg-0{padding-right:0!important}.pb-lg-0{pad
ing-bottom:0!important}.pl-lg-0{padding-left:0!important}.px-lg-0{padding-right
0!important;padding-left:0!important}.py-lg-0{padding-top:0!important;padding-b
...
...
ttom:0!important}.p-lg-1{padding:4px!important}.pt-lg-1{padding-top:4px!importa
t}.pr-lg-1{padding-right:4px!important}.pb-lg-1{padding-bottom:4px!important}.p
-lg-1{padding-left:4px!important}.px-lg-1{padding-right:4px!important;padding-l
ft:4px!important}.py-lg-1{padding-top:4px!important;padding-bottom:4px!importan
}.p-lg-2{padding:8px!important}.pt-lg-2{padding-top:8px!important}.pr-lg-2{padd
ng-right:8px!important}.pb-lg-2{padding-bottom:8px!important}.pl-lg-2{padding-l
ft:8px!important}.px-lg-2{padding-right:8px!important;padding-left:8px!importan
}.py-lg-2{padding-top:8px!important;padding-bottom:8px!important}.p-lg-3{paddin
...
...
:16px!important}.pt-lg-3{padding-top:16px!important}.pr-lg-3{padding-right:16px
important}.pb-lg-3{padding-bottom:16px!important}.pl-lg-3{padding-left:16px!imp
rtant}.px-lg-3{padding-right:16px!important;padding-left:16px!important}.py-lg-
{padding-top:16px!important;padding-bottom:16px!important}.p-lg-4{padding:24px!
mportant}.pt-lg-4{padding-top:24px!important}.pr-lg-4{padding-right:24px!import
nt}.pb-lg-4{padding-bottom:24px!important}.pl-lg-4{padding-left:24px!important}
px-lg-4{padding-right:24px!important;padding-left:24px!important}.py-lg-4{paddi
g-top:24px!important;padding-bottom:24px!important}.p-lg-5{padding:32px!importa
...
...
t}.pt-lg-5{padding-top:32px!important}.pr-lg-5{padding-right:32px!important}.pb
lg-5{padding-bottom:32px!important}.pl-lg-5{padding-left:32px!important}.px-lg-
{padding-right:32px!important;padding-left:32px!important}.py-lg-5{padding-top:
2px!important;padding-bottom:32px!important}.p-lg-6{padding:40px!important}.pt-
g-6{padding-top:40px!important}.pr-lg-6{padding-right:40px!important}.pb-lg-6{p
dding-bottom:40px!important}.pl-lg-6{padding-left:40px!important}.px-lg-6{paddi
g-right:40px!important;padding-left:40px!important}.py-lg-6{padding-top:40px!important;padding-bottom:40px!important}}@media
(min-width:1280px){.p-xl-0{padding
...
...
0!important}.pt-xl-0{padding-top:0!important}.pr-xl-0{padding-right:0!important
.pb-xl-0{padding-bottom:0!important}.pl-xl-0{padding-left:0!important}.px-xl-0{
adding-right:0!important;padding-left:0!important}.py-xl-0{padding-top:0!import
nt;padding-bottom:0!important}.p-xl-1{padding:4px!important}.pt-xl-1{padding-to
:4px!important}.pr-xl-1{padding-right:4px!important}.pb-xl-1{padding-bottom:4px
important}.pl-xl-1{padding-left:4px!important}.px-xl-1{padding-right:4px!import
nt;padding-left:4px!important}.py-xl-1{padding-top:4px!important;padding-bottom
4px!important}.p-xl-2{padding:8px!important}.pt-xl-2{padding-top:8px!important}
...
...
pr-xl-2{padding-right:8px!important}.pb-xl-2{padding-bottom:8px!important}.pl-x
-2{padding-left:8px!important}.px-xl-2{padding-right:8px!important;padding-left
8px!important}.py-xl-2{padding-top:8px!important;padding-bottom:8px!important}.
-xl-3{padding:16px!important}.pt-xl-3{padding-top:16px!important}.pr-xl-3{paddi
g-right:16px!important}.pb-xl-3{padding-bottom:16px!important}.pl-xl-3{padding-
eft:16px!important}.px-xl-3{padding-right:16px!important;padding-left:16px!impo
tant}.py-xl-3{padding-top:16px!important;padding-bottom:16px!important}.p-xl-4{
adding:24px!important}.pt-xl-4{padding-top:24px!important}.pr-xl-4{padding-righ
...
...
:24px!important}.pb-xl-4{padding-bottom:24px!important}.pl-xl-4{padding-left:24
x!important}.px-xl-4{padding-right:24px!important;padding-left:24px!important}.
y-xl-4{padding-top:24px!important;padding-bottom:24px!important}.p-xl-5{padding
32px!important}.pt-xl-5{padding-top:32px!important}.pr-xl-5{padding-right:32px!
mportant}.pb-xl-5{padding-bottom:32px!important}.pl-xl-5{padding-left:32px!impo
tant}.px-xl-5{padding-right:32px!important;padding-left:32px!important}.py-xl-5
padding-top:32px!important;padding-bottom:32px!important}.p-xl-6{padding:40px!i
portant}.pt-xl-6{padding-top:40px!important}.pr-xl-6{padding-right:40px!importa
...
...
t}.pb-xl-6{padding-bottom:40px!important}.pl-xl-6{padding-left:40px!important}.
x-xl-6{padding-right:40px!important;padding-left:40px!important}.py-xl-6{paddin
-top:40px!important;padding-bottom:40px!important}}.markdown-body{font-family:-apple-system,BlinkMacSystemFont,"Segoe
UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI
Symbol";f
nt-size:16px;line-height:1.5;word-wrap:break-word}.markdown-body::before{displa
:table;content:""}.markdown-body::after{display:table;clear:both;content:""}.markdown-body>* :first-child{margin-top:0!important}.markdown-body>*
:last-child{margin-bottom:0!important}.markdown-body
a:not([href]){color:inherit;text-decoration:none}.markdown-body .absent{color:#cb2431}.markdown-body
.anchor{float:left;padding-right:4px;margin-left:-20px;line-height:1}.markdown-body
...
...
.anchor:focus{outline:0}.markdown-body blockquote,.markdown-body dl,.markdown-body
ol,.markdown-body p,.markdown-body pre,.markdown-body table,.markdown-body
ul{margin-top:0;margin-bottom:16px}.markdown-body hr{height:.25em;padding:0;margin:24px
0;background-color:#e1e4e8;border:0}.markdown-body blockquote{padding:0
1em;color:#6a737d;border-left:.25em solid #dfe2e5}.markdown-body
blockquote>:first-child{margin-top:0}.markdown-body blockquote>:last-child{margin-bottom:0}.markdown-body
kbd{display:inline-block;padding:3px
5px;font-size:11px;line-height:10px;color:#444d56;vertical-align:middle;background-color:#fafbfc;border:solid 1px
#c6cbd1;border-bottom-color:#959da5;border-radius:3px;box-shadow:inset 0 -1px 0
...
...
#959da5}.markdown-body h1,.markdown-body h2,.markdown-body h3,.markdown-body h4,.markdown-body
h5,.markdown-body
h6{margin-top:24px;margin-bottom:16px;font-weight:600;line-height:1.25}.markdown-body h1 .octicon-link,.markdown-body h2
.octicon-link,.markdown-body h3 .octicon-link,.markdown-body h4 .octicon-link,.markdown-body h5
.octicon-link,.markdown-body h6
.octicon-link{color:#1b1f23;vertical-align:middle;visibility:hidden}.markdown-body h1:hover .anchor,.markdown-body h2:hover
.anchor,.markdown-body h3:hover .anchor,.markdown-body h4:hover .anchor,.markdown-body
h5:hover .anchor,.markdown-body h6:hover
.anchor{text-decoration:none}.markdown-body h1:hover .anchor .octicon-link,.markdown-body h2:hover .anchor
...
...
.octicon-link,.markdown-body h3:hover .anchor .octicon-link,.markdown-body h4:hover .anchor
.octicon-link,.markdown-body h5:hover .anchor .octicon-link,.markdown-body
h6:hover .anchor .octicon-link{visibility:visible}.markdown-body h1 code,.markdown-body
h1 tt,.markdown-body h2 code,.markdown-body h2 tt,.markdown-body h3
code,.markdown-body h3 tt,.markdown-body h4 code,.markdown-body h4 tt,.markdown-body h5
code,.markdown-body h5 tt,.markdown-body h6 code,.markdown-body h6
tt{font-size:inherit}.markdown-body h1{padding-bottom:.3em;font-size:2em;border-bottom:1px solid
#eaecef}.markdown-body h2{padding-bottom:.3em;font-size:1.5em;border-bottom:1px
...
...
solid #eaecef}.markdown-body h3{font-size:1.25em}.markdown-body
h4{font-size:1em}.markdown-body h5{font-size:.875em}.markdown-body
h6{font-size:.85em;color:#6a737d}.markdown-body ol,.markdown-body ul{padding-left:2em}.markdown-body
ol.no-list,.markdown-body ul.no-list{padding:0;list-style-type:none}.markdown-body ol
ol,.markdown-body ol ul,.markdown-body ul ol,.markdown-body ul
ul{margin-top:0;margin-bottom:0}.markdown-body li{word-wrap:break-all}.markdown-body
li>p{margin-top:16px}.markdown-body li+li{margin-top:.25em}.markdown-body
dl{padding:0}.markdown-body dl
...
...
dt{padding:0;margin-top:16px;font-size:1em;font-style:italic;font-weight:600}.markdown-body dl dd{padding:0 16px;margin-bottom:16px}.markdown-body
table{display:block;width:100%;overflow:auto}.markdown-body table
th{font-weight:600}.markdown-body table td,.markdown-body table th{padding:6px 13px;border:1px
solid #dfe2e5}.markdown-body table tr{background-color:#fff;border-top:1px solid
#c6cbd1}.markdown-body table
tr:nth-child(2n){background-color:#f6f8fa}.markdown-body table img{background-color:transparent}.markdown-body
img{max-width:100%;box-sizing:content-box;background-color:#fff}.markdown-body
img[align=right]{padding-left:20px}.markdown-body img[align=left]{padding-right:20px}.markdown-body
...
...
emoji{max-width:none;vertical-align:text-top;background-color:transparent}.markdown-body span.frame{display:block;overflow:hidden}.markdown-body
span.frame>span{display:block;float:left;width:auto;padding:7px;margin:13px 0
0;overflow:hidden;border:1px solid #dfe2e5}.markdown-body span.frame span
img{display:block;float:left}.markdown-body span.frame span span{display:block;padding:5px 0
0;clear:both;color:#24292e}.markdown-body
span.align-center{display:block;overflow:hidden;clear:both}.markdown-body span.align-center>span{display:block;margin:13px auto
0;overflow:hidden;text-align:center}.markdown-body span.align-center span
img{margin:0 auto;text-align:center}.markdown-body
span.align-right{display:block;overflow:hidden;clear:both}.markdown-body
span.align-right>span{display:block;margin:13px 0 0;overflow:hidden;text-align:right}.markdown-body span.align-right span
...
...
img{margin:0;text-align:right}.markdown-body
span.float-left{display:block;float:left;margin-right:13px;overflow:hidden}.markdown-body span.float-left
span{margin:13px 0 0}.markdown-body
span.float-right{display:block;float:right;margin-left:13px;overflow:hidden}.markdown-body
span.float-right>span{display:block;margin:13px auto 0;overflow:hidden;text-align:right}.markdown-body
code,.markdown-body tt{padding:.2em
.4em;margin:0;font-size:85%;background-color:rgba(27,31,35,.05);border-radius:3px}.markdown-body code br,.markdown-body tt
br{display:none}.markdown-body del code{text-decoration:inherit}.markdown-body
pre{word-wrap:normal}.markdown-body
pre>code{padding:0;margin:0;font-size:100%;word-break:normal;white-space:pre;background:0 0;border:0}.markdown-body
...
...
.highlight{margin-bottom:16px}.markdown-body .highlight pre{margin-bottom:0;word-break:normal}.markdown-body
.highlight pre,.markdown-body
pre{padding:16px;overflow:auto;font-size:85%;line-height:1.45;background-color:#f6f8fa;border-radius:3px}.markdown-body pre
code,.markdown-body pre
tt{display:inline;max-width:auto;padding:0;margin:0;overflow:
isible;line-height:inherit;word-wrap:normal;background-color:transparent;border:0}.markdown-body .csv-data td,.markdown-body .csv-data
th{padding:5px;overflow:
idden;font-size:12px;line-height:1;text-align:left;white-space:nowrap}.markdown-body .csv-data .blob-num{padding:10px 8px
9px;text-align:right;background:#fff;border:0}.markdown-body .csv-data tr{border-top:0}.markdown-body .csv-data
...
...
th{font-weight:600;background:#f6f8fa;border-top:0}.highlight table
td{padding:5px}.highlight table pre{margin:0}.highlight
.cm{color:#998;font-style:italic}.highlight .cp{color:#999;font-weight:700}.highlight
.c1{color:#998;font-style:italic}.highlight .cs{color:#999;font-weight:700;font-style:italic}.highlight
.c,.highlight .cd{color:#998;font-style:italic}.highlight
.err{color:#a61717;background-color:#e3d2d2}.highlight .gd{color:#000;background-color:#fdd}.highlight
.ge{color:#000;font-style:italic}.highlight .gr{color:#a00}.highlight
.gh{color:#999}.highlight .gi{color:#000;background-color:#dfd}.highlight .go{color:#888}.highlight
.gp{color:#555}.highlight .gs{font-weight:700}.highlight
...
...
.gu{color:#aaa}.highlight .gt{color:#a00}.highlight .kc{color:#000;font-weight:700}.highlight
.kd{color:#000;font-weight:700}.highlight .kn{color:#000;font-weight:700}.highlight
.kp{color:#000;font-weight:700}.highlight .kr{color:#000;font-weight:700}.highlight
.kt{color:#458;font-weight:700}.highlight .k,.highlight
.kv{color:#000;font-weight:700}.highlight .mf{color:#099}.highlight .mh{color:#099}.highlight
.il{color:#099}.highlight .mi{color:#099}.highlight .mo{color:#099}.highlight .m,.highlight
.mb,.highlight .mx{color:#099}.highlight .sb{color:#d14}.highlight
.sc{color:#d14}.highlight .sd{color:#d14}.highlight .s2{color:#d14}.highlight
...
...
.se{color:#d14}.highlight .sh{color:#d14}.highlight .si{color:#d14}.highlight
.sx{color:#d14}.highlight .sr{color:#009926}.highlight .s1{color:#d14}.highlight
.ss{color:#990073}.highlight .s{color:#d14}.highlight .na{color:teal}.highlight
.bp{color:#999}.highlight .nb{color:#0086b3}.highlight
.nc{color:#458;font-weight:700}.highlight .no{color:teal}.highlight .nd{color:#3c5d5d;font-weight:700}.highlight
.ni{color:purple}.highlight .ne{color:#900;font-weight:700}.highlight
.nf{color:#900;font-weight:700}.highlight .nl{color:#900;font-weight:700}.highlight
.nn{color:#555}.highlight .nt{color:navy}.highlight .vc{color:teal}.highlight
...
...
.vg{color:teal}.highlight .vi{color:teal}.highlight .nv{color:teal}.highlight
.ow{color:#000;font-weight:700}.highlight .o{color:#000;font-weight:700}.highlight
.w{color:#bbb}.highlight{background-color:#f8f8f8}</style>
      </head>
      <body
class="bg-white">
        <nav class="container-md px-3 py-2 mt-2 mt-md-5 mb-5
markdown-body">
          <p class="bg-yellow-light ml-n1 px-1 py-1 mb-1">
           
<strong>This is a web feed,</strong> also known as an RSS feed.
<strong>Subscribe</strong> by copying the URL from the address bar into your newsreader.
         
</p>
          <p class="text="gray"">
            Visit <a
href="https://aboutfeeds.com">About Feeds</a> to get started with newsreaders and subscribing. It's
free.
          </p>
        </nav>
...
...
        <div class="container-md px-3 py-3
markdown-body">
          <header class="py-5">
            <h1 class="border-0">
 
            <!-- https://commons.wikimedia.org/wiki/File:Feed-icon.svg -->
    
         <svg xmlns="http://www.w3.org/2000/svg" version="1.1"
style="vertical-align: text-bottom; width: 1.2em; height: 1.2em;" class="pr-1" id="RSSicon"
viewBox="0 0 256 256">
                <defs>
                  <linearGradient
x1="0.085" y1="0.085" x2="0.915" y2="0.915" id="RSSg">
                    <stop 
offset="0.0" stop-color="#E3702D"/><stop  offset="0.1071" stop-color="#EA7D31"/>
 
                  <stop  offset="0.3503" stop-color="#F69537"/><stop 
                  ...
...
offset="0.5" stop-color="#FB9E3A"/>
                    <stop  offset="0.7016"
stop-color="#EA7C31"/><stop  offset="0.8866" stop-color="#DE642B"/>
                   
<stop  offset="1.0" stop-color="#D95B29"/>
                  </linearGradient>
   
            </defs>
                <rect width="256" height="256" rx="55"
ry="55" x="0"  y="0"  fill="#CC5D15"/>
                <rect width="246"
height="246" rx="50" ry="50" x="5"  y="5"  fill="#F49C52"/>
                <rect
width="236" height="236" rx="47" ry="47" x="10" y="10" fill="url(#RSSg)"/>
              
 <circle cx="68" cy="189" r="24" fill="#FFF"/>
                <path d="M160
...
...
213h-34a82 82 0 0 0 -82 -82v-34a116 116 0 0 1 116 116z" fill="#FFF"/>
            
   <path d="M184 213A140 140 0 0 0 44 73 V 38a175 175 0 0 1 175 175z"
fill="#FFF"/>
              </svg>

              Web Feed Preview
            </h1>
    
       <h2><xsl:value-of select="/rss/channel/title"/></h2>
           
<p><xsl:value-of select="/rss/channel/description"/></p>
            <a
class="head_link" target="_blank">
              <xsl:attribute name="href">
               
<xsl:value-of select="/rss/channel/link"/>
              </xsl:attribute>
        
     Visit Website &#x2192;
            </a>
          </header>
         
<h2>Recent Items</h2>
          <xsl:for-each select="/rss/channel/item">
          
 <div class="pb-5">
...
...
              <h3 class="mb-0">
                <a
target="_blank">
                  <xsl:attribute name="href">
                   
<xsl:value-of select="link"/>
                  </xsl:attribute>
                 
<xsl:value-of select="title"/>
                </a>
              </h3>
          
   <small class="text-gray">
                Published: <xsl:value-of
select="pubDate" />
              </small>
            </div>
          </xsl:for-each>
 
      </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>