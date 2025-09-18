<%@ page contentType="text/html;charset=UTF-8" import="java.util.List,com.ipay.dao.ApplicantDAO,com.ipay.model.Applicant" %>
<%@ page session="true" %>
<%
    String admin = (String) session.getAttribute("adminUsername");
    if (admin == null) {
        response.sendRedirect("signin.jsp");
        return;
    }
    ApplicantDAO dao = new ApplicantDAO();
    List<Applicant> list = dao.getAll();
%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Applicants - Ipay</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container">
    <a class="navbar-brand" href="index.jsp">Ipay</a>
    <div class="ms-auto">
      <span class="text-white me-3">Admin: <%= session.getAttribute("adminFullName") %></span>
      <a class="btn btn-outline-light btn-sm" href="index.jsp">Logout</a>
    </div>
  </div>
</nav>

<div class="container my-4">
  <h4>Applicants</h4>

  <div class="row">
    <%
      for (Applicant a : list) {
    %>
    <div class="col-md-6 mb-4">
      <div class="card shadow-sm p-3">
        <div class="text-center mb-3">
          <img src="ImageServlet?id=<%=a.getId()%>"
               alt="Applicant Image"
               class="img-fluid rounded"
               style="max-height:300px; object-fit:cover;">

               <a href="ImageServlet?id=<%=a.getId()%>&download=true"
                  class="btn btn-sm btn-outline-primary mt-2">Download Image</a>
        </div>
        <div>
          <h5><%= a.getName() %></h5>
          <p><b>CNIC:</b> <%= a.getCnic() %></p>
          <p><b>Email:</b> <%= a.getEmail() %></p>
          <p><b>Father:</b> <%= a.getFatherName() %></p>
          <p><b>City:</b> <%= a.getCity() %></p>
          <p><b>Cell:</b> <%= a.getCellNumber() %></p>
          <p><b>WhatsApp:</b> <%= a.getWhatsappNumber() %></p>
          <p><b>Registered At:</b> <%= a.getRegisteredAt() %></p>
          <p><b>Verified:</b> <%= a.isVerified() ? "Yes" : "No" %></p>
        </div>
      </div>
    </div>
    <%
      }
    %>
  </div>
</div>

</body>
</html>
