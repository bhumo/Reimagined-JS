<!doctype html>
<html lang="en">
<head>
<script src='FrameWork.jsp'></script> 
<script>
  function DataModel(){
    this.employees=[];
    var dataModelObj = this;
    function EmployeeTableModel(){
      this.getRowCount=function(){
       return  dataModelObj.employees.length;
        };
      this.getColumnCount = function(Object){
        return 5;
        };
      this.getColumnTitle = function(Object){
        
        var columnTitle = {"0":"Sr.No","1":"EmployeeId","2" :"Name","3":"Gender","4":"Pan Number"}; 
        return columnTitle ;        
        }
        this.getValueAt = function(row,coloumn){
          if(coloumn==0){
            return row+1;
          }
          if(coloumn==1){
            return dataModelObj.employees[row].employeeId;
          }
          if(coloumn==2){
            return dataModelObj.employees[row].name;
          }
          if(coloumn==3){
            return dataModelObj.employees[row].gender;
          }
          if(coloumn==4){
            return dataModelObj.employees[row].panNumber;
          }

        }

      } <!--EmployeeTableModel() ends--> 
      this.mode='hide';
      this.selectedIndex=-1; 
    
       this.employeeTableModel = new EmployeeTableModel();
      }<!--DataModel() ends-->

      var dataModel = new DataModel();

      function tableUpdate(ajaxResponse){
        var lengthEmployee = dataModel.employees.length-1;
        var emp=null;
        var obj={};
        for(var i =0;i<ajaxResponse.length;i++){
          obj = ajaxResponse[i]
          emp=new Employee();
          emp["employeeId"]=obj["employeeId"];
          emp["name"]=obj["name"];
          emp["gender"]=obj["gender"];
          emp["designationCode"]=obj["designationCode"];
          emp["dateOfBirth"]=obj["date_of_birth"];
          emp["panNumber"]=obj["panNumber"].trim();
          emp["addharCardNumber"]=obj["addharCardNumber"];
          dataModel.employees[length]=emp;
          length++;
              }

      }
    window.onload = function(){
   
      var es = new EmployeeService();
      $$$.setModel(dataModel);
      es.getEmployees(function(ajaxResponse){
        tableUpdate(ajaxResponse);
      },function(){alert("Unable to connect");});

    }
function EmployeeService(){
  this.getEmployees = function(success,failure){
    $$$.getJson({
    "url" : "/ReimaginedJS/getEmployeesServlet",
    "success" : function(ajaxResponse){
     success(ajaxResponse);
    },
    "failure": function(){
      failure();
    }
    });


  }
}


</script>

<script src ="EmployeeJS.jsp"></script>
 
<jsp:include page='/MasterPageTopSection.jsp' />
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Tm-If Example</h1>
          <p class="mb-4">.Click on show button to show the table.</p>

          <!-- DataTales Example -->
          
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
            </div>
            <div class="row-6">
                <div class="col-2">
                    <button type="button"class="btn btn-primary" onclick="dataModel.mode='show'">Show</button>
                </div>
                <div class="col-2">
                <button type="button" class="btn btn-primary" onclick="dataModel.mode='hide'">Hide</button>
            </div>
            </div>
                <div class="row" id="viewContainerDivision" tm-if="mode=='show'">
                  <div class="col">
                      <div class="table-responsive"  >
                          <table id="employeeTable" class="table table-hover" tm_bind="employees" tableModel="employeeTableModel">
                              <caption>List of employees</caption>
                              
                          </table>
                      </div>
                  </div>
              </div>
      
            
            
          </div>

        </div>
        <!-- /.container-fluid -->

     <jsp:include page='/MasterPageBottomSection.jsp'/>