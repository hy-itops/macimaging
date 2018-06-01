#!/bin/bash
# taniacomputer.com, March 2017
# Create DEP HTML Files
# Creates the HTML Files to then be used the Trigger DEP workflow

function create1() {
FILE="$1"
if [[ -f "$FILE" ]]
then
    rm "$FILE"
fi

echo "<html>
<head>
    <title>ACME Mac Setup</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
</head>
<body>
<div class=\"titleBar\"><img class=\"titleIcon\" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\"><h1 class=\"titleText\">ACME Mac Setup</h1></div>

	<div class=\"documentWrapper\"><img class="logo" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\">
    	<div id=\"mainText\">This Mac will now be setup as an ACME Inc. Mac<br />Before beginning:</div>	
		<div id=\"mainList\">
			<ul>
			<li>Make sure your Mac is connected to the wired network</span></li>
			<li>Make sure your Mac is connected to a power source.</span></li>
			</ul>
		</div>
		<p>
		
		<div id=\"mainTitle\"  style=\"color:black;\">Click Ready to begin.</div>
        <div id=\"buttons\"\">
			<a href=\"http://quit\"><button id=\"buttonLeft\">Cancel</button></a>
  			<a href=\"http://next\"><button id=\"buttonRight\">Ready</button></a>
		</div>
    </div>
<div class=\"footerBar\"><div class=\"footerText\">For assistance, contact ACME's Service & Support Centre</a><br />www: acme.com/serviceandsupport | ext. 88888 | phone: (03) 9925 8888</div></div>
</body>
</html>" > "$FILE"

}

function create2() {
FILE="$1"
if [[ -f "$FILE" ]]
then
    rm "$FILE"
fi

echo "<html>
<head>
    <title>ACME Mac Setup</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
</head>
<body>
<div class=\"titleBar\"><img class=\"titleIcon\" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\"><h1 class=\"titleText\">ACME Mac Setup</h1></div>

	<div class=\"documentWrapper\"><img class="logo" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\">
    <div id=\"setupProgress\">
    		<div id=\"mainStatus\" class=\"done\"><img src=\"https://media.giphy.com/media/fo6l1ADrd03Is/giphy.gif\" class=\"inprogressSmallImage\"> Mac Configuration</div>
			<div id=\"mainStatus\" class=\"done\" style=\"color:#d3d3d3;\">&nbsp;&nbsp; Software</div>
			<div id=\"subText\">
				Citrix Receiver<br />
				FTP Client<br />
				Microsoft Office 2016<br />
				Google Chrome<br />
			</div>
		</div>
    </div>

<div class=\"footerBar\"><div class=\"footerText\">For assistance, contact ACME's Service & Support Centre</a><br />www: acme.com/serviceandsupport | ext. 88888 | phone: (03) 9925 8888</div></div>
</body>
</html>
" > "$FILE"
}

