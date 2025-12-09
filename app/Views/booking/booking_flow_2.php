<?php 
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>🎫 訂票流程 - 步驟 2/7 (選票種與餐點)</h2>
    <p>您已選擇 [場次資訊，來自 Session]。</p>
    
    <form action="../../Controllers/Booking_Controller.php?action=select_tickets_and_food_post" method="POST">
        
        <h3>1. 選擇電影票</h3>
        <label>一般票:</label>
        <input type="number" name="ticket_general" min="0" max="10" value="1" style="width: 60px;"> 張 (NT$300/張)
        <br>
        <label>學生票:</label>
        <input type="number" name="ticket_student" min="0" max="10" value="0" style="width: 60px;"> 張 (NT$250/張)
        
        <h3>2. 選擇餐點</h3>
        <label>
            <input type="checkbox" name="food_popcorn" value="1"> 爆米花套餐 (NT$150)
        </label><br>
        <label>
            <input type="checkbox" name="food_drink" value="1"> 飲料單點 (NT$50)
        </label>
        
        <div style="margin-top: 20px;">
            <button type="submit" class="next-step-button">下一步: 選擇座位 (步驟 3)</button>
        </div>
    </form>

    <p><a href="../../Controllers/Booking_Controller.php?action=start_booking">← 返回上一步 (選電影/場次/地點)</a></p>
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>