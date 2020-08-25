<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<html>
<head>
	<title>Home</title>
	 <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
	#content{
		  position: relative;
  		  left: 100px;
  		  top:20px;
	}
	img{
	 	float: left;
	}
	.btn{
		 position:relative;
		  left: 400px;
		  top:60px;

	}
	.modal{
	}


</style>
<body>
	<div class="container-md p-3 my-3 border"> 				

		<div class="clearfix">
  			 <img src="./resources/img/spring.jpeg" class="rounded" alt="Cinque Terre" width="304" height="240">
			 		<div id="content">제목:</div>
			 		<br>
			 		<div id="content">작가:</div>
			 		<br>
			 		<div id="content">출판사:</div>
			 		
			  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
			    	구매하기 
			  </button>
					
 				<!-- The Modal -->
			  <div class="modal" id="myModal">
			    <div class="modal-dialog">
			      <div class="modal-content">
			      
			        <!-- Modal Header -->
			        <div class="modal-header">
			          <h4 class="modal-title">수량 </h4>
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			        </div>
			        
			        <!-- Modal body -->
			        <div class="modal-body">
			        	<div id="">강남점:
					    	<input type="button" onclick="location.href='map.jsp'" value="구매하기">
			        	</div>
			        	<br>
			        	<div id="">대전점:
					   		 <input type="button" value="구매하기">
			        	</div>
			        	<br>
			        	<div id="">부산점:
					    	<input type="button" value="구매하기">
			        	</div>
			        	<br>		        				        	
			        </div>
			        
			        
			      </div>
			    </div>
			  </div>
			 			
		</div>
			
		<br>
	<div class="clearfix">
  			 <img src="./resources/img/spring.jpeg" class="rounded" alt="Cinque Terre" width="304" height="240">
			 		<div id="content">제목:</div>
			 		<br>
			 		<div id="content">작가:</div>
			 		<br>
			 		<div id="content">출판사:</div>
			 		
			
				  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2">
				    	구매하기 
				  </button>
			 
				<!-- The Modal -->
			  <div class="modal" id="myModal2">
			    <div class="modal-dialog">
			      <div class="modal-content">
			      
			        <!-- Modal Header -->
			        <div class="modal-header">
			          <h4 class="modal-title">수량 </h4>
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			        </div>
			        
			        <!-- Modal body -->
			        <div class="modal-body">
			        	<div id="">강남점:
					    	<input type="button" value="구매하기">
			        	</div>
			        	<br>
			        	<div id="">대전점:
					   		 <input type="button" value="구매하기">
			        	</div>
			        	<br>
			        	<div id="">부산점:
					    	<input type="button" value="구매하기">
			        	</div>
			        	<br>		        				        	
			        </div>
			        
			        
			      </div>
			    </div>
			  </div>	 			
		</div>
		
		<br>
		<div class="clearfix">
  			 <img src="./resources/img/spring.jpeg" class="rounded" alt="Cinque Terre" width="304" height="240">
			 		<div id="content">제목:</div>
			 		<br>
			 		<div id="content">작가:</div>
			 		<br>
			 		<div id="content">출판사:</div>
			 		
			  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal3">
			    	구매하기 
			  </button>
					
 	<!-- The Modal -->
			  <div class="modal" id="myModal3">
			    <div class="modal-dialog">
			      <div class="modal-content">
			      
			        <!-- Modal Header -->
			        <div class="modal-header">
			          <h4 class="modal-title">수량 </h4>
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			        </div>
			        
			        <!-- Modal body -->
			        <div class="modal-body">
			        	<div id="">강남점:
					    	<input type="button" value="구매하기">
			        	</div>
			        	<br>
			        	<div id="">대전점:
					   		 <input type="button" value="구매하기">
			        	</div>
			        	<br>
			        	<div id="">부산점:
					    	<input type="button" value="구매하기">
			        	</div>
			        	<br>		        				        	
			        </div>
			        
			        
			      </div>
			    </div>
			  </div>
			 			
		</div>
			
		<br>
		<div class="clearfix">
  			 <img src="./resources/img/spring.jpeg" class="rounded" alt="Cinque Terre" width="304" height="240">
			 		<div id="content">제목:</div>
			 		<br>
			 		<div id="content">작가:</div>
			 		<br>
			 		<div id="content">출판사:</div>
			 		
			  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal4">
			    	구매하기 
			  </button>
					
 			<!-- The Modal -->
			  <div class="modal" id="myModal4">
			    <div class="modal-dialog">
			      <div class="modal-content">
			      
			        <!-- Modal Header -->
			        <div class="modal-header">
			          <h4 class="modal-title">수량 </h4>
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			        </div>
			        
			        <!-- Modal body -->
			        <div class="modal-body">
			        	<div id="">강남점:
					    	<input type="button" value="구매하기">
			        	</div>
			        	<br>
			        	<div id="">대전점:
					   		 <input type="button" value="구매하기">
			        	</div>
			        	<br>
			        	<div id="">부산점:
					    	<input type="button" value="구매하기">
			        	</div>
			        	<br>		        				        	
			        </div>
			        
			        
			      </div>
			    </div>
			  </div>
			 			
		</div>
			
		<br>
	</div>

</body>
</html>
