<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Ipay</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">

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
                            width: 250px;} /* logo height */
    footer { background:#0d6efd; color:white; text-align:center; padding:1rem 0; margin-top:auto; }
    .info-card { margin-bottom:2rem; }
    .scheme-img { max-width:100%; border-radius:0.75rem; }
    .apply-now-btn { margin:2rem auto; display:block; font-size:1.25rem; padding:0.75rem 2rem; }
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

<!-- Body Content -->
<section class="hero">
  <div class="container">
    <div class="row align-items-center">

      <!-- Left Column (Scheme + Eligibility stacked) -->
      <div class="col-md-7">
        <!-- Scheme Details -->
        <!-- Scheme Details -->
        <div class="card shadow-sm info-card">
          <div class="card-body">
            <h4 class="card-title text-primary">Our Scholarship Scheme</h4>

            <!-- History & Achievements -->
            <p class="card-text mt-3">
              <strong>History, Help & Achievements:</strong><br>
              Since its inception, the Ipay Scholarship Program has helped hundreds of deserving students
              continue their education without financial burdens. Our mission is to empower talent and
              reward dedication by offering transparent and merit-based financial support.
            </p>

            <!-- Existing Scholarship Details -->
            <p class="card-text mt-3">
              We are dedicated to supporting talented students by providing financial aid.
              If you have scored <strong>60% or above</strong> in your last examination,
              you are eligible to apply for the Ipay Scholarship Program.10,000 students
              would be awarded this year.
            </p>

            <!-- Start & End Dates -->
            <p class="mt-4">
              <strong>Start Date:</strong> <%= new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date()) %><br>
              <strong>End Date:</strong> <span style="color:red; font-weight:bold;">28/10/2025</span>
            </p>
          </div>
        </div>


        <!-- Eligibility Criteria -->
        <div class="card shadow-sm info-card">
          <div class="card-body">
            <h4 class="card-title text-success">Eligibility Criteria</h4>
            <ul class="mt-3">
            <li>Student should not have been received award this year from ipay.</li>
              <li>Minimum marks required: <strong>60%</strong></li>
              <li>Applicant must have at least above than middle section (8th class).</li>
              <li>Every board of institution is applicable.</li>
              <li>Applicants must provide valid CNIC or B-Form</li>
              <li>Complete and accurate information must be submitted</li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Right Column (Image) -->
      <div class="col-md-5 text-center">
        <img src="scholarship.png" alt="Scholarship" class="scheme-img shadow">
      </div>
    </div>
  </div>
</section>

<!-- Apply Now Button (before footer) -->
<div class="container">
  <a href="signup.jsp" class="btn btn-primary apply-now-btn">Apply Now</a>
</div>

<!-- Footer -->
<footer>
  <div class="container">
    <p class="mb-0">&copy; 2025 Ipay Scholarship Program. All Rights Reserved.</p>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
