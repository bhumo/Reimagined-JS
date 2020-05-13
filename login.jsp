
<%@taglib uri='/WEB-INF/tlds/mytags.tld' prefix='db'%>
<script>
  <db:Equals name="admin" value="true">
    <jsp:forward page='/HomePage.jsp' />
</db:Equals>
<db:Equals name="admin" value="false">
  Incorrect username or password
</db:Equals>
  </script>
<jsp:include page='/MasterPageTopSection.jsp' />




  <div class="container">

    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

            <!-- Nested Row within Card Body -->
            <div class="row">

              <div class="col-lg-6 justify-content-center">
                
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                  </div>
                  <form action="/ReimaginedJS/adminstratorLogin" class="user" method="post">
                    <div class="form-group">
                      <input type="username" class="form-control form-control-user" id="username" name="username"aria-describedby="emailHelp" placeholder="Enter Username...">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">
                      Login
                    </button>
                  </form>


                </div>
              
            </div>
          </div>


      

    </div>

  </div>

<jsp:include page='/MasterPageBottomSection.jsp' />