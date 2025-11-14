<?php 
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>🎫 訂票選位 - 步驟 3/7 (選擇座位)</h2>
    
    <?php
    $movie = "阿凡達 3: 最終戰役";
    $showtime = "2025/12/24 (三) 19:30";
    ?>
    
    <h3>電影: <?php echo htmlspecialchars($movie); ?></h3>
    <p>場次: <?php echo htmlspecialchars($showtime); ?></p>
    
    <div class="seat-map" style="border: 1px solid #ccc; padding: 20px; text-align: center; margin: 20px 0;">
        <p>--- 影廳螢幕 ---</p>
        <div class="rows" style="display: inline-block;">
            <p>A排: <span style="color: blue;">[A1]</span> <span style="color: green;">[A2]</span> <span style="color: red;">[A3]</span></p>
            <p>B排: <span style="color: green;">[B1]</span> <span style="color: green;">[B2]</span> <span style="color: green;">[B3]</span></p>
        </div>
        <p style="margin-top: 15px;">已選座位: <span id="selectedSeats">A1</span></p>
    </div>

    <form action="../../Controllers/Booking_Controller.php?action=select_seats_post" method="POST">
        <input type="hidden" name="selected_seats" id="submitSeats" value="A1">
        
        <p>已選票種與張數：[一般票 x 1]</p>
        <p>已選餐點：[爆米花套餐 x 1]</p>
        
        <button type="submit" class="next-step-button">下一步: 訂單確認 (步驟 4)</button>
    </form>
    
    <p style="margin-top: 20px;">
        <a href="../../Controllers/Booking_Controller.php?action=select_tickets_and_food">← 返回上一步 (選擇票種與餐點)</a>
    </p>
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>