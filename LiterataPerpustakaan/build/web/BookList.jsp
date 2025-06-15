<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, com.library.model.Book" %>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Daftar Buku</title>
  <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-MxmG5ZV0Voucher…"
        crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
</head>
<body>
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
  <div class="daftar-buku">
    <div class="d-flex justify-content-between align-items-center mb-4">
      <h2 class="page-title">Daftar Buku</h2>
      <button class="btn-add" onclick="location.href='BookServlet?action=new'">
      Tambah Buku
      </button>
    </div>
    <div class="table-responsive">
      <table class="table table-hover mb-0">
        <thead>
          <tr>
            <th>Nomor Buku</th>
            <th>Judul Buku</th>
            <th>Penulis</th>
            <th>Tahun Terbit</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <%
            List<Book> listBook = (List<Book>) request.getAttribute("listBook");
            if (listBook != null) {
              for (Book book : listBook) {
          %>
          <tr>
            <td><%= book.getId() %></td>
            <td><%= book.getTitle() %></td>
            <td><%= book.getAuthor() %></td>
            <td><%= book.getYear() %></td>
            <td>
              <a href="BookServlet?action=edit&id=<%=book.getId()%>">
                <img src="img/pencil.png" alt="Edit Icon" class="icon-style"></a>
              <a href="BookServlet?action=delete&id=<%=book.getId()%>"
                 onclick="return confirm('Yakin hapus buku ini?');">
                 <img src="img/bin.png" alt="Hapus Icon" class="icon-style">
              </a>
            </td>          
          </tr>
          <%
              }
            }
          %>
        </tbody>
      </table>
    </div>
  </div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
          integrity="sha384-SomeHash…" crossorigin="anonymous"></script>
</body>
</html>