<cfscript>
feedservice = new feed();
feedservice.read(source="http://googleblog.blogspot.com/atom.xml",  query="feedQuery", properties="feedMetadata");
</cfscript>

<!--- example from http://help.adobe.com/en_US/ColdFusion/9.0/CFMLRef/WSd160b5fdf5100e8f-4439fdac128193edfd6-7f75.html --->