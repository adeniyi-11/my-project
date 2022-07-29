<%@page import="rateplan.RatePlanDAO"%>
<%@page import="org.apache.log4j.Logger"%>
<%@page import="pin.AddPinBatchDAO"%>
<%@page import="pin.PinBatchRepository"%>
<%@page import="pin.PinBatchDTO"%>
<%@page import="rateplan.RatePlanDTO,FileUpload.*"%>
<%@page import="rateplan.RatePlanService"%>
<%@ include file="../includes/checkLogin.jsp" %>

<%@ page language="java" %>
<%@ taglib uri="../WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="../WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="../WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ page import="java.util.*,java.text.*,sessionmanager.SessionConstants" %>
<%@ page errorPage="failure.jsp" %>

<%
//FileParser dao= new FileParser();
	//dao.addSingleClient("res_test_7",loginDTO);
	//dao.addSinglePin("test_pin_4", 79001, loginDTO);
	
	
	Logger logger=Logger.getLogger("uploadAfile_jsp");
	
	logger.debug("inside uploadAfile.jsp");

%>

<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title><%=language.LanguageManager.getInstance().getString(language.LanguageConstants.GLOBAL_UPLOAD,loginDTO)%> Association</title>
    <link rel="stylesheet" type="text/css" href="../stylesheets/styles.css">
    <script language="JavaScript" src="../scripts/util.js"></script>

      <script language="JavaScript">
    
      function validate()
      {
    	  return true;
      }
     

      </script>
    </head>

    <body class="body_center_align" onload="">


            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1024" id="AutoNumber1">

              <!--header-->
              <tr>
                <td width="100%">
                  <%@ include file="../includes/header.jsp"  %>
                </td>
              </tr>

              <!--center-->
              <tr>
                <td width="100%">
                  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1024" id="AutoNumber2">
                    <tr>
                      <!--left menu-->
                      <td class="td_menu">
                        <%@ include file="../includes/menu.jsp"  %>&nbsp;
                      </td>
                      <!--main -->
                      <td width="820" valign="top" class="td_main" align="center">

                        <table  border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber3">
                   		
                   		
                   		          <%
                            String msg = null;
                            if( (msg = (String)session.getAttribute("ASSOCIATION_UPLOAD"))!= null)
                            {
                              session.removeAttribute("ASSOCIATION_UPLOAD");
                              %>
                            <tr>
                              <td width="600" colspan="3" align="center" valign="top" height="20" class="green_text"><b><%=msg%></b></td>
                            </tr>
                           <%}%>
                        
                   		
                   		
                   		 <tr>
                            <td width="100%" align="center">

                              <!-- start of the form -->
                              <html:form method="post" action="/CSVFileParsingOnce" enctype='multipart/form-data' onsubmit="return validate();" >
     							 
              					 <table border="0" cellpadding="0" cellspacing="0" class="form1"  width="700" align="center">
                          <tr>
                      		<td width="100%" align="center" style="padding-bottom: 20px;">
                        		<div class="div_title"><span style="vertical-align: sub;"><%=language.LanguageManager.getInstance().getString(language.LanguageConstants.GLOBAL_UPLOAD,loginDTO)%> <%=language.LanguageManager.getInstance().getString(language.LanguageConstants.MENU_Reports_General_ClientIPTech_PIN,loginDTO)%></span></div>
                      		</td>
                    	</tr>
                    	</table>

                                <table align="center" width="600" class="form1">
                                 
                                  <tr>
                                    <td colspan="3" width="100%" height="35" valign="top" align="center"><h3><b><span class="green_text"><!--CSV File Format--><%=language.LanguageManager.getInstance().getString(language.LanguageConstants.CSV_FILE_FORMAT,loginDTO)%></span></b></h3></td>
                                  </tr>
                                  
                                   <tr>
                                    <td colspan="3" width="100%" height="35" valign="top" align="center"><h3><b><span class="green_text">[ASSOCIATION_ID, MSISDN, CLNT_CLNT_ID, NAME, ASSOCIATION_NAME]</span></b></h3></td>
                                  </tr>

                                

                            	 <tr>
                                    <td colspan="3" width="100%" height="25" >&nbsp;</td>
                                  </tr>
                                  
                                  
                               
                            
                                  <tr>
                                    <td width="170" >
                                      <!--Browse for csv file--><%=language.LanguageManager.getInstance().getString(language.LanguageConstants.MENU_client_rate_Upload_Browse_for,loginDTO)%>
                                    </td>
                                    <td width="430">
                              			<html:file property="pinFile" />
                              		</td>
                                  </tr>
                                    
                                    <tr>
                                    	<td colspan="2" width="100%" height="25" >&nbsp;</td>
                                  	</tr>
                                    
                                    <tr>
                                      <td width="170" ></td>
                                    
                                      <td width="430">
                                      	<input type="reset" name="Reset" value="<%=language.LanguageManager.getInstance().getString(language.LanguageConstants.Global_reset,loginDTO)%>"/> &nbsp;&nbsp;
                                      	<input type="submit" name="Submit" value="<%=language.LanguageManager.getInstance().getString(language.LanguageConstants.Global_submit,loginDTO)%>"/>
                                      </td>
                                  
                                    </tr>
                                    
                                  </table>

                                
                                </html:form>
                                    <!-- end of the form -->
                                    <br>
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>

                      <!--header-->
                      <tr>
                        <td width="100%">
                          <%@ include file="../includes/footer.jsp"  %>
                        </td>
                      </tr>
                    </table>
                  </body>
                </html>
                
  								  
                		
             