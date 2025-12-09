<?php 
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 

// 【修正！】在 View 檔案中定義 $isLoggedIn 變數，避免 Undefined variable 警告。
// 實際的程式碼應從 Controller 傳遞此值。
$isLoggedIn = isset($_SESSION['user_id']); 
?>

<div class="container">
    <?php
    $movieID = $_GET['movie_id'] ?? '1';
    $movieName = "電影名稱 {$movieID}";
    ?>
    <h2>《<?php echo htmlspecialchars($movieName); ?>》電影介紹</h2>
    
    <div class="movie-details">
        <p><strong>片長:</strong> 120 分鐘</p>
        <p><strong>上映日期:</strong> 2025-12-01</p>
        <p><strong>劇情簡介:</strong> (此處為電影詳細介紹內容，來自 General_Controller 呼叫 Model 取得。)</p>
    </div>
    
    <div style="margin-bottom: 20px; border: 1px dashed #ddd; padding: 15px;">
        <h4>您的評分 (需登入)</h4>
        
        <?php 
        if ($isLoggedIn) { 
            // 已登入：顯示評分表單
            echo '<form action="../../Controllers/General_Controller.php?action=rate_movie" method="POST">';
            echo '    <input type="hidden" name="movie_id" value="' . $movieID . '">';
            echo '    <select name="rating" style="width: auto; padding: 5px;">';
            echo '        <option value="5">5 顆星 (極佳)</option>';
            echo '        <option value="4">4 顆星</option>';
            echo '        <option value="3">3 顆星</option>';
            echo '        <option value="2">2 顆星</option>';
            echo '        <option value="1">1 顆星 (極差)</option>';
            echo '    </select>';
            echo '    <button type="submit" class="submit-rating-button">送出評分</button>';
            echo '</form>';
        } else {
            // 未登入：顯示登入按鈕
            echo '<p>您尚未登入，請先登入後才能為電影評分。</p>';
            echo '<a href="../auth/login.php" class="btn-action" style="background-color: #f7a83d; color: #333; padding: 5px 10px; display: inline-block; text-decoration: none; border-radius: 5px;">👤 前往登入</a>';
        }
        ?>
    </div>
    
    <a href="../../Controllers/Booking_Controller.php?action=start_booking">立即訂票</a>
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>