<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>J97 Music Download</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<div class="container">
    <h1>J97 Music Collection</h1>
    
    <div class="music-player">
        <div class="artist-name">J97</div>
        <p style="font-size: 1.2rem; margin-bottom: 2rem;">Ca sĩ nổi tiếng với những bản hit đình đám</p>
    </div>

    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <c:if test="${cookie.firstNameCookie.value != null}">
        <div class="success-message">
            <p>Chào mừng trở lại, <c:out value='${cookie.firstNameCookie.value}'/></p>
        </div>
    </c:if>

    <h2>Danh sách bài hát</h2>
    <div class="song-list">
        <div class="song-item">
            <a href="download?action=checkUser&amp;productCode=8601">
                <strong>🎵 Hồng Nhan</strong> - J97<br>
                <small>Bài hát ballad đầy cảm xúc về tình yêu và nỗi nhớ</small>
            </a>
        </div>

        <div class="song-item">
            <a href="download?action=checkUser&amp;productCode=pf01">
                <strong>🎵 Bạc Phận</strong> - J97<br>
                <small>Câu chuyện về những tháng ngày khó khăn của cuộc đời</small>
            </a>
        </div>

        <div class="song-item">
            <a href="download?action=checkUser&amp;productCode=pf02">
                <strong>🎵 Sóng Gió</strong> - J97<br>
                <small>Bản hit về những thử thách và vượt qua khó khăn</small>
            </a>
        </div>

        <div class="song-item">
            <a href="download?action=checkUser&amp;productCode=jr01">
                <strong>🎵 Bonus Track</strong> - J97<br>
                <small>Bài hát đặc biệt dành cho fan</small>
            </a>
        </div>
    </div>
</div>

</body>
</html>