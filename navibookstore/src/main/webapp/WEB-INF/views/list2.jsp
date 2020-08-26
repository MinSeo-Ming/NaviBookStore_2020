<%@ page language="java" contentType="text/html; charset=UTF-8"

   pageEncoding="UTF-8"%>

<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html>

<head>

  <title>Bootstrap Example</title>

  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<style>

#mod_bt{

	position: relative;

  	left: 50px;

}

#m_text{

	position: relative;

  	left: 20px;

}

#exampleModalLongTitle{

	position: relative;

  	left: 20px;

 

}

#th-buy{

	position: relative;

  	left: 50px;

}

 

 

</style>

<script>

var i=0;

var loc=["알라딘 강남점에는","알라딘 대전점에는","알라딘 부산점에는"];

function showMap(index) {
	if(index==0)
	   window.open("<%=request.getContextPath()%>/map.jsp","map","width=900,height=700");
	else if(index==1)
		   window.open("<%=request.getContextPath()%>/map2.jsp","map","width=900,height=700");
	else if(index==2)
		   window.open("<%=request.getContextPath()%>/map3.jsp","map","width=900,height=700");
	}

</script>

<body>

<%@ include file="/common/header.jsp" %>

<div class="container">

	<br>

	<br>

  <table class="table">

    <thead>

      <tr>

        <th>제목</th>

        <th>작가</th>

        <th>출판사</th>

        <th><span id="th-buy">구매/사진</span></th>

      </tr>

    </thead>

    <tbody>

     	<c:forEach var="book" items="${books}" varStatus="vs">

 

	  		<tr class="table-light">

	  			<td >${book.bookname}</td>

				<td >${book.publisher}</td>

				<td >${book.author}</td>

				<td >
            	 <c:if test="${empty login}">

               <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal${vs.index}" id="viewDetailButton${vs.index}" style="visibility:hidden;">

                              구매하기 

                </button>

              </c:if>

              <c:if test="${!empty login }">

                 <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal${vs.index}" id="viewDetailButton${vs.index}"style="visibility: visible;">

                           구매하기 

              </button>

              </c:if>

			  	<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal2${vs.index}" id="viewDetailButton2${vs.index}">

			         사진보기 

			  	</button>

			  	</td>		

			</tr>

 

			<!-- Modal(수량) -->

			<div class="modal fade" id="myModal${vs.index}" role="dialog">

			  <div class="modal-dialog modal-dialog-centered" "role="document">

			    <div class="modal-content">

			      <div class="modal-header">

			        <h5 class="modal-title" id="exampleModalLongTitle">수량</h5>

			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">

			          <span aria-hidden="true">&times;</span>

			        </button>

			      </div>

			      <div class="modal-body">

     					<c:forTokens items="${book.count}" delims="-" var="item" varStatus="vss">

     					   	<div id="m_text"><script type="text/javascript">

     					   		document.write(loc[i]);

     					   		i++;

     					   		if(i==3)

     					   			i=0;

     					   	</script>

     					   	<span> </span>

     					   	${item}

     					   	<span>개가 남았습니다.</span>

     					   	 <button type="button" class="btn btn-secondary" id="mod_bt" onclick="showMap(${vss.index})">구매하기</button>
     					   	</div>

     					   	<br>	  

			  			</c:forTokens>

			  			

			      </div>

			    </div>

			  </div>

			 </div>

			

 

			<!-- Modal(사진) -->

			<div class="modal fade" id="myModal2${vs.index}" role="dialog">

			  <div class="modal-dialog modal-dialog-centered" "role="document">

			    <div class="modal-content">

			      <div class="modal-header">

			        <h5 class="modal-title" id="exampleModalLongTitle">사진</h5>

			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">

			          <span aria-hidden="true">&times;</span>

			        </button>

			      </div>

			      

			      <div class="modal-body">

  

				<img src="<c:url value='./resources/img/${book.bookno}.jpg' />" id="img${vs.index}" width="100" height="100">

			      </div>

			    </div>

			  </div>	  

			</div>

			

 	   </c:forEach> 

    </tbody>

  </table>

</div>

<%@ include file="/common/footer.jsp" %>

</body>

</html>