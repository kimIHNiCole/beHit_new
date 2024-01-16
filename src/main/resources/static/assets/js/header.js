/**
 * header
 */

'use strict';

/*헤더 active 클래스명 삽입*/
$(document).ready(function() {
	var url = window.location.href;
	var match = url.match(/\/([^\/]+)\/[^\/]+\.go$/);
	var homeUrl = url.match(/\/([^\/]+)\.go$/)[1];
	
	var targetId = match ? match[1] : null;
	console.log(targetId);
	 
	if (targetId == 'approval') {
		
		$('#approval_main').addClass('active');
		
	}else if(homeUrl == 'home'){
	
		$('#home').addClass('active');
		
	}else if(targetId == 'chat'){
	
		$('#chat').addClass('active');
		
	}else if(targetId == 'creators'){
		
		$('#creator_list_all').addClass('active');
		
	}else if(targetId == 'project'){
		
		$('#project_main').addClass('active');
		
	}else if(targetId == 'calendar'){
		
		$('#calendar_go').addClass('active');
		
	}else if(targetId == 'reserve'){
		
		$('#reserveRoom_list').addClass('active');
		
	}else if(targetId == 'myHr'){
		
		$('#myHr').addClass('active open');
		
		var mhrUrl = url.match(/\/([^\/]+)\.go$/)[1];
		
		console.log(mhrUrl);
		
		if(mhrUrl == 'mhr_timeline'){
			console.log(mhrUrl);
			$('#mhr_timeline').addClass('active');
		}else if(mhrUrl == 'mhr_vacation'){
			console.log(mhrUrl);
			$('#mhr_vacation').addClass('active');
		}
		
	}else if(targetId == 'employee'){
		
		$('#employee').addClass('active open');
		
		var empUrl = url.match(/\/([^\/]+)\.go$/)[1];
		
		console.log(empUrl);
		
		if(empUrl == 'employee_list'){
			$('#employee_list').addClass('active');
		}else if(empUrl == 'workHour_list'){
			console.log(empUrl);
			$('#workHour').addClass('active open');
			$('#workHour_list').addClass('active');
		}else if(empUrl == 'vacation_list'){
			console.log(empUrl);
			$('#workHour').addClass('active open');
			$('#vacation_list').addClass('active');
		}
	}
});









