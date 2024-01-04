/**
 * header
 */

'use strict';

/*헤더 active 클래스명 삽입*/
$(document).ready(function() {
	var url = window.location.href;
	var match = url.match(/\/([^\/]+)\/[^\/]+\.go$/);
	
	var targetId = match ? match[1] : null;
	console.log(targetId);
	 
	if (targetId == 'approval') {
		
		$('#approval_main').addClass('active');
		
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

/**
 * Sweet Alerts 스크립트
 */
 

   var successMsg = "${successMsg}";
   if(successMsg != ""){
      Swal.fire({
         /*         title: 'Good job!', */
                 text: successMsg,
                 icon: 'success',
                 customClass: {
                   confirmButton: 'btn btn-primary'
                 },
                 buttonsStyling: false
               });
   }
   
   var warningMsg = "${warningMsg}";
   if(msg != ""){
      Swal.fire({
           text: warningMsg,
           icon: 'warning',
           customClass: {
             confirmButton: 'btn btn-primary'
           },
           buttonsStyling: false
         });
   }
   
   var confirmMsg = "${confirmMsg}";
   if(confirmMsg != ""){
      Swal.fire({
         /*         title: 'Are you sure?', */
                 text: confirmMsg,
                 icon: 'warning',
                 showCancelButton: true,
                 confirmButtonText: 'OK',
                 customClass: {
                   confirmButton: 'btn btn-primary me-3',
                   cancelButton: 'btn btn-label-secondary'
                 },
                 buttonsStyling: false
               }).then(function (result) {
                 if (result.value) {
                   Swal.fire({
                     icon: 'success',
         /*             title: 'Deleted!', */
                     text: '삭제되었습니다.',
                     customClass: {
                       confirmButton: 'btn btn-success'
                     }
                   });
                 }
               });
   }



(function () {
  const 
    iconSuccess = document.querySelector('#type-success'),
    iconWarning = document.querySelector('#type-warning'),
    confirmText = document.querySelector('#confirm-text');


  // Alert Types
  // --------------------------------------------------------------------

  // Success Alert
  if (iconSuccess) {
    iconSuccess.onclick = function () {
      Swal.fire({
/*         title: 'Good job!', */
        text: '저장이 완료되었습니다!',
        icon: 'success',
        customClass: {
          confirmButton: 'btn btn-primary'
        },
        buttonsStyling: false
      });
    };
  }


  // Warning Alert
  if (iconWarning) {
    iconWarning.onclick = function () {
      Swal.fire({
        title: 'Warning!',
        text: ' You clicked the button!',
        icon: 'warning',
        customClass: {
          confirmButton: 'btn btn-primary'
        },
        buttonsStyling: false
      });
    };
  }


  // Alert With Functional Confirm Button
  if (confirmText) {
    confirmText.onclick = function () {
      Swal.fire({
/*         title: 'Are you sure?', */
        text: "정말 삭제하시겠습니까?",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'OK',
        customClass: {
          confirmButton: 'btn btn-primary me-3',
          cancelButton: 'btn btn-label-secondary'
        },
        buttonsStyling: false
      }).then(function (result) {
        if (result.value) {
          Swal.fire({
            icon: 'success',
/*             title: 'Deleted!', */
            text: '삭제되었습니다.',
            customClass: {
              confirmButton: 'btn btn-success'
            }
          });
        }
      });
    };
  }
})();