function create3() {
FILE="$1"
if [[ -f "$FILE" ]]
then
    rm "$FILE"
fi
echo "<html>
<head>
    <title>ACME Mac Setup</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
</head>
<body>
<div class=\"titleBar\"><img class=\"titleIcon\" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\"><h1 class=\"titleText\">ACME Mac Setup</h1></div>

	<div class=\"documentWrapper\"><img class="logo" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\">
		<div id=\"setupProgress\">
    		<div id=\"mainStatus\" class=\"done\">&#10003; Mac Configuration</div>
			<div id=\"mainStatus\" class=\"done\">&#9755; Software</div>
			<div id=\"subText\">
				<img class=\"inprogressSmallImage\" src=\"https://media.giphy.com/media/fo6l1ADrd03Is/giphy.gif\" class=\"icon\"><div class=\"done\">Citrix Receiver</div><br />
				FTP Client<br />
				Microsoft Office 2016<br />
				Google Chrome<br />
			</div>
		</div>
    </div>
<div class=\"footerBar\"><div class=\"footerText\">For assistance, contact ACME's Service & Support Centre</a><br />www: acme.com/serviceandsupport | ext. 88888 | phone: (03) 9925 8888</div></div>
</body>
</html>" > "$FILE"
}
function create4() {
FILE="$1"
if [[ -f "$FILE" ]]
then
    rm "$FILE"
fi
echo "<html>
<head>
    <title>ACME Mac Setup</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
</head>
<body>
<div class=\"titleBar\"><img class=\"titleIcon\" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\"><h1 class=\"titleText\">ACME Mac Setup</h1></div>

	<div class=\"documentWrapper\"><img class="logo" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\">
    <div id=\"setupProgress\">
    		<div id=\"mainStatus\" class=\"done\">&#10003; Mac Configuration</div>
			<div id=\"mainStatus\" class=\"done\">&#9755; Software</div>
			<div id=\"subText\">
				<div class=\"done\">Citrix Receiver</div><br />
				<img class=\"inprogressSmallImage\" src=\"https://media.giphy.com/media/fo6l1ADrd03Is/giphy.gif\" class=\"icon\"><div class=\"done\">FTP Client</div><br />
				Microsoft Office 2016<br />
				Google Chrome<br />
			</div>
		</div>
    </div>
<div class=\"footerBar\"><div class=\"footerText\">For assistance, contact ACME's Service & Support Centre</a><br />www: acme.com/serviceandsupport | ext. 88888 | phone: (03) 9925 8888</div></div>
</body>
</html>" > "$FILE"
}
function create5() {
FILE="$1"
if [[ -f "$FILE" ]]
then
    rm "$FILE"
fi

echo "<html>
<head>
    <title>ACME Mac Setup</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
</head>
<body>
<div class=\"titleBar\"><img class=\"titleIcon\" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\"><h1 class=\"titleText\">ACME Mac Setup</h1></div>

	<div class=\"documentWrapper\"><img class="logo" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\">
    	<div id=\"setupProgress\">
    		<div id=\"mainStatus\" class=\"done\">&#10003; Mac Configuration</div>
			<div id=\"mainStatus\" class=\"done\">&#9755; Software</div>
			<div id=\"subText\">
				<div class=\"done\">Citrix Receiver</div><br />
				<div class=\"done\">FTP Client</div><br />
				<img class=\"inprogressSmallImage\" src=\"https://media.giphy.com/media/fo6l1ADrd03Is/giphy.gif\" class=\"icon\"><div class=\"done\">Microsoft Office 2016</div><br />
				Google Chrome<br />
			</div>
		</div>
    </div>
<div class=\"footerBar\"><div class=\"footerText\">For assistance, contact ACME's Service & Support Centre</a><br />www: acme.com/serviceandsupport | ext. 88888 | phone: (03) 9925 8888</div></div>
</body>
</html>" > "$FILE"
}

function create6() {
FILE="$1"
if [[ -f "$FILE" ]]
then
    rm "$FILE"
fi

echo "<html>
<head>
    <title>ACME Mac Setup</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
</head>
<body>
<div class=\"titleBar\"><img class=\"titleIcon\" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\"><h1 class=\"titleText\">ACME Mac Setup</h1></div>

	<div class=\"documentWrapper\"><img class="logo" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\">
    	<div id=\"setupProgress\">
    		<div id=\"mainStatus\" class=\"done\">&#10003; Mac Configuration</div>
			<div id=\"mainStatus\" class=\"done\">&#9755; Software</div>
			<div id=\"subText\">
				<div class=\"done\">Citrix Receiver</div><br />
				<div class=\"done\">FTP Client</div><br />
				<div class=\"done\">Microsoft Office 2016</div><br />
				<img class=\"inprogressSmallImage\" src=\"https://media.giphy.com/media/fo6l1ADrd03Is/giphy.gif\" class=\"icon\"><div class=\"done\">Google Chrome</div><br />
			</div>
		</div>
    </div>
<div class=\"footerBar\"><div class=\"footerText\">For assistance, contact ACME's Service & Support Centre</a><br />www: acme.com/serviceandsupport | ext. 88888 | phone: (03) 9925 8888</div></div>
</body>
</html>
" > "$FILE"


}

