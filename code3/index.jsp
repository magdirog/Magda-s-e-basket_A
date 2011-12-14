
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory,
                    javax.xml.parsers.DocumentBuilder,
                    org.w3c.dom.*"
%>
  
<jsp:useBean id="basket" class="beans.BasketBean" scope="session" />
    <jsp:setProperty name="basket" property="*" /> 
    
 
   
   <jsp:useBean id="Initialbasket" class="beans.BasketBeanInitial" scope="session" />
    <jsp:setProperty name="Initialbasket" property="*" /> 
 
    <%-- I use scriplet only for parsing --%>
<%
DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
DocumentBuilder db = dbf.newDocumentBuilder();
Document doc = db.parse("http://texwww.inf.uth.gr:8080/~magdirog/parser.xml");

NodeList n1 = doc.getElementsByTagName("cafe");
NodeList n2 = doc.getElementsByTagName("sugar");
NodeList n3 = doc.getElementsByTagName("water");

Node caf=n1.item(0);
Node sug=n2.item(0); 
Node wat=n3.item(0);

String ccc=caf.getFirstChild().getNodeValue();
String sss=sug.getFirstChild().getNodeValue();
String www=wat.getFirstChild().getNodeValue();

double ccafe=Double.parseDouble(ccc);
double ssugar=Double.parseDouble(sss);
double wwater=Double.parseDouble(www);

%>

<!DOCTYPE html>
<html>
    <head>
        <title>Magda's e-basket</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div>
        
        </br>
        <h1> e-Basket </h1>
    
        </br>
        </br>
        <form method="post" action="index.jsp">
            <table border="1">
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Cafe </td>
                        <td><%= ccafe %> </td>
                        <td>
                            <input type="text" name="qcafe" id="qcafe" size="6" 
                                   value="<jsp:getProperty name="Initialbasket" property="qcafe" />"/>
                            
                        </td>
                        <td>
                            <jsp:getProperty name="basket" property="qcafe" />
                        </td>
                    </tr>
                    <tr>
                        <td>Sugar </td>
                        <td><%= ssugar %> </td>
                        <td>
                            <input type="text" name="qsugar" id="qsugar" size="6"
                                   value="<jsp:getProperty name="Initialbasket" property="qsugar" />"/>
                            
                        </td>
                        
                        
                        <td>
                            <jsp:getProperty name="basket" property="qsugar" />
                        </td>
                    </tr>
                    <tr>
                        <td> Water </td>
                        <td><%= wwater %></td>
                        <td>
                            <input type="text" name="qwater" id="qwater" size="6"
                                   value="<jsp:getProperty name="Initialbasket" property="qwater" />"/>
                            
                        </td>

                        <td> 
                            <jsp:getProperty name="basket" property="qwater" />
                        </td>
                    </tr>
                    <tr>
                        <td>Total:</td>
                        <td>   
                        </td>
                        <td>
                            
                        </td>
                        <td>
                            <jsp:getProperty name="basket" property="total" />                             
                        </td>

                    </tr>
                </tbody>
            </table>
            </br>
            </br>
            <div>
                <input type="submit" value="Checkout" name="Checkout" />
            </div>

        </form>
                </br>
                </br>


        </div>
        <div> 
            <form method="post" action="report.html">
               
             <input type="submit" value="report" name="report" />   
            </form>
        </div>
        <div> 
            <form method="get" action="http://texwww.inf.uth.gr:8080/~magdirog/code3.tar">
               
             <input type="submit" value="download code" name="download code" onClick="CodeServlet" />   
            </form>
       </div>
                        
    </body>
</html>