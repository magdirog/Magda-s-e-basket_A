
package beans;

/**
 *
 * @author magda
 */
public class BasketBeanInitial  {
    
    private double qcafe;
    private double qsugar;
    private double qwater;
    
    public BasketBeanInitial()
    { 
        
    }
    
    public void setQcafe(double qcafe)
    {
        this.qcafe=qcafe;
    }
    
    public void setQsugar(double qsugar)
    {
       this.qsugar=qsugar;
    }
    
     public void setQwater(double qwater)
     {
       this.qwater=qwater;
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
  
}