function create7() {
FILE="$1"
if [[ -f "$FILE" ]]
then
    rm "$FILE"
fi

echo "<html>
<head>
    <title>ACME Mac Setup</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
</head>
<body>
<div class=\"titleBar\"><img class=\"titleIcon\" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\"><h1 class=\"titleText\">ACME Mac Setup</h1></div>

	<div class=\"documentWrapper\"><img class="logo" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\">
    	<div id=\"setupProgress\">
    		<div id=\"mainStatus\" class=\"done\">&#10003; Mac Configuration</div>
			<div id=\"mainStatus\" class=\"done\">&#9755; Software</div>
			<div id=\"subText\">
				<div class=\"done\">Citrix Receiver</div><br />
				<div class=\"done\">FTP Client</div><br />
				<div class=\"done\">Microsoft Office 2016</div><br />
				<div class=\"done\">Google Chrome</div><br />
			</div>
		</div>
    </div>
<div class=\"footerBar\"><div class=\"footerText\">For assistance, contact ACME's Service & Support Centre</a><br />www: acme.com/serviceandsupport | ext. 88888 | phone: (03) 9925 8888</div></div>
</body>
</html>" > "$FILE"

}

function create8() {
FILE="$1"
if [[ -f "$FILE" ]]
then
    rm "$FILE"
fi

echo "<html>
<head>
    <title>ACME Mac Setup</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
</head>
<body>
<div class=\"titleBar\"><img class=\"titleIcon\" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\"><h1 class=\"titleText\">ACME Mac Setup</h1></div>

	<div class=\"documentWrapper\"><img class="logo" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\">
    	<div id=\"setupProgress\">
    		<div id=\"mainStatus\" class=\"done\">&#10003; Mac Configuration</div>
			<div id=\"mainStatus\" class=\"done\">&#10003; Software</div>
			<div id=\"subText\">
				<div class=\"done\">&#10003; Citrix Receiver</div><br />
				<div class=\"done\">&#10003; FTP Client</div><br />
				<div class=\"done\">&#10003; Microsoft Office 2016</div><br />
				<div class=\"done\">&#10003; Google Chrome</div><br />
			</div>
		</div>
    </div>
<div class=\"footerBar\"><div class=\"footerText\">For assistance, contact ACME's Service & Support Centre</a><br />www: acme.com/serviceandsupport | ext. 88888 | phone: (03) 9925 8888</div></div>
</body>
</html>" > "$FILE"
}

function create9() {
FILE="$1"
if [[ -f "$FILE" ]]
then
    rm "$FILE"
fi

echo "<html>
<head>
    <title>ACME Mac Setup</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
</head>
<body>
<div class=\"titleBar\"><img class=\"titleIcon\" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\"><h1 class=\"titleText\">ACME Mac Setup</h1></div>

	<div class=\"documentWrapper\"><img class="logo" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\">
		<div id=\"mainTitle\">Install Additional Software</div>
		<p>
		<form class=\"additional-apps\">
			<div id=\"field1\">
			 <input name=\"install_cc\" type=\"checkbox\" id=\"adobecc\"/>
			 <label id=\"app\">Adobe Creative Cloud 2017</label><br />
			</div>
			<div id=\"field1\">
			 <input name=\"install_acrobat_dc\" type=\"checkbox\" id=\"adobecc\"/>
			 <label id=\"app\">Adobe Acrobat Pro</label><br />
			</div>
			<div id=\"field1\">
			 <input name=\"endnote\" type=\"checkbox\" id=\"adobecc\"/>
			 <label id=\"app\">Endnote X8</label><br />
			</div>
			<div id=\"field1\">
			 <input name=\"vmware_7\" type=\"checkbox\" id=\"adobecc\"/>
			 <label id=\"app\">VMware Fusion</label><br />
			</div>
		</form> 
		
		<div id=\"buttons\" style=\"width: 360px;margin-left:170px;\">
			<a href=\"http://quit\"><button id=\"buttonLeft\" style=\"width: 220px;\">Cancel & Reboot</button></a>
  			<a href='http://formParse'><button id=\"buttonRight\">Install</button></a>
		</div>
</div>
<div class=\"footerBar\"><div class=\"footerText\">For assistance, contact ACME's Service & Support Centre</a><br />www: acme.com/serviceandsupport | ext. 88888 | phone: (03) 9925 8888</div></div>
</body>
</html>" > "$FILE"

}

