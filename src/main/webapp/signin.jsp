<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin Login - Ipay</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container my-5" style="max-width:420px;">
  <div class="card shadow">
    <div class="card-body">
      <h4 class="mb-3">Admin Portal</h4>
      <c:if test="${not empty loginError}">
        <div class="alert alert-danger">${loginError}</div>
      </c:if>
      <form method="post" action="LoginServlet">
        <div class="mb-3">
          <label class="form-label">Username</label>
          <input required name="username" class="form-control">
        </div>
        <div class="mb-3">
          <label class="form-label">Password</label>
          <input required type="password" name="password" class="form-control">
        </div>
        <div class="d-flex justify-content-between">
          <a href="index.jsp" class="btn btn-outline-secondary">Cancel</a>
          <button class="btn btn-primary" type="submit">Sign In</button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
