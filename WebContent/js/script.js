function validation() {
    var a= document.forms["Form"]["game"].value;
 	if(a=="") {
      alert("Title is requried");
      return false;	  
    }
	if(a.length < 2 ||a.length > 100) {
	  alert("Title should have 2 to 100 charecters");
	  return false;
    }
	var b= document.forms["Form"]["price"].value;
	if(b=="") {
      alert("price  is requried");
      return false;
    }
	  r=/[^0-9]/;
	  if(r.test(b)){
	  alert("Box ofice has to be a number");
	  return false;
    }
	var c= document.forms["Form"]["dol"].value;
	if(c==""){
      alert("Date of launch is required");
      return false;
    }
}

	