function create10() {
FILE="$1"
if [[ -f "$FILE" ]]
then
    rm "$FILE"
fi

echo "<html>
<head>
    <title>ACME Mac Setup</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
</head>
<body>
	<div class=\"titleBar\"><img class=\"titleIcon\" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\"><h1 class=\"titleText\">ACME Mac Setup</h1></div>

	<div class=\"documentWrapper\"><img class="logo" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\">
		<div id=\"mainText\" style=\"color:black;\">Mac Setup is now complete.</div>
		<p>
		<object class=\"object\" data=\"output1.html\"></object>
		<object class=\"object\" data=\"output2.html\"></object>	

		<a href=\"http://quit\"><button class=\"button1\">Finish</button></a>
	
	</div>
<div class=\"footerBar\"><div class=\"footerText\">For assistance, contact ACME's Service & Support Centre</a><br />www: acme.com/serviceandsupport | ext. 88888 | phone: (03) 9925 8888</div></div>
</body>
</html>" > "$FILE"

}

function create11() {
FILE="$1"
if [[ -f "$FILE" ]]
then
    rm "$FILE"
fi

echo "html,
body {
     font-family: HelveticaNeue-Light;
     color: #d3d3d3;
     margin:0;
     padding:0;
     height:100%;
}
.documentWrapper {
        width: 700px;
        height: 600px;
        font-size: 22px;
        font-weight: 300;
        display: block;
        margin-right: auto;
        margin-left: auto;
        float: center;
        padding-top: 20px;
        padding-bottom: 20px;
        padding-left: 0px;
        padding-right: 0px;
        letter-spacing: 2px;
        vertical-align: middle;
}
.object {
	width: 700px;
	height: 300px;
	display: block;
        margin-right: auto;
        margin-left: auto;
        float: center;
}
#setupProgress {
        width:500px;
        letter-spacing: 2px;
        display: block;
        margin-left:auto;
        margin-right:auto;
}
.logo {
	height: 100px;
	width: 100px;
	margin-left: auto;
	margin-right: auto;
	float: center;
	display: block;
}
.titleBar {
        border-style: solid;
    border-color: #ed1b24;
    border-top-width: 0px;
    border-left-width: 0px;
    border-right-width: 0px;
    border-bottom-width: 2px;
    padding-top:5px;
    height: 40px;
    width: 100%;
}

.titleIcon {
    height: 26px;
    width: 26px;
    margin: 5px 0 0 10px;
}

.titleText {
    color: #ed1b24;
    display: inline-block;
    font-family: HelveticaNeue-Light;
    font-size: 22px;
    font-weight: 500;
    letter-spacing: 2px;
    margin: 5px 0 0 10px;
    vertical-align: top;
}
.footerBar {
        border-style: solid;
    border-color: #ed1b24;
    border-top-width: 2px;
    border-left-width: 0px;
    border-right-width: 0px;
    border-bottom-width: 0px;
    padding-top:5px;
    bottom: 0;
    height: 40px;
        left: 0;
    position: absolute;
    width: 100%;
    vertical-align: bottom;
}
.footerText {
    color: #ed1b24;
    display: inline-block;
    font-family: HelveticaNeue-Light;
    font-size:  14px;
    font-weight: 300;
    margin-top: 2px;
    float: right;
    margin-right: 10px;
    padding-right: 5px;
    margin-left: auto;
    letter-spacing: 2px;
    vertical-align: top;
}
ul {
        line-height: 180%;
        list-style-type: none;
}

