<?php 
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>🎟️ 訂票流程 - 步驟 1/7 (選電影/場次/地點)</h2>
    
    <form action="../../Controllers/Booking_Controller.php?action=select_showtime" method="POST">
        
        <label for="cinema_location">影城地點:</label>
        <select id="cinema_location" name="cinema_location" required style="width: 100%; padding: 8px; margin-bottom: 15px;">
            <option value="taipei">台北信義</option>
            <option value="taoyuan">桃園台茂</option>
            </select>
        
        <label for="movie_select">選擇電影:</label>
        <select id="movie_select" name="movie_id" required style="width: 100%; padding: 8px; margin-bottom: 15px;">
            <option value="1">阿凡達 3: 最終戰役</option>
            <option value="2">不可能的任務 8</option>
            </select>
        
        <label for="showtime_select">選擇場次 (日期/時間/影廳):</label>
        <select id="showtime_select" name="showtime_id" required style="width: 100%; padding: 8px; margin-bottom: 20px;">
            <option value="101">2025/12/24(三) 19:30 - 巨幕廳</option>
            <option value="102">2025/12/24(三) 22:00 - 標準廳</option>
            </select>
        
        <button type="submit" class="next-step-button">下一步: 選擇票種與餐點 (步驟 2)</button>
    </form>
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>