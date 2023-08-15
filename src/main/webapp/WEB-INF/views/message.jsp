<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.alert-primary {
	margin-top: 200px;
	font-size: 14px;
	font-weight: bold;
	width: 90%;
	max-width: 400px;
	position: fixed;
	left: 50%;
	transform: translateX(-50%);
}
</style>    
    
<div class="alert alert-primary alert-dismissible">
	<button type="button" class="close" data-dismiss="alert" onclick="go()">&times;</button>
	${msg}
</div>

<script>
	function go() {
		location.href='${loc}';	
	}
</script>