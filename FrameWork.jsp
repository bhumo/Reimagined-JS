function $$$(elementId){
    var elem=document.getElementById(elementId);
    if(!elem) throw "Invalid id"+elementId;
    return new $$$$$(elem);
    }
    
    function $$$$$(element){
    var elem=element;
    this.val=function(){
    if(elem.value){
    return elem.value;
    }
    else{
    throw "Element does not have value property";
    }
    };
    this.html=function(content){
    elem.innerHTML=content;
    };
    }
    
    
    $$$.getJson = function(jsonObject){
    if(!jsonObject.url) throw "url property missing in json/url is boolean";
    if(typeof jsonObject.url != "string") throw "url property should be string";
    if(typeof jsonObject.success != "function" && jsonObject.success) throw "success property should represent function";
    if(typeof jsonObject.exception !="function" && jsonObject.exeption) throw "exception property should represent function";
    if(typeof jsonObject.failed != "function" && jsonObject.failed) throw "failed property should represent function";
    if(typeof jsonObject.url_parameter != "object" && jsonObject.url_prameter) throw "url_parameter should represent a json object ";
    if(jsonObject.url_parameter){
    for (var key in jsonObject.url_parameter){
    this.data
    if(typeof jsonObject.url_parameter[key] !="string") throw "the value of keys in json object(which represent url_parameter property) should represent a string";
    }
    }
    
    
    
    
    
    var xmlHttpRequest = new XMLHttpRequest();
    xmlHttpRequest.onreadystatechange=function(){
    if(this.readyState==4)
    {
    if(this.status==200)
    {
    var response = xmlHttpRequest.responseText;
    var responseJson = JSON.parse(response);
    if(responseJson.success)
    {
    if(jsonObject.success)
    {
    jsonObject.success(responseJson.response);
    }//jsobObject.success if ends
    }//responseJson.success if ends
    else{
    if(jsonObject.exception) jsonObject.exception(responseJson.exception);
    }//else of responseJson.success ends
    }//this.status if ends
    else{
    if(jsonObject.failed){
    
    jsonObject.failed();
    }
    }//else of this.status ends
    }//if of this.readyState ends
    
    }//function() ends
    var url =jsonObject.url;
    if(jsonObject.url_parameter){
    
    var arrayOfKeys=Object.keys(jsonObject.url_parameter);
    url=url+"?"+arrayOfKeys[0]+"="+encodeURI(jsonObject.url_parameter[arrayOfKeys[0]]);
    for (var i=1;i<arrayOfKeys.length;i++){
    url=url+"&"+arrayOfKeys[i]+"="+encodeURI(jsonObject.url_parameter[arrayOfKeys[i]]);
    }

    }
    xmlHttpRequest.open("GET",url,true);
    xmlHttpRequest.send();
    };
    
    
    
    
    $$$.postJSON= function(jsonObject){
    if(!jsonObject.url) throw "url property missing in json/url is boolean";
    if(typeof jsonObject.url != "string") throw "url property should be string";
    if(typeof jsonObject.success != "function" && jsonObject.success) throw "success property should represent function";
    if(typeof jsonObject.exception !="function" && jsonObject.exeption) throw "exception property should represent function";
    if(typeof jsonObject.failed != "function" && jsonObject.failed) throw "failed property should represent function";
    <!-- requestHeader and requestHeaderValue are provided in case the programmer wants to use different header -->
    if(typeof jsonObject.requestHeader!= "string" && jsonObject.requestHeader) throw "requestHeader property should represent string";
    if(typeof jsonObject.requestHeaderValue!= "string" && jsonObject.requestHeaderValue) throw "requestHeaderValue property should represent string";
    if(typeof jsonObject.data!= "object" && jsonObject.data) throw "data should represent a json object ";
    var xmlHttpRequest = new XMLHttpRequest();
    if(jsonObject.data){
    for (var key in jsonObject.data){
    if(typeof jsonObject.data[key] !="string") throw "the value of "+key+" in json object(which represent data property) should represent a string";
    
    }
    
    
    }//if jsonObject.data ends
    
    
    xmlHttpRequest.onreadystatechange=function(){
    if(this.readyState==4)
    {
    if(this.status==200)
    {
    var response = xmlHttpRequest.responseText;
    var responseJson = JSON.parse(response);
    if(responseJson.success)
    {
    if(jsonObject.success)
    {
    jsonObject.success(responseJson.response);
    }//jsobObject.success if ends
    }//responseJson.success if ends
    else{
    if(jsonObject.exception) jsonObject.exception(responseJson.exception);
    }//else of responseJson.success ends
    }//this.status if ends
    else{
    if(jsonObject.failed){
    
    jsonObject.failed();
    }
    }//else of this.status ends
    }//if of this.readyState ends
    
    }//function() ends
    xmlHttpRequest.open("POST",jsonObject.url,true);
    if(jsonObject.data)
    {
    if(jsonObject.requestHeader)
    {
    xmlHttpRequest.setRequestHeader(jsonObject.requestHeader,jsonObject.requestHeaderValue);
    }
    else
    {
     xmlHttpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
    }
    
    xmlHttpRequest.send(JSON.stringify(jsonObject.data));
    }
    else
    {
    xmlHttpRequest.send();
    }
    }//postJson() ends
    
    
    
    $$$.updateTable=function(object){
    var tableObj = object["id"];
    var dataModel = object["dataModel"];
    
    if(tableObj.hasAttribute("tableModel")){
        var tableModel = tableObj.getAttribute("tableModel");
        var tableModelObj = dataModel[tableModel];
        var thead = tableObj.createTHead();
        var cell,i;
        var textnode;
        var columnTitleJson= tableModelObj.getColumnTitle();
    
    
        var columnLength = tableModelObj.getColumnCount();
        var row= thead.insertRow(0);
        for(var key in columnTitleJson){
            cell=row.insertCell(i);
            textnode =document.createTextNode(columnTitleJson[key]);
            cell.appendChild(textnode);
    
            
        }
        
        var length;
        length = dataModel.employees.length;
        tableObj.appendChild(thead);
        var tbody = document.createElement('tbody');
        for(i=0;i<length;i++){
            row = document.createElement('tr');
    
            cell=document.createElement('td');
            textNode=document.createTextNode(tableModelObj.getValueAt(i,0));
            cell.appendChild(textNode);
            cell.textAlign='left';
            row.append(cell);
            
            cell =document.createElement('td');
            textNode=document.createTextNode(tableModelObj.getValueAt(i,1));
            cell.appendChild(textNode)
            cell.textAlign='left';
            row.append(cell);
            
            cell =document.createElement('td');
            textNode=document.createTextNode(tableModelObj.getValueAt(i,2));
            cell.appendChild(textNode);
            cell.textAlign='left';
            row.append(cell);
    
            cell =document.createElement('td');
            textNode=document.createTextNode(tableModelObj.getValueAt(i,3));
            cell.appendChild(textNode);
            cell.textAlign='left';
            row.append(cell);
    
            cell =document.createElement('td');
            textNode=document.createTextNode(tableModelObj.getValueAt(i,4));
            cell.appendChild(textNode);
            cell.textAlign='left';
            row.append(cell);
          tbody.append(row);
        }
    tableObj.appendChild(tbody);
    
    
    
    }
    }
    
    
    
    
    
    
    
    
    $$$.setObserver=function(obj){
    for(key in obj){
    if(dataStructure.hasOwnProperty(key)){
    var js=dataStructure[key];
    lstVal=js["currentValue"];
    <!--cnVal=obj[key];  -->
    var id,cnVal='';
    id =js["id"];
    if(id.hasAttribute("value"))
    {
    lstVal = lstVal.trim();
    cnVal=id.value.trim();
    
    if(cnVal==lstVal){
    console.log(cnVal+"same");
    if(obj[key]!=cnVal){
    js["lastValue"]=js["currentValue"];
    js["currentValue"]=cnVal;
    id.value=obj[key];
    dataStructure[key]=js;
    console.log("obk[key]"+obj[key])
    <!-- Here we are writting this because in case the value of object canges but the value of the input is changed.-->
    <!-- object is updated but the value of js and the input filed is to be updated-->
    }
    
    }//inner if block in outer if endsends
    else{
    
    console.log("VALUE CHANGED,new val:"+cnVal);
    obj[key]=cnVal;
    //if the control reaches here it means the textbox is updated we have to update the ds and obj value;
    js["lastValue"]=js["currentValue"];
    js["currentValue"]=cnVal;
    dataStructure[key]=js;
    
    }
    }//if id has a property value assosiated to it.
    if(id.hasAttribute("tableModel")){
    
    var objKey = obj[key];
    cnVal = objKey.length;
    if(cnVal==lstVal){
    console.log(cnVal+"same");
    }
    if(typeof obj[key] != "function"){
    if(objKey.length!=lstVal)
    {
    console.log("new val:"+cnVal);
    objKey.length=cnVal;
    //if the control reaches here it means the textbox is updated we have to update the ds and obj value;
    js["lastValue"]=js["currentValue"];
    js["currentValue"]=cnVal;
    $$$.updateTable({
        "id":id,
        "dataModel":obj
    });
    }
    
    
    }
    
    
    }
    }//outer if block in for loop ends
    
    
    }//for loop ends
    
    setTimeout(function(){$$$.setObserver(obj);},500);
    };
    var dataStructure={};
    var ifAttributes={};
    var forAttributes={};
    $$$.setModel=function(object){
    dataStructure["model"]=object;
    var dom = document.getElementsByTagName("*");
    var value,lstVal,key;
    var id,val,valObject;
    for(var i=0;i< dom.length;i++){
    if(dom[i].hasAttribute("tm-for")){
    key = dom[i].getAttribute("tm-for");
    id= dom[i].getAttribute("id");
    idObj=dom[i];
   
    console.log(idObj.innerHTML);
    $$$.canProcessFor(key,idObj);

    }
    if(dom[i].hasAttribute("tm-if") && dom[i].hasAttribute("id")){
    id= dom[i].getAttribute("id");
    idObj=dom[i];
    ifAttributes[id] =dom[i];
    $$$.observeIf();
    }
    
    if(dom[i].hasAttribute("tm_bind") && dom[i].id){
    id =dom[i].getAttribute("id") ;
    idObj=document.getElementById(id);
    val= dom[i].getAttribute("tm_bind");
    
    value='';//we are storing the value of the html component.
    lastValue='';
    <!--initially current and last value will be same"-->
    dataStructure[val]={"lastValue":value+" ","currentValue":value+" ","id":idObj,};
    
    }
    $$$.setObserver(object);
    
    }
    
    
    }//setModel() ends
    
    
    $$$.canProcessFor = function(string,object){

    if(string.search("to")>0)
    {
        
    $$$.processForRange(string,object);
    }
    else{
    if(string.search("in")>0)
    {
    forAttributes[object]=string;
    $$$.processForInOperator(string,object);

    }
    else{
    throw "invalid value of atrribute tm-for:"+string;
    }
    }
    }
    
    
    $$$.processForInOperator= function(string,object){

    var ptr1 = string.indexOf("in");
    var variable = string.slice(0,ptr1).trim();
    var iterateOn = string.slice (ptr1+2).trim();
    console.log("variabe:"+variable+",iterateOn:"+iterateOn);
    var model = dataStructure["model"];
    if(!model[iterateOn]) throw IterateOn+"does not exists in model";
    console.log(model[iterateOn].length);
    iterateOn = model[iterateOn];
     
    var orignalBodyString=object.innerHTML;
    var temString='';
    var resultString='';
    var e,key,i;
    for(i=0;i<iterateOn.length;i++)
    {
    
    e=iterateOn[i];
    tempString = orignalBodyString;
    if(tempString.search(new RegExp("{{{index}}}","g"))>0){
    tempString = tempString.replace(new RegExp("{{{index}}}","g"),i+1);
    }
    for(key in e){
    
    var k = "{{{"+variable+"."+key+"}}}";
    m=tempString.search(new RegExp(k,"g"));
    
    if(tempString.search(new RegExp("{{{"+variable+"."+key+"}}}","g"))>0){
    tempString=tempString.replace(new RegExp("{{{"+variable+"."+key+"}}}","g"),e[key]);
    }<!--if ends-->
    
    }<!--for ends-->
    resultString = resultString+tempString;
    
    }<!--outer for loop end-->
    
    object.innerHTML = resultString;
    }<!-- procesForInOperator ends-->
    
    
    
    $$$.processForRange=function(string,object){
    
    console.log(string);
    var m=string;
    var variable=[];
    var value=[];
    var endPoint,x='';
    var step=1;
    var varLength,valLength=0;
    varLength=0;
    var i=0;
    console.log(m.length);
    while(m[i]!='\0' && i < m.length){
    while(m[i]!='='&& m[i]!='\0'){
    x=x+m[i];
    console.log(x);
    i++;
    }
    variable[varLength]=x;
    console.log(variable[varLength]+"variable");
    varLength++;
    i++;
    x='';
    while(m[i]!=' ' &&  i <m.length){
    x=x+m[i];
    i++;
    }
    value[valLength]=x;
    valLength++;
    x='';
    if(m[i]==",")continue;
    x='';
    while(m[i] ==' ' &&  i<m.length) i++;
    if(m[i]=='\0')break;
    while(m[i]!=' ' && i<m.length){
    x=x+m[i];
    if(x=='to'){
    i=i+2;
    x='';
    while(m[i]!=' ' && i<m.length)
    {
    x=x+m[i];
    i++;
    }
    endPoint =x;
    x='';
    }
    
    if(x=='step') 
    {
    i=i+2
    
    x='';
    while(m[i]==' ' && i<m.length){
    i++;
    }
    while(m[i]!=' ' && i<m.length){
    x=x+m[i];
    
    i++;
    }
    step=x;
    console.log(step+"step");
    }
    i++;
    }
    if(i<m.length)break;
    i++;
    }
    console.log(variable[0]+"val:"+value[0]+"endPoint"+endPoint+"step"+step);
    i=parseInt(value[0]);
    endPoint=parseInt(endPoint);
    step = parseInt(step);
    var objBodyString=object.innerHTML;
    m = objBodyString.search(new RegExp("{{{"+variable[0]+"}}}"),"g");
    if(m<0) throw "there is no expression in the body by name {{{"+variable[0]+"}}}";
    console.log("m:"+m);
    var resultString='';
    var tempString='';
    for(i;i<endPoint;i=i+step){
    tempString =objBodyString;
    resultString = resultString +objBodyString.replace(new RegExp("{{{x}}}","g"),i)+"<br>";
    }
    
    object.innerHTML = resultString;
    }
    
    
    
    $$$.observeIf=function(){
    var attributeList = ifAttributes;
    for (key in attributeList)
    {
    var string='';
    var object = attributeList[key];
    if(object.hasAttribute("tm-if")){
    string = object.getAttribute("tm-if");
    console.log(string);
    $$$.canProcess(string,object);
    }
    }
    setTimeout(function(){$$$.observeIf()},2000);
    }
    
    $$$.canProcess=function(string,object){
    console.log(string+"canProcess");
    var canProcess=false;
    var leftOperand,rightOperand,pos;
    var operation='';
    leftOperand='';
    rightOperand='';
    pos=-1;
    pos=string.search("==");
    if(pos>0){
    canProcess=true;
    leftOperand=string.slice(0,pos).trim();
    rightOperand=string.slice(pos+2).trim();
    operation="==";
    }
    pos=string.search("<");
    if(pos>0)
    {
    canProcess=true;
    leftOperand=string.slice(0,pos).trim();
    rightOperand=string.slice(pos+2).trim();
    operation="<";
    }
    pos= string.search(">");
    if(pos>0)
    {
    canProcess=true;
    leftOperand=string.slice(0,pos).trim();
    rightOperand=string.slice(pos+2).trim();
    operation=">";
    }
    
    pos=string.search(">=");
    if(pos>0)
    {
    canProcess=true;
    leftOperand=string.slice(0,pos).trim();
    rightOperand=string.slice(pos+2).trim();
    operation=">=";
    }
    pos =string.search("<=");
    if(pos>0)
    {
    canProcess=true;
    leftOperand=string.slice(0,pos).trim();
    rightOperand=string.slice(pos+2).trim();
    operation="<=";
    }
    pos =string.search("!=");
    if(pos>0)
    {
    canProcess=true;
    leftOperand=string.slice(0,pos).trim();
    rightOperand=string.slice(pos+2).trim();
    operation="!=";
    }
        if(!canProcess) throw "expression must contain relational operator like(==,>,<,etc)";
    $$$.evaluateCondition(leftOperand,rightOperand,object,operation);
    
    }
    
    
    
    $$$.evaluateCondition=function(leftOperand,rightOperand,object,operation){
    var model = dataStructure["model"];

    if(model[leftOperand]){
    var isTrue = eval("model[leftOperand]"+operation+rightOperand);
    console.log(isTrue);
    if(!isTrue) {object.style.display='none';
    }
    else {object.style.display='block';
}
    }
    else{
    throw leftOperand+"property does not exists in the model " ;
    }
    
    }
    
    
    
    
    
    