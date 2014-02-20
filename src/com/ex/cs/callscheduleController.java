package com.ex.cs;

import javax.jdo.PersistenceManager;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ex.cs.callschedule;
import com.ex.cs.PMF;

import javax.jdo.Query;

import java.util.List;


@Controller
public class callscheduleController {
@RequestMapping(value="/login",method=RequestMethod.GET)
public String getLogin(ModelMap model)
{
	return "login";
}
@RequestMapping(value="/pfone",method=RequestMethod.GET)
public String getPfOne(ModelMap model)
{
	return "pfone";
}
@RequestMapping(value="/cschedule",method=RequestMethod.GET)
public String getCschedule(ModelMap model)
{
	return "pf";
}
@RequestMapping(value="/login",method=RequestMethod.POST)
public String postLogin(ModelMap model,HttpServletRequest request,HttpServletRequest response)
{
	String email1=request.getParameter("emailid");
	String password1=request.getParameter("password");
	if(email1.equals("admin@gmail.com")&& password1.equals("admin"))
	{
		return "pf";
	}
	else if(email1.equals("scheduler@gmail.com")&& password1.equals("scheduler"))
	{
		
		
		PersistenceManager pm=PMF.get().getPersistenceManager();
		Query q=pm.newQuery(callschedule.class);

		
			@SuppressWarnings("unchecked")
			List<callschedule> results= (List<callschedule>)q.execute();
			
			model.addAttribute("customer",results);
		
		
		return "scheduler";
	
	}

	return "invalid";
}
@RequestMapping(value="/admin",method=RequestMethod.GET)
public String getAdmin(ModelMap model)
{
	return "admin";
}
@RequestMapping(value="/pf",method=RequestMethod.GET)
public String getPF(ModelMap model,HttpServletRequest request)
{
	return "pf";
}
@RequestMapping(value="/pf",method=RequestMethod.POST)
public void postPF(ModelMap model,HttpServletRequest request)
{
	String name=request.getParameter("name");
	
	String email=request.getParameter("email");

	String service=request.getParameter("service");

	String mobile=request.getParameter("mobile");
	
	String date1=request.getParameter("date1");
	
	String fromtime1=request.getParameter("reservedfromtime1");
	
	String totime1=request.getParameter("reservedtotime1");
	String ff=(String) fromtime1.subSequence(0, 1);
	System.out.println(Integer.parseInt(ff));
	String ft=fromtime1.substring(0,1);
	String tt=totime1.substring(0,1);
	System.out.println(ft);
	System.out.println(tt);
System.out.println("hi"+Integer.parseInt(ft));
System.out.println("we"+Integer.parseInt(tt));
	callschedule c=new callschedule();
	c.setName(name);
	c.setEmail(email);
	
	c.setService(service);
	
	
	c.setMobile(mobile);

	c.setFromTime(fromtime1);
	
	c.setToTime(totime1);
	
	
	c.setDate(date1);
	PersistenceManager pm=PMF.get().getPersistenceManager();
	
	try
	{
		pm.makePersistent(c);
      callschedule cs=pm.getObjectById(callschedule.class,date1);
		
      model.addAttribute("cust",cs);

	}
	finally
	{
		pm.close();
	}

}
@RequestMapping(value="/eschedule",method=RequestMethod.GET)
public String getEschedule(ModelMap model,HttpServletRequest request)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);

	try
	{
		@SuppressWarnings("unchecked")
		List<callschedule> results= (List<callschedule>)q.execute();
	System.out.print(results);
		model.addAttribute("cust",results);
		return "eschedule";
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
	
	
	
}
@RequestMapping(value="/eschedule",method=RequestMethod.POST)
public String postEschedule(ModelMap model,HttpServletRequest request)
{
	
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);

	try
	{
		@SuppressWarnings("unchecked")
		List<callschedule> results= (List<callschedule>)q.execute();
		
		model.addAttribute("cust",results);
		return "eschedule";
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
}

