<!--- http://help.adobe.com/en_US/ColdFusion/9.0/CFMLRef/WSe9cbe5cf462523a0693d5dae123bcd28f6d-7ff9.html --->
<cfscript>
mailmanager = new hello_mail;
if(IsDefined("form.mailto")) { 
	if(form.mailto is not "" 
	and form.mailfrom is not "" 
	and form.Subject is not "" 
	and form.attachment is not "") 
	{ 
	    savecontent variable="mailBody"{ 
	        WriteOutput("This message was sent by an automatic mailer built with cfmail:= = = = = = = = = = = = = = = = = = = = = = = = = = =" & "<br><br>" & form.body); 
	       }
	}
}
</cfscript>

<p> 
<form action = "mail1.cfm" method="POST"> 
    <table> 
    <tr> 
    <td>TO</td> 
    <td><input type = "Text" name = "MailTo"></td> 
    </tr> 
    <tr> 
    <td>FROM</td> 
    <td><input type = "Text" name = "MailFrom"></td> 
    </tr> 
    <tr> 
    <td>SUBJECT</td> 
    <td><input type = "Text" name = "Subject"></td> 
    </tr> 
    <tr> 
    <td>ATTACHMENT</td> 
    <td><input type = "file" name = "attachment"></td> 
    </tr> 
    </table> 
    <hr> 
    MESSAGE BODY: 
    <br> 
    <textarea name ="body" cols="40" rows="5" wrap="virtual"></textarea> 
    <!--- Establish required fields. ---> 
    <input type = "hidden" name = "MailTo_required" value = "You must enter a recipient"> 
    <input type = "hidden" name = "MailFrom_required" value = "You must enter a sender"> 
    <input type = "hidden" name = "Subject_required" value = "You must enter a subject"> 
    <input type = "hidden" name = "Body_required" value = "You must enter some text"> 
    <input type = "hidden" name = "attachment_required" value = "You must select a file"> 
    <p><input type = "Submit" name = ""></p> 
</p> 
</form>