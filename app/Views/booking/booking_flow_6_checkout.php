<?php 
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>🧾 訂票流程 - 步驟 6/7 (填寫付款資訊)</h2>
    <p>請輸入您的付款資訊，並最終確認訂單。</p>
    
    <form action="../../Controllers/Booking_Controller.php?action=process_payment_post" method="POST">
        <h3>付款人資料 (L1-1)</h3>
        <label for="name">持卡人姓名:</label>
        <input type="text" id="name" name="card_name" required>
        
        <label for="card">信用卡號:</label>
        <input type="text" id="card" name="card_number" required>
        
        <h3>最終金額: NT$ 450</h3>
        
        <button type="submit" class="pay-now-button" style="background-color: green;">確認付款並送出訂單</button>
    </form>
    
    <p><a href="../../Controllers/Booking_Controller.php?action=select_payment">← 返回上一步 (選擇付款方式)</a></p>
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>