<?php 
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>✅ 訂票流程 - 步驟 4/7 (訂單確認)</h2>
    <p>請仔細核對您的訂單內容，訂單建立後即無法修改座位。</p>
    
    <div class="order-summary" style="border: 1px solid #000; padding: 20px;">
        <h3>訂單詳情</h3>
        <p><strong>地點:</strong> [台北信義]</p>
        <p><strong>電影:</strong> [阿凡達 3]</p>
        <p><strong>場次:</strong> [2025/12/24 19:30]</p>
        <p><strong>座位:</strong> [A1, A2]</p>
        <hr>
        <h4>電影票:</h4>
        <p>一般票 x 1 張 = NT$300</p>
        <p>學生票 x 0 張 = NT$0</p>
        <h4>餐點:</h4>
        <p>爆米花套餐 x 1 份 = NT$150</p>
        <hr>
        <h3>應付總金額: NT$ 450</h3>
    </div>

    <div style="margin-top: 20px;">
        <a href="../../Controllers/Booking_Controller.php?action=select_payment" class="next-step-button" style="display: inline-block;">下一步: 選擇付款方式 (步驟 5)</a>
    </div>

    <p><a href="../../Controllers/Booking_Controller.php?action=select_seats">← 返回上一步 (選擇座位)</a></p>
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>