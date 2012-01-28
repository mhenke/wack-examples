component {
	public any function make_mail(){
    mailerService = new mail(); 
     
            /* set mail attributes using implicit setters provided */ 
            mailerService.setTo(form.mailto); 
            mailerService.setFrom(form.mailFrom); 
            mailerService.setSubject(form.subject); 
            mailerService.setType("html"); 
            /* add mailparams */ 
            mailerService.addParam(file=expandpath(form.attachment),type="text/plain",remove=false); 
            /* send mail using send(). Attribute values specified in an end action like "send" will not persist after the action is performed */ 
            mailerService.send(body=mailBody); 
            writeoutput("<h3>Thank you</h3>" & "<p>Thank you, " & mailfrom & "<br>" & "Your message, " & subject & ", has been sent to " & mailto & "</p>"); 
        } 
} 