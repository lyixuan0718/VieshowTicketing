<?php 
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>👤 會員中心首頁 (Hi, <?php echo htmlspecialchars($_SESSION['username'] ?? 'Guest'); ?>)</h2>
    
    <p>您目前的點數：<span id="memberPoints">850 點</span></p>
    
    <div class="member-actions" style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 10px; margin-top: 20px;">
        <a href="../general/home.php" class="btn-action">🏠 首頁</a>
        <a href="../booking/booking_flow_1.php" class="btn-action">🎫 立即訂票</a>
        <a href="../booking/booking_history.php" class="btn-action">🧾 訂票紀錄</a>
        <a href="../points/point_exchange.php" class="btn-action">🪙 點數兌換</a>
        <a href="topup.php" class="btn-action">💳 點數儲值</a>
        <a href="member_profile.php" class="btn-action">⚙️ 會員資料修改</a>
        
        <a href="../../Controllers/Auth_Controller.php?action=logout" class="btn-action btn-danger" style="grid-column: 1 / 3;">➡️ 登出</a>
    </div>
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>