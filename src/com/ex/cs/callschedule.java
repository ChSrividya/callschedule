package com.ex.cs;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
@PersistenceCapable
public class callschedule {
@Persistent
private String email;
	/*@PrimaryKey
	private String email;
	@Persistent
	private String date;*/
@Persistent
private String name;
@Persistent
private String service;
@Persistent
private String mobile;
@Persistent
private String fromtime;
@Persistent 
private String totime;
@PrimaryKey
private String date;
public void setDate(String date)
{
	this.date=date;
}
public String getDate()
{
	return date;
}
public void setEmail(String email)
{
	this.email=email;
}
public String getEmail()
{
	return email;
}
public void setName(String name)
{
	this.name=name;
}
public String getName()
{
	return name;
}
public void setService(String service)
{
	this.service=service;
}
public String getService()
{
	return service;
}
public void setMobile(String mobile)
{
	this.mobile=mobile;
}
public String getMobile()
{
	return mobile;
}
public void setFromTime(String fromtime)
{
	this.fromtime=fromtime;
}
public String getFromTime()
{
	return fromtime;
}
public void setToTime(String totime)
{
	this.totime=totime;
}
public String getToTime()
{
	return totime;
}
}
