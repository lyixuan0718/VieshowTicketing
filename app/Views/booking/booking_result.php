<?php 
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <?php
    $status = $_GET['status'] ?? 'fail';
    if ($status === 'success'):
    ?>
    <h2 style="color: green;">🎉 訂票成功！ (步驟 7/7)</h2>
    <p>您的訂單已成功建立並付款。訂單編號: [ORDER-20251114-XYZ]</p>
    <p>請至訂票紀錄查詢取票資訊。</p>
    <a href="../../Controllers/Booking_Controller.php?action=show_history" class="btn-action">查看訂票紀錄</a>
    <?php else: ?>
    <h2 style="color: red;">❌ 訂票失敗！</h2>
    <p>付款過程發生錯誤，請檢查您的付款資訊或重新嘗試。</p>
    <a href="../../Controllers/Booking_Controller.php?action=select_payment" class="btn-action">重新付款 (步驟 5)</a>
    <?php endif; ?>
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>