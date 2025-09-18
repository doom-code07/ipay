<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sign Up - Ipay</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { min-height:100vh; display:flex; flex-direction:column; }
    .text-red { color: red; font-family: Arial, sans-serif; font-size: 0.9rem; }
    .container { max-width:900px; }
    .ipay-logo {
      font-family: 'Pacifico', cursive;
      font-size: 5rem;
      font-weight: 700;
      background: linear-gradient(45deg, #0d6efd, #6610f2);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      letter-spacing: 7px;
      text-shadow: 2px 2px 6px rgba(0,0,0,0.2);
      margin:0;
    }
    nav.navbar { padding:0.8rem 1rem; }
    .navbar-brand img { height: 200px; width: 250px; } /* smaller fixed logo */
  </style>
</head>
<body>

<!-- Header / Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
  <div class="container-fluid d-flex justify-content-between align-items-center">

    <!-- Left: Logo -->
    <a class="navbar-brand d-flex align-items-center" href="index.jsp">
      <img src="logo_ipay.png" alt="Ipay Logo" class="me-2">
    </a>

    <!-- Center: Ipay -->
    <div class="text-center text-white">
      <div class="ipay-logo">iPay</div>
    </div>

  </div>
</nav>

<!-- Body Content -->
<div class="container my-4">
  <div class="card shadow-sm">
    <div class="card-body">
      <h4 class="card-title mb-3">Please Fill Out Each Field</h4>
      <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
      </c:if>

      <form method="post" action="SignupServlet" enctype="multipart/form-data" novalidate>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label class="form-label">Full Name *</label>
            <input required name="name" class="form-control" pattern=".{3,}" title="At least 3 characters">
          </div>
          <div class="col-md-6 mb-3">
            <label class="form-label">CNIC *</label>
            <input required name="cnic" class="form-control" pattern="\\d{5}-\\d{7}-\\d" placeholder="12345-1234567-1" title="Format 12345-1234567-1">
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Email *</label>
            <input required type="email" name="email" class="form-control">
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Father Name</label>
            <input required name="fatherName" class="form-control">
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Father CNIC</label>
            <input required name="fatherCnic" class="form-control" pattern="\\d{5}-\\d{7}-\\d" placeholder="12345-1234567-1">
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">No. of Siblings</label>
            <input required type="number" min="0" name="siblingsCount" value="0" class="form-control">
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Current Class</label>
            <input required name="className" class="form-control">
            <p class="text-red">If not studying type Null</p>
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Father Designation</label>
            <input required name="fatherDesignation" class="form-control">
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Gender</label>
            <select name="gender" class="form-select">
              <option value="Male">Male</option>
              <option value="Female">Female</option>
              <option value="Other">Other</option>
            </select>
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">City</label>
            <input required name="city" class="form-control">
          </div>

          <div class="col-12 mb-3">
            <label class="form-label">Present Address</label>
            <textarea required name="permanentAddress" class="form-control" rows="2" placeholder = "Current address should be full till house number if have."></textarea>
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Last Educational Institute</label>
            <input required name="lastInstitute" class="form-control">
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Last Qualification</label>
            <input required name="lastQualification" class="form-control">
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Cell Number *</label>
            <input required name="cellNumber" class="form-control" pattern="\\+?\\d{9,15}" title="Enter numbers, optional +">
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Account Number (Easypaisa,JazzCash etc)</label>
            <input required name="accountNumber" class="form-control">
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">WhatsApp Number</label>
            <input required name="whatsappNumber" class="form-control" pattern="\\+?\\d{9,15}">
            <p class="text-red">Verification call will be placed on this number, so enter a feasible number.</p>
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Latest Batch Marks</label>
            <input required name="marks" class="form-control">
          </div>

          <div class="col-md-6 mb-3">
            <label class="form-label">Image (Use camera on mobile)</label>
            <input required type="file" name="image" accept="image/*" capture="environment" class="form-control">
            <small class="text-red">Face should be clearly shown and past image is not acceptable, at least 6 months variation is acceptable.</small>
          </div>
        </div>

        <div class="d-flex justify-content-between mt-3">
          <a href="index.jsp" class="btn btn-outline-secondary">Home</a>
          <button class="btn btn-primary" type="submit">Register</button>
        </div>
      </form>

    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