li:before {
        content: \"\\21e5\";
        color: #f44336;
        padding-right: 8px;
}
.done {
        color: #504c4c;
        display: inline-block;
        padding-left: 10px;
}
.additional-apps {
letter-spacing: 1px;
display: block;
margin-left:auto;
margin-right:auto;
color: black;
font-size: 28px;
width: 400px;
margin-left: 150px;
}
.additional-apps[type=checkbox] {
        width: 20px;
        height: 20px;
}
a.next {
        display: inline-block;
        background-color:#00b4d3;
        font-size: 18px;
        text-decoration: none;
}
.mainImg {
        display: block;
        margin-left: auto;
        margin-right: auto;
        padding-top: 10px;
        border: 0;
}
#mainTitle, #mainList, #mainText, #app, #mainStatus {
        font-size: 22px;
    font-weight: 300;
    letter-spacing: 2px;
    text-align: center;
        color: #ed1b24;
}
#mainList, #mainStatus {
        margin-left:50px;
        margin-top: 50px;
    text-align: left;
}
#mainStatus {
        margin-top: 20px;
        display: block;
        font-size: 28px;
        color: #504c4c;
}
#mainText, #app {
        color: #504c4c;
}

#mainTitle {
        font-weight: 600;
}

#subText {
        margin-left: 100px;
}

.button1, .continueButton {
        color: #ed1b24;
        height: 50px;
        width: 120px;
        font-size: 22px;
        letter-spacing: 2px;
        text-align: center;
        background-color: white;
   		-webkit-transition-duration: 0.4s; /* Safari */
        transition-duration: 0.4s;
        cursor: pointer;
        border: 2px solid #f44336;
        bottom: 0;
        position: absolute;
        float:center;
        margin-left: 290px;
        margin-right: auto;
        margin-bottom: 80px;
        vertical-align: bottom;
}
#buttonLeft, #buttonRight {
        color: #ed1b24;
        height: 50px;
        width: 120px;
        font-size: 22px;
        letter-spacing: 2px;
        text-align: center;
        background-color: white;
    	-webkit-transition-duration: 0.4s; /* Safari */
   		transition-duration: 0.4s;
    	cursor: pointer;
    	border: 2px solid #f44336;
        display: inline;
}
#buttonLeft {
        float: left;
}
#buttonRight {
        margin-left:20px;
        float: right;
}
#buttons {
        bottom: 0;
        position: absolute;
        float:center;
        display: block;
        margin-left: 220px;
        margin-right: auto;
        margin-bottom: 80px;
        vertical-align: bottom;
        height: 50px;
        width: 260px;
}
a {
        text-decoration: none;
        color: #ed1b24;
}
.continueButton {
        display: none;
}
.button1:hover, .continueButton:hover, .installButton:hover, #buttonLeft:hover, #buttonRight:hover {
	    background-color: #f44336;
    	color: white;
}
.inprogressImage {
        width: 25px;
}
.inprogressSmallImage {
        width: 18px;
}
" > "$FILE"

}
create1 "/tmp/start.html"
create2 "/tmp/status1.html"
create3 "/tmp/status2.html"
create4 "/tmp/status3.html"
create5 "/tmp/status4.html"
create6 "/tmp/status5.html"
create7 "/tmp/status6.html"
create8 "/tmp/status7.html"
create9 "/tmp/extra_apps.html"
create10 "/tmp/finish.html"
create11 "/tmp/stylesheet.css"