@RequestMapping(value= "update/{date}",method=RequestMethod.GET)
public String getUpdate(ModelMap model,HttpServletRequest request,@PathVariable("date")  String date)
{
PersistenceManager pm=PMF.get().getPersistenceManager();
Query q=pm.newQuery(callschedule.class);
q.setFilter("date==dateparameter");
q.declareParameters("String dateparameter");
try
{
@SuppressWarnings("unchecked")
List<callschedule> results=(List<callschedule>)q.execute(date);    
	model.addAttribute("disp",results);
    	return "updated";
   
}    


finally
{
	pm.close();
}
	
}
@RequestMapping(value="/update",method=RequestMethod.POST)
public void postUpdate(ModelMap model,HttpServletRequest request)
{
	String name1=request.getParameter("name");
	String email1=request.getParameter("email");
	String mobile1=request.getParameter("mobile");
	String fromtime1=request.getParameter("fromtime");
    String totime1=request.getParameter("totime");
    String date1=request.getParameter("date");
    PersistenceManager pm=PMF.get().getPersistenceManager();
    try
    {
    	callschedule cs=pm.getObjectById(callschedule.class,date1);
    	cs.setEmail(email1);
    	cs.setFromTime(fromtime1);
    	cs.setMobile(mobile1);
    	cs.setName(name1);
    	cs.setToTime(totime1);
      
    	
    	
    }
    finally
    {
    	pm.close();
    }
}
@RequestMapping(value="delete/{date}", method=RequestMethod.GET)
public String getDelete(ModelMap model,HttpServletRequest request,@PathVariable("date") String date)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	try
	{
	callschedule c=pm.getObjectById(callschedule.class, date);
	pm.deletePersistent(c);
	}
	finally
	{
		pm.close();
	}
	return "success";
	}
@RequestMapping(value="/profileone",method=RequestMethod.POST)
public String postProfileone(ModelMap model,HttpServletRequest request)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);
	q.setFilter("name==nameparameter");
	q.declareParameters("String nameparameter");
	String name=request.getParameter("name");
	
    try
	{
		
		List<callschedule> results=(List<callschedule>)q.execute(name);
		System.out.println(results);
		
		if(results.isEmpty())
		{
			return "success";
		}
		model.addAttribute("customerone",results);
		return "profileone";
		
	
	   
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
}
@RequestMapping(value="/profileone",method=RequestMethod.GET)
public String getProfileone(ModelMap model,HttpServletRequest request)
{
	return "profileone";
}

