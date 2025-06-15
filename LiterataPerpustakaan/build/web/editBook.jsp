<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.library.model.Book" %>
<%
    Book book = (Book) request.getAttribute("book");
    if (book == null) {
        response.sendRedirect("BookServlet?action=list");
        return;
    }
%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Buku - Literata Perpustakaan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="d-flex">
        <div class="sidebar">
          <div class="side-banner">
            <h2>Literata<br>Perpustakaan</h2>
          </div>
          <a href="dashboard.html" class="d-flex align-items-center">
            <img src="img/dashb.png" alt="Dashboard Icon" width="30" height="15">
            <span>Dashboard</span>
          </a>
          <a href="BookServlet?action=list" class="d-flex align-items-center">
            <img src="img/icon-db.png" alt="Daftar Buku Icon" width="30" height="15">
            <span>Daftar Buku</span>
          </a>
          <a href="BookServlet?action=new" class="d-flex align-items-center">
            <img src="img/ibb.png" alt="Input Buku Icon" width="30" height="15">
            <span>Input Buku Baru</span>
          </a>
          <a href="#" class="d-flex align-items-center">
            <img src="img/set.png" alt="Settings Icon" width="30" height="15">
            <span>Settings</span>
          </a>
        </div>
        <div class="edit-buku">
            <div class="container mt-4">
                <h2 class="form-title">Edit Buku</h2>
                <form action="BookServlet?action=update" method="post">
                    <input type="hidden" name="oldId" value="<%= book.getId() %>">
                    <div class="mb-3">
                        <label for="newId" class="form-label">Nomor Buku</label>
                        <input type="text" class="form-control" id="newId" name="newId" value="<%= book.getId() %>" required>
                    </div>
                    <div class="mb-3">
                        <label for="title" class="form-label">Judul Buku</label>
                        <input type="text" class="form-control" id="title" name="title" value="<%= book.getTitle() %>" required>
                    </div>
                    <div class="mb-3">
                        <label for="author" class="form-label">Penulis</label>
                        <input type="text" class="form-control" id="author" name="author" value="<%= book.getAuthor() %>" required>
                    </div>
                    <div class="mb-3">
                        <label for="year" class="form-label">Tahun Terbit</label>
                        <input type="number" class="form-control" id="year" name="year" value="<%= book.getYear() %>" required>
                    </div>
                    <button type="submit" class="btn btn-primary submit-btn">UPDATE</button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>