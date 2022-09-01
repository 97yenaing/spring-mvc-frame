<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Job Type</title>
</head>
<body>
  <div class="form-card">
    <h1 class="form-header">Create Job Type</h1>
    <c:url var="createJobType" value="/createJobTypeConfirm"></c:url>
    <form:form class="form-container" action="${createJobType}" method="POST" id="form" modelAttribute="rollBackJobTypeDto">
      <c:if test="${errorMsg != null }">
        <div class="alert alert-danger">
          <strong>${errorMsg }</strong>
        </div>
      </c:if>
      <form:errors path="type_name" class="text-danger" />
      <div class="group">
        <label for="type_name">Job Type:</label> <br>
        <form:input path="type_name" value="${rollBackJobTypeDto.type_name }" class="form-input" placeholder="Enter Job Type" />
      </div>
      <div class="group">
        <label for="description">Description:</label> <br>
        <form:input path="description" value="${rollBackJobTypeDto.description}" class="form-input" placeholder="Enter the description for your job." rows="6" />
        </div>
      <button type="submit" class="form-btn" name="confirmJobType">Create</button>
      <button type="reset" class="" name="clear">Cancel</button>
  </form:form>
  </div>
</body>
</html>