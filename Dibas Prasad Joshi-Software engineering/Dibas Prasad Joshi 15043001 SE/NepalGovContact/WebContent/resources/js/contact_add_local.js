
$(document).ready(function(){
	displayTable();
	fillCombo();
	
	$('#office_name').focusin(function() {
		//   alert("hello");
		   ///////////////////////////////
		   try
			{
				 var ppath="/NepalGovContact/displayOfficeName/";
				 var office_code=$('#office_code').val();;
				
			 	   var sendInfo = {office_code:office_code };
				$.post(ppath, {
				
				   tabledata:  JSON.stringify(sendInfo),
					dataType: 'json'
					}, function(data) {
					//$('#ajaxResponse').text(responseText);
						  try
						  {
						    //alert(data);
						    $('#office_name').val(data);
						  }
						  catch(err)
						  {
							  alert(err);
						  }
						   // alert(tbl_body);
						    
						    $("#tableResponse").html(tbl_body);
						
					
					
					
					});   
			}
			catch(err)
			{
				alert(err)
			}

		   ////////////////////////////////////
	  });
	
	function displayTable()
	{
		 
		try
		{
			 var ppath="/NepalGovContact/displayLocalRecord/";
			 var org_code = $('#mv').val ();
			 var sendInfo = {org_code:org_code };
			 $('#office_code').val(org_code);
			// alert(mv);

			$.get(ppath, {
			
			   tabledata:  JSON.stringify(sendInfo),
				dataType: 'json'
				}, function(data) {
				//$('#ajaxResponse').text(responseText);
					  try
					  {
					    var tbl_body = "<table border='1' cellspacing='5'> <thead> <th>EmpID</th><th>EmpName</th><th>MobileNo</th><th>OfficeNo</th><th>HomeNo</th><th>Email</th><th>Office</th><th>Position</th><th>Edit Record</th><th>Delete Record</th> </thead>";
					    var odd_even = false;
					    $.each(data, function() {
					        var tbl_row = "";
					        var empkey="";
					        var empval="";
					        $.each(this, function(k , v) {
					            if(k == "empID")
					            	{
					            	  empval=v;
					            	}
					        	
					        	tbl_row += "<td>"+v+"</td>";
					            	
					        })
					       tbl_row += "<td><a href=" +"/NepalGovContact/editForm?id="+ empval +""+ ">Edit</a</td>";
					        tbl_row += "<td><a href=" +"/NepalGovContact/deleteForm?id="+ empval +""+ ">Delete</a</td>";
					        tbl_body += "<tr>"+tbl_row+"</tr>";
					                   
					    })
					    tbl_body=tbl_body + " </table>";
					  }
					  catch(err)
					  {
						  alert(err);
					  }
					   // alert(tbl_body);
					    
					    $("#tableResponse").html(tbl_body);
					
				
				
				
				});   
		}
		catch(err)
		{
			alert(err)
		}

	}
	

    $('#btn').click(function (e) {
   
    	e.stopPropagation();
        e.preventDefault();
        var empID=$('#empID').val();
  	   var empName=$('#empName').val();
  	   var mobileNo=$('#mobileNo').val();
  	   var officeNo=$('#officeNo').val();
  	  var office_code=$('#office_code').val();
  	   var homeNo=$('#homeNo').val();
  	   var email=$('#email').val();
  	  var post_code=$('#post_combo').val();
  	 // alert(post_code);
  	   
  	   var sendInfo = {empID:empID,empName:empName,mobileNo:mobileNo,officeNo:officeNo,homeNo:homeNo,office_code:office_code,post_code:post_code,email:email };
 	   var requestpath=$(location).attr('pathname');
		
		  var rpath=requestpath.substring(requestpath.lastIndexOf("/")+1);
		  //alert(empID);
		  //alert(empName);
	 	  // alert(rpath);
		  var ppath="./Additem.jsp"
		  if(rpath == "AddItem.jsp")
			  {
			    ppath="../NepalGovContact/aRecord/";
			  }
		  if(rpath=="ContactController")
			  {
			    ppath="/NepalGovContact/aRecord/";
			  }
		  ppath="/NepalGovContact/aRecord/";
		  $.post(ppath, {
              savedata:  JSON.stringify(sendInfo),
            //  pdata: JSON.stringify(imgar),
              dataType: 'json'
      }, function(responseText) {
          alert(responseText);    
    	  $('#ajaxResponse').text(responseText);
              displayTable();
              //$("#tableResponse").load(location.href + " #tableResponse");
      });
    	
   
    //$(".article").hide();
   });
    function fillCombo()
	{
		 
		try
		{
			//////////////////////////
			 
		  	 
		 	  
			
			
			var ppath="/NepalGovContact/displayPostRecord/";
			var ddl = "#post_combo";
			 //  $(ddl).append('<option value="' + value + '">' + name + "</option>'");
			$.get(ppath, {
			
			   tabledata:  "nothing",
				dataType: 'json'
				}, function(data) {
				//$('#ajaxResponse').text(responseText);
					  try
					  {
					   
					    
					    $.each(data, function() {
					        var tbl_row = "";
					        var orgkey="";
					        var orgval="";
					      //  alert("Before");
					        $.each(this, function(k , v) {
					            if(k == "post_id")
					            	{
					            	//alert(v);
					            	tbl_row += "<option value="+v+"> ";  
					            	//orgval=v;
					            	}
					            if(k == "post_name")
				            	{
				            	tbl_row +=v;
				            	tbl_row +="</option>";
				            	}
					            
					            	
					        })
					       // alert(tbl_row);
					        $(ddl).append(tbl_row);
					        /* tbl_row += "<td><a href=" +"/NepalGovContact/editMinistry?id="+ orgval +""+ ">Edit</a</td>";
					        tbl_row += "<td><a href=" +"/NepalGovContact/deleteMinistry?id="+ orgval +""+ ">Delete</a</td>";
					        tbl_body += "<tr>"+tbl_row+"</tr>";*/
					                   
					    })
					    
					  }
					  catch(err)
					  {
						  alert(err);
					  }
					   // alert(tbl_body);
					    
					    //$("#tableResponse").html(tbl_body);
					
				
				
				
				});   
		}
		catch(err)
		{
			alert(err)
		}

	}
});
