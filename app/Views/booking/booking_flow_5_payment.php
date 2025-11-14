<?php 
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>💳 訂票流程 - 步驟 5/7 (選擇付款方式)</h2>
    <p>請選擇您偏好的付款方式並詳閱注意事項。</p>
    
    <form action="../../Controllers/Booking_Controller.php?action=select_payment_post" method="POST">
        <h3>選擇方式</h3>
        <label><input type="radio" name="payment_method" value="credit_card" required> 信用卡/金融卡</label><br>
        <label><input type="radio" name="payment_method" value="line_pay"> Line Pay</label><br>
        
        <h3>注意事項 (L2 服務品質保證)</h3>
        <textarea readonly style="width: 100%; height: 100px; margin-top: 10px;">退票/退款須知：請在電影開場前 30 分鐘完成退票申請，逾時不予處理。退票將扣除手續費或依規定處理...</textarea>

        <button type="submit" class="next-step-button" style="margin-top: 20px;">下一步: 填寫付款資訊 (步驟 6)</button>
    </form>
    
    <p><a href="../../Controllers/Booking_Controller.php?action=confirm_order">← 返回上一步 (訂單確認)</a></p>
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>