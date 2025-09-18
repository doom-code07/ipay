<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Error - Ipay</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      background: #f8f9fa;
    }
    .error-container {
      text-align: center;
    }
    .circle {
      width: 150px;
      height: 150px;
      border-radius: 50%;
      background: #f8d7da;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0 auto 20px;
      position: relative;
      box-shadow: 0 4px 12px rgba(0,0,0,0.15);
    }
    .cross {
      position: relative;
      width: 80px;
      height: 80px;
    }
    .cross::before,
    .cross::after {
      content: '';
      position: absolute;
      top: 50%;
      left: 50%;
      width: 80px;
      height: 8px;
      background: #dc3545;
      transform-origin: center;
      border-radius: 4px;
      animation: crossAnim 1s ease forwards;
    }
    .cross::before { transform: translate(-50%, -50%) rotate(45deg) scaleX(0); }
    .cross::after  { transform: translate(-50%, -50%) rotate(-45deg) scaleX(0); }

    @keyframes crossAnim {
      to { transform: translate(-50%, -50%) rotate(var(--angle)) scaleX(1); }
    }
    .cross::before { --angle: 45deg; }
    .cross::after { --angle: -45deg; }
  </style>
</head>
<body>
  <div class="error-container">
    <div class="circle">
      <div class="cross"></div>
    </div>
    <h2 class="text-danger fw-bold">Error Occurred</h2>
    <p class="text-muted">Invalid Field OR Something went wrong. Please try again.</p>
    <a href="index.jsp" class="btn btn-primary mt-3">Go Back Home</a>
  </div>
</body>
</html>
