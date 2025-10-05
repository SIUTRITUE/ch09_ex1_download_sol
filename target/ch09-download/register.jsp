<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>J97 Music - Đăng ký tài khoản</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<div class="container">
    <h1>🎵 Đăng ký J97 Music</h1>

    <div class="music-player">
        <div class="artist-name">J97</div>
        <p style="font-size: 1.2rem;">Đăng ký để tải nhạc miễn phí</p>
    </div>

    <p style="text-align: center; margin-bottom: 2rem; color: #4a5568;">
        Để tải nhạc J97, vui lòng nhập thông tin đăng ký bên dưới và nhấn <strong>Đăng ký</strong>.
    </p>

    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <form action="download" method="post">
        <input type="hidden" name="action" value="registerUser">        
        
        <div class="form-group">
            <label for="email">📧 Email:</label>
            <input type="email" id="email" name="email" value="<c:out value='${user.email}'/>" placeholder="Nhập email của bạn..." required>
        </div>
        
        <div class="form-group">
            <label for="firstName">👤 Họ:</label>
            <input type="text" id="firstName" name="firstName" value="<c:out value='${user.firstName}'/>" placeholder="Nhập họ của bạn..." required>
        </div>
        
        <div class="form-group">
            <label for="lastName">👤 Tên:</label>
            <input type="text" id="lastName" name="lastName" value="<c:out value='${user.lastName}'/>" placeholder="Nhập tên của bạn..." required>
        </div>
        
        <div class="text-center">
            <input type="submit" value="🎶 Đăng ký ngay">
        </div>
    </form>

    <div style="margin-top: 2rem; text-align: center;">
        <a href="index.jsp">🏠 Quay lại trang chủ</a>
    </div>
</div>

</body>
</html>