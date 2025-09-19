<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Registered</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body { min-height:100vh; display:flex; flex-direction:column; }
    .hero { padding:4rem 1rem; background:#f8f9fa; }
  .ipay-logo {
    font-family: 'Pacifico', cursive;
    font-size: 5rem;              /* bigger size */
    font-weight: 700;
    background: linear-gradient(45deg, #0d6efd, #6610f2);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    letter-spacing: 7px;
    text-shadow: 2px 2px 6px rgba(0,0,0,0.2);
     margin:0; }
    .sub-brand { font-size:1rem; font-weight:400; margin:0; }
    nav.navbar { padding:0.8rem 1rem; }
    .navbar-brand img {     height: 200px;
                            width: 250px;}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
  <div class="container-fluid d-flex justify-content-between align-items-center">

    <!-- Left: Logo -->
    <a class="navbar-brand d-flex align-items-center" href="index.jsp">
      <img src="logo_ipay.png" alt="Ipay Logo" class="me-2">
    </a>

    <!-- Center: Ipay + Scholarship Program -->
    <div class="text-center text-white">
      <div class="ipay-logo">iPay</div>

    </div>

    <!-- Right: Buttons -->
    <div class="d-flex">
      <a class="btn btn-light me-2" href="signup.jsp">Apply</a>
      <a class="btn btn-outline-light" href="signin.jsp">Admin Portal</a>
    </div>
  </div>
</nav>


<div class="container mt-5">
  <div class="card text-center">
    <div class="card-body">
      <h3 class="card-title">You have been registered successfully</h3>
      <p class="card-text">Wait for the verification through email or WhatsApp within two days if eligible.</p>
      <a href="index.jsp" class="btn btn-primary">Back to Home</a>
    </div>
  </div>
</div>
</body>
</html>
