package com.thinking.machines.employees.beans;
public class AjaxResponse implements java.io.Serializable
{
private Object response;
private boolean success;
private Object exception;

public AjaxResponse(){
response= null;
success=false;
exception=null;

}

public void setResponse(Object response)
{
this.response=response;
}

public Object getResponse()
{
return this.response;

}


public void setSuccess(boolean success){
this.success=success;
}

public boolean getSuccess()
{
return this.success;
}

public void setException(Object exception){
this.exception=exception;
}

public Object getException()
{
return this.exception;
}


}