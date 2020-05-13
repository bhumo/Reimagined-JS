package com.thinking.machines.employees.beans;
import java.sql.*;
import java.text.*;
import java.util.*;
import java.io.Serializable;
public class EmployeeBean implements Serializable
{
private String employeeId ;
private String name;
private int designationCode;
private String gender;
private String date_of_birth;
private String panNumber;
private String addharCardNumber;
public EmployeeBean()
{
reset();
}

public void reset()
{
employeeId="";    
name=" ";
designationCode=0;
gender=" ";
date_of_birth="0000-00-00";
panNumber="";
addharCardNumber="";
}
public void setEmployeeId(String employeeId)
{
this.employeeId=employeeId;
}

public String getEmployeeID()
{
return this.employeeId;
}

public void setName(String name)
{
this.name=name;
}

public String getName()
{
return this.name;
}


public void setDesignationCode(int code)
{
 this.designationCode=code;
}

public int getDesignationCode()
{
return this.designationCode;
}

public void setGender(String gender)
{
this.gender=gender;
}

public String getGender()
{
return this.gender;

}

public void setDate_of_birth(String date_of_birth)
{
this.date_of_birth=date_of_birth;
}
public String getDate_of_birth()
{
return this.date_of_birth;
}

public void setPanNumber(String pn){
    this.panNumber=pn;
}
public String getPanNumber(){
return this.panNumber;
}

public void setAddharCardNumber(String addharCardNumber){
    this.addharCardNumber=addharCardNumber;
}

public String getAddharCardNumber(){
    return this.addharCardNumber;
}

};