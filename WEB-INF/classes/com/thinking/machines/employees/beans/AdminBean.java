package com.thinking.machines.employees.beans;
public class AdminBean implements java.io.Serializable {

String username;
String password;
String passwordKey;
public AdminBean(){
    this.username="";
    this.password="";
    this.passwordKey="";
}
public void setUsername(String username){
    this.username=username;
}
public String getUsername(){
    return this.username;
}
public void setPassword(String password){
    this.password=password;
}

public String getPassword(){
    return this.password;
}
public void setPasswordKey(String passwordKey){
    this.passwordKey=passwordKey;

}
public String getPasswordKey(){
    return this.passwordKey;
}

};