@RequestMapping(value="/schedule",method=RequestMethod.POST)
public String postSchedule(ModelMap model,HttpServletRequest request)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);
	q.setFilter("name==nameparameter && date==dateparameter && service==serviceparameter");
	q.declareParameters("String nameparameter,String dateparameter,String serviceparameter");
	String name=request.getParameter("name");
	String date=request.getParameter("dateone");
	String service=request.getParameter("service");
	/*String service=request.getParameter("service");*/
    try
	{
		
		List<callschedule> results=(List<callschedule>)q.execute(name,date,service);
		System.out.println(results);
		
		if(results.isEmpty())
		{
			return "success";
		}
		model.addAttribute("customer",results);
		return "timeslot";
		
	
	   
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
}
@RequestMapping(value="/apollo",method=RequestMethod.GET)
public String getApollo(ModelMap model,HttpServletRequest request)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);
	q.setFilter("service==serviceparameter");
	q.declareParameters("String serviceparameter");
	try
	{
		
		List<callschedule> results=(List<callschedule>)q.execute("APOLLO");
		System.out.println(results);
		
		if(results.isEmpty())
		{
			return "success";
		}
		model.addAttribute("customerone",results);
		return "apollo";
		
	
	   
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
	
}
@RequestMapping(value="/apolloone",method=RequestMethod.POST)
public String postApolloone(ModelMap model,HttpServletRequest request)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);
	q.setFilter("name==nameparameter && service==serviceparameter");
	q.declareParameters("String nameparameter,String serviceparameter");
	String name=request.getParameter("name");
	String service="APOLLO";
	
    try
	{
		
		List<callschedule> results=(List<callschedule>)q.execute(name,service);
		System.out.println(results);
		
		if(results.isEmpty())
		{
			return "success";
		}
		model.addAttribute("customerone",results);
		return "profileone";
		
	
	   
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
}
@RequestMapping(value="/medwin",method=RequestMethod.GET)
public String getMedwin(ModelMap model,HttpServletRequest request)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);
	q.setFilter("service==serviceparameter");
	q.declareParameters("String serviceparameter");
	try
	{
		
		List<callschedule> results=(List<callschedule>)q.execute("MEDWIN");
		System.out.println(results);
		
		if(results.isEmpty())
		{
			return "success";
		}
		model.addAttribute("customerone",results);
		return "medwin";
		
	
	   
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
	
}
@RequestMapping(value="/medwinone",method=RequestMethod.POST)
public String postMedwinone(ModelMap model,HttpServletRequest request)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);
	q.setFilter("name==nameparameter && service==serviceparameter");
	q.declareParameters("String nameparameter,String serviceparameter");
	String name=request.getParameter("name");
	String service="MEDWIN";
	
    try
	{
		
		List<callschedule> results=(List<callschedule>)q.execute(name,service);
		System.out.println(results);
		
		if(results.isEmpty())
		{
			return "success";
		}
		model.addAttribute("customerone",results);
		return "profileone";
		
	
	   
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
}
@RequestMapping(value="/care",method=RequestMethod.GET)
public String getCare(ModelMap model,HttpServletRequest request)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);
	q.setFilter("service==serviceparameter");
	q.declareParameters("String serviceparameter");
	try
	{
		
		List<callschedule> results=(List<callschedule>)q.execute("CARE");
		System.out.println(results);
		
		if(results.isEmpty())
		{
			return "success";
		}
		model.addAttribute("customerone",results);
		return "care";
		
	
	   
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
	
}
@RequestMapping(value="/careone",method=RequestMethod.POST)
public String postCareone(ModelMap model,HttpServletRequest request)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);
	q.setFilter("name==nameparameter && service==serviceparameter");
	q.declareParameters("String nameparameter,String serviceparameter");
	String name=request.getParameter("name");
	String service="CARE";
	
    try
	{
		
		List<callschedule> results=(List<callschedule>)q.execute(name,service);
		System.out.println(results);
		
		if(results.isEmpty())
		{
			return "success";
		}
		model.addAttribute("customerone",results);
		return "profileone";
		
	
	   
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
}
@RequestMapping(value="/sunshine",method=RequestMethod.GET)
public String getSunshine(ModelMap model,HttpServletRequest request)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);
	q.setFilter("service==serviceparameter");
	q.declareParameters("String serviceparameter");
	try
	{
		
		List<callschedule> results=(List<callschedule>)q.execute("SUNSHINE");
		System.out.println(results);
		
		if(results.isEmpty())
		{
			return "success";
		}
		model.addAttribute("customerone",results);
		return "sunshine";
		
	
	   
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
	
}
@RequestMapping(value="/sunshineone",method=RequestMethod.POST)
public String postSunshineone(ModelMap model,HttpServletRequest request)
{
	PersistenceManager pm=PMF.get().getPersistenceManager();
	Query q=pm.newQuery(callschedule.class);
	q.setFilter("name==nameparameter && service==serviceparameter");
	q.declareParameters("String nameparameter,String serviceparameter");
	String name=request.getParameter("name");
	String service="SUNSHINE";
	
    try
	{
		
		List<callschedule> results=(List<callschedule>)q.execute(name,service);
		System.out.println(results);
		
		if(results.isEmpty())
		{
			return "success";
		}
		model.addAttribute("customerone",results);
		return "profileone";
		
	
	   
	}
	finally
	{
		q.closeAll();
		pm.close();
	}
}
}
