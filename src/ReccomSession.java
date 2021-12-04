import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
public class ReccomSession {
     String uName;
     String passwd;
     HttpServletRequest req;
     HttpSession session;
     public ReccomSession(HttpServletRequest request)
     {
    	 this.req=request;
    	 session= request.getSession();
		 
     }
     void setSession()
     {
    	  this.uName=req.getParameter("unamelogin");
		  this.passwd=req.getParameter("passwdlogin");
		  session.setAttribute("uname", uName);
		  session.setAttribute("pass", passwd);
		  System.out.println("Session created");
     }
     
     
       boolean checkSession() 
       {
    	   if(session.getAttribute("uname")==null || session.getAttribute("pass")==null)
    	   {
    		   return false;
    	   }
    	   System.out.println("Session is alive");
    	   return true;
       }

       
       void destroySession()
       {
    	   session.removeAttribute("uname");
    	   session.removeAttribute("pass");
    	   session.invalidate();
       }
       
}
