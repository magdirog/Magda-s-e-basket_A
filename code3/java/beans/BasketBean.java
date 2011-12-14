
package beans;

import java.io.File;
import org.w3c.dom.Document;
import org.w3c.dom.*;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException; 

/**
 *
 * @author magda
 */
public class BasketBean implements java.io.Serializable {
   
    //Synartisi opou ginetai to parsing tou xml arxeiou
        public double[] parsing()
        { 
                 String ccc;
                 String sss;
                 String www;
                 double ccafe;
                 double ssugar;
                 double wwater;
                 double[] p=new double[3];
            
            try{
                DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
                DocumentBuilder db = dbf.newDocumentBuilder();
                Document doc = db.parse("http://texwww.inf.uth.gr:8080/~magdirog/parser.xml");
                doc.getDocumentElement().normalize ();

                NodeList n1 = doc.getElementsByTagName("cafe");
                NodeList n2 = doc.getElementsByTagName("sugar");
                NodeList n3 = doc.getElementsByTagName("water");

                Node caf=n1.item(0);
                Node sug=n2.item(0); 
                Node wat=n3.item(0);

                 ccc=caf.getFirstChild().getNodeValue();
                 sss=sug.getFirstChild().getNodeValue();
                 www=wat.getFirstChild().getNodeValue();

                ccafe=Double.parseDouble(ccc);
                ssugar=Double.parseDouble(sss);
                wwater=Double.parseDouble(www);

                
                p[0]=ccafe;
                p[1]=ssugar;
                p[2]=wwater;
                
                
              
                }
                catch (SAXParseException err){

                }
                catch (SAXException e){
                }

                catch (Throwable t){
                }
             
   return p;
     }
        

    private double qcafe;
    private double qsugar;
    private double qwater;
  
      
    public BasketBean()
    { 
        
    }
  
    public void setQcafe(double qcafe)
    {
        double pinakas[]=parsing();
        this.qcafe=qcafe*pinakas[0];
        
    }
    
    public void setQsugar(double qsugar)
    {
       double pinakas[]=parsing();
       this.qsugar=qsugar*pinakas[1];
    }
    
     public void setQwater(double qwater)
     {
       double pinakas[]=parsing();
       this.qwater=qwater*pinakas[2];
    }
     

     
     public double getQcafe()
     {
         return this.qcafe;
     }
     
     public double getQsugar()
    {
      return this.qsugar;
    }
     
     public double getQwater()
     {
      return this.qwater;
    }
     
   
     public double getTotal()
     {
         return getQcafe()+getQsugar()+getQwater();
     }  
    
}
