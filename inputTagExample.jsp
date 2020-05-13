
<jsp:include page='/MasterPageTopSection.jsp'/>

<script src="FrameWork.jsp"></script>
<script>
function Student(){
    this.firstName="";
    this.lastName="";
    }
    var student = new Student();
    
    function reset(){
    student.firstName="";
    student.lastName="Gupta";
    
    }
    
    
    window.onload=function(){
    $$$.setModel(student);
    };
    
    function showValue(){
        document.getElementById("describtion").value="First Name:"+student.firstName+" LastName: "+student.lastName; 
    }
    
</script>

<div class="container">
<div class="row">
    <div class="col">
    <h4>Input Tag</h4><br>
    <p class="text-secondary">In this example, the setModel() will observe the input components which has the attribute tm-bind 
        <br>
        Click on show button to know the current value of the object. Try clicking the reset Button to change the value of object. 
    </p>
</div>
</div>
    <div class="row">

        <div class="form-row">
        <div class="col-6">
            <h5>First Name</h5>
        </div>
        <div class="col-6">
            <input type="text" class="form-control" id="fname" value='' tm_bind="firstName">
        </div>

        
</div>
</div>
<div class="row">
    
    <div class="form-row">
        <div class="col-6">
            <h5>Last Name</h5>
        </div>
        <div class="col-6">
            <input type="text" class="form-control" id="lname" value='' tm_bind="lastName">
        </div>
    </div>
</div>
<div class="row">
<div class="col-4">
    <div class="form-row">
        <div class="col-6">
            <button class="btn btn-primary" onclick="reset()">Reset</button>
        </div>
        <div class="col-6">
            <button class="btn btn-primary" onclick="showValue()">Show</button>
        </div>
    </div>
    </div> 
 </div>     

 <div class="row">
     <div class="col-6">
         <textarea id="describtion" row="10" cols="32"></textarea>
     </div>
 </div>
    </div>


<jsp:include page='/MasterPageBottomSection.jsp' />