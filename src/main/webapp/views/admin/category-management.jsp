<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>Visual Admin Dashboard - Manage Users</title>
	<%@ include file="/common/admin/head.jsp" %>
  </head>
  <body>  
    
    <div class="templatemo-flex-row">
      <!-- Left column -->
      <%@ include file="/common/admin/left-column.jsp" %>
      <!-- Main content --> 
      <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
          <div class="row">
            <nav class="templatemo-top-nav col-lg-12 col-md-12">
              <ul class="text-uppercase">
                <li><a href="" class="active">Admin panel</a></li>
                <li><a href="">Dashboard</a></li>
                <li><a href="">Overview</a></li>
                <li><a href="login.html">Sign in form</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        <div class="templatemo-content-container">
          <div class="templatemo-flex-row flex-content-row">
            <div class="col-1">
              <div class="panel panel-default margin-10">
                <div class="panel-heading"><h2 class="text-uppercase">Category Management</h2></div>
                <div class="panel-body">
                  <form action="admin/category" class="templatemo-login-form">
                    <div class="form-group">
                      <label for="inputEmail">Category Name</label>
                      <input type="text" class="form-control" id="name" placeholder="Enter category name">
                    </div>
                    <div class="form-group">
                      <button type="submit" class="templatemo-blue-button">Save</button>
                      <button type="submit" class="templatemo-blue-button">Delete</button>
                      <button type="reset" class="templatemo-white-button">Cancel</button>
                    </div>
                  </form>
                </div>                
              </div>              
            </div>                   
          </div> <!-- Second row ends -->
          
          <div class="templatemo-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>
                    <td><a href="" class="white-text templatemo-sort-by"># <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">Category name<span class="caret"></span></a></td>
                    <td>Action</td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1.</td>
                    <td>js@company.com</td>
                    <td>
                    	<a href="" class="templatemo-edit-btn">Edit</a>
                    	<a href="" class="templatemo-edit-btn">Delete</a>
                   	</td>
                  </tr>
                                   
                </tbody>
              </table>    
            </div>                          
          </div>          
          
          
          <div class="pagination-wrap">
            <ul class="pagination">
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true"><i class="fa fa-play"></i></span>
                </a>
              </li>
            </ul>
          </div>          
          
        </div>
      </div>
    </div>
    
    <!-- JS -->
    <%@ include file="/common/admin/java-script.jsp" %>
  </body>
</html>