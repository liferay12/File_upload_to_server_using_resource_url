<%@ include file="/init.jsp" %>

<portlet:resourceURL var="fileImportURL" id="fileImport">
</portlet:resourceURL>




 <form id="myform" method="post" enctype="multipart/form-data">
    <input id="fileUpload" name="fileText" type="file"   />
    <input type="button" name="upload" id="btn" value="Upload"  />
</form>

 
 
 
 <script>
 $('#btn').click(function() {
     event.preventDefault();
    
     var form = $('#myform')[0];
     var data = new FormData(form);
	 $.ajax
	     ({
	         secureuri : false,
	         fileElementId : 'fileUpload',
	         type : "POST",
	         enctype : 'multipart/form-data',
	         upload : true,
	         url: '${fileImportURL}',
	         data : data,
	         processData : false,
	         contentType : false,
	         cache : false,
	         success: function (data, status)
	         {
	                  alert(data+"File upload success"+status);
	          },
	         error: function (data, status, e) {

	             alert("File upload fail");
	         }
	     }) 
	    return false;
	 });
 
 </script>