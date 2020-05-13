
<%@taglib uri='/WEB-INF/tlds/mytags.tld' prefix='db'%>
<db:DBInstallation >
forward='${forward}';
alert(forward);
if(forward.equals("true")){
<jsp:forward page='/DBInstallationRequest.jsp' />
}
</db:DBInstallation>
<jsp:forward page='/login.jsp' />