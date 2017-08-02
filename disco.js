(function(){
    "use strict";
	
	document.addEventListener('DOMContentLoaded', function(){
		document.getElementById('tab-group').className = 'ready',
		document.getElementById('tab-header').className = 'col-xs-6 col-md-2 tab-header active';
		
		var headerClass = 'tab-header',
			contentClass = 'tab-content';
			
		var tabHeaders = document.getElementsByClassName(headerClass);
		for (var i = 0; i < tabHeaders.length; i++){
			tabHeaders[i].addEventListener('click', activateTab);
			}	
		
		function activateTab(event) {
			var myID = this.id,
				contentID = myID.replace('header', 'content'); 
				
			deactivateAllTabs();
			
			document.getElementById(myID).className = headerClass + ' col-xs-6 col-md-2 active';
			document.getElementById(contentID).className = contentClass + ' active';	
				}	
				
			function deactivateAllTabs(){
				var tabHeaders = document.getElementsByClassName(headerClass),
					tabContents = document.getElementsByClassName(contentClass);
					
					for (var i = 0; i < tabHeaders.length; i++) {
						tabHeaders[i].className = headerClass + ' col-xs-6 col-md-2 ',
						tabContents[i].className = contentClass;
						}
					}	
		});

	document.getElementById("open").onclick = function (){
		if ( document.getElementById("list").className === "col-sm-3 drop"){
			 document.getElementById("list").className = "col-sm-3 visible";
			 }else if(document.getElementById("list").className === "col-sm-3 visible"){
				 document.getElementById("list").className="col-sm-3 drop";}
		if ( document.getElementById("list2").className === "col-sm-3 drop"){
			 document.getElementById("list2").className = "col-sm-3 visible";
			 }else if(document.getElementById("list2").className === "col-sm-3 visible"){
				 document.getElementById("list2").className="col-sm-3 drop";}
		if ( document.getElementById("list3").className === "col-sm-3 drop"){
			 document.getElementById("list3").className = "col-sm-3 visible";
			 }else if(document.getElementById("list3").className === "col-sm-3 visible"){
				 document.getElementById("list3").className="col-sm-3 drop";}
        if ( document.getElementById("list4").className === "col-sm-3 drop"){
			 document.getElementById("list4").className = "col-sm-3 visible";
			 }else if(document.getElementById("list4").className === "col-sm-3 visible"){
				 document.getElementById("list4").className="col-sm-3 drop";}
	
	};
})();