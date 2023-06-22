<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
div {
	margin-top:50px;
	font-size: 15px;
}
</style>

<body>
	<div class="alert alert-primary">
	    <strong>${msg}<br>${msg2}</strong>
	</div>
</body>

<script>
setTimeout(function() {
    location.href = '${loc}';
}, 1500);
</script>