<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="../../assets/vendor/libs/jquery/jquery.js"></script>
<style>
	#todoopenModal {
		    position: absolute;
		    top: 180px;
		    left: 0;
		    z-index: -1;
		    display: block;
		    width: 42px;
		    height: 42px;
		    border-top-left-radius: 15%;
		    border-bottom-left-radius: 15%;
		    background: var(--bs-primary);
		    color: #fff !important;
		    text-align: center;
		    font-size: 18px !important;
		    line-height: 42px;
		    opacity: 1;
		    -webkit-transition: all 0.1s linear 0.2s;
		    -o-transition: all 0.1s linear 0.2s;
		    transition: all 0.1s linear 0.2s;
		    -webkit-transform: translateX(-62px);
		    -ms-transform: translateX(-62px);
		    transform: translateX(-62px);
		    cursor: pointer;
		}
		
		#todoopenModal::before {
		    content: "";
		    width: 22px;
		    height: 22px;
		    display: block;
		    background-size: 100% 100%;
		    position: absolute;
		    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABClJREFUaEPtmY1RFEEQhbsjUCIQIhAiUCNQIxAiECIQIxAiECIAIpAMhAiECIQI2vquZqnZvp6fhb3SK5mqq6Ju92b69bzXf6is+dI1t1+eAfztG5z1BsxsU0S+ici2iPB3vm5E5EpEDlSVv2dZswFIxv8UkZcNy+5EZGcuEHMCOBeR951uvVDVD53vVl+bE8DvDu8Pxtyo6ta/BsByg1R15Bwzqz5/LJgn34CZwfnPInI4BUB6/1hV0cSjVxcAM4PbcBZjL0XklIPN7Is3fLCkdQPpPYw/VNXj5IhPIvJWRIhSl6p60ULWBGBm30Vk123EwRxCuIzWkkjNrCZywith10ewE1Xdq4GoAjCz/RTXW44Ynt+LyBEfT43kYfbj86J3w5Q32DNcRQDpwF+dkQXDMey8xem0L3TEqB4g3PZWad8agBMRgZPeu96D1/C2Zbh3X0p80Op1xxloztN48bMQQNoc7+eLEuAoPSPiIDY4Ooo+E6ixeNXM+D3GERz2U3CIqMstLJUgJQDe+7eq6mub0NYEkLAKwEHkiBQDCZtddZCZ8d6r7JDwFkoARklHRPZUFVDVZWbwGuNrC4EfdOzFrRABh3Wnqhv+d70AEBLGFROPmeHlnM81G69UdSd6IUuM0GgUVn1uqWmg5EmMfBeEyB7Pe3txBkY+rGT8j0J+WXq/BgDkUCaqLgEAnwcRog0veMIqFAAwCy2wnw+bI2GaGboBgF9k5N0o0rUSGUb4eO0BeO9j/GYhkSHMHMTIqwGARX6p6a+nlPBl8kZuXMD9j6pKfF9aZuaFOdJCEL5D4eYb9wCYVCanrBmGyii/tIq+SLj/HQBCaM5bLzwfPqdQ6FpVHyra4IbuVbXaY7dETC2ESPNNWiIOi69CcdgSMXsh4tNSUiklMgwmC0aNd08Y5WAES6HHehM4gu97wyhBgWpgqXsrASglprDy7CwhehMZOSbK6JMSma+Fio1KltCmlBIj7gfZOGx8ppQSXrhzFnOhJ/31BDkjFHRvOd09x0mRBA9SFgxUgHpQg0q0t5ymPMlL+EnldFTfDA0NAmf+OTQ0X0sRouf7NNkYGhrOYNrxtIaGg83MNzVDSe3LXLhP7O/yrCsCz1zlWTpjWkuZAOBpX3yVnLqI1yLCOKU6qMrmP7SSrUEw54XF4WBIK5FxCMOr3lVsfGqNSmPzBXUnJTIX1jyVBq9wO6UObOpgC5GjO98vFKnTdQMZXxEsWZlDiCZMIxAbNxQOqlpVZtobejBaZNoBnRDzMFpkxvTQOD36BlrcySZuI6p1ACB6LU3wWuf5581+oHfD1vi89bz3nFUC8Nm7ZlP3nKkFbM4bWPt/MSFwklprYItwt6cmvpWJ2IVcQBCz6bLysSCv3SaANCiTsnaNRrNRqMXVVT1/BrAqz/buu/Y38Ad3KC5PARej0QAAAABJRU5ErkJggg==);
		    margin: 10px;
		}
		
		#todoListModal {
		    position: fixed;
		    top: 170px;
		    right: 50px;
		    bottom: 0;
		    left: auto;
		    z-index: 2000;
		}
		
		#template-customizer {
		    position: fixed;
		    top: 0;
		    right: 0;
		    height: 100%;
		    z-index: 99999999;
		    display: -ms-flexbox;
		    -ms-flex-direction: column;
		    width: 400px;
		    background: #fff;
		    -webkit-box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
		    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
		    -o-transition: all 0.2s ease-in;
		    -webkit-transform: translateX(420px);
		    -ms-transform: translateX(420px);
		}
</style>

<body>
	<div id="template-customizer" class="invert-bg-white" style="visibility: visible">
		<a id="todoopenModal" ></a>
	</div>
	<div id="todoListModal"></div>
</body>

<script>
	$('#todoopenModal').click(function (e) {
		$.get("/todoList.go", function(data) {
			$("#todoListModal").html(data);
		});
	});
</script>
