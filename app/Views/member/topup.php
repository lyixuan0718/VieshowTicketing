<?php 
// 引入 header
$shared_views_path = dirname(__DIR__, 2) . DIRECTORY_SEPARATOR . 'Views' . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>💳 點數儲值</h2>
    <p>選擇您的儲值金額，即可獲得 iShow 點數。</p>

    <form action="../../Controllers/Member_Controller.php?action=topup_process" method="POST">
        
        <h3>選擇儲值方案</h3>
        
        <div class="topup-options">
            <label>
                <input type="radio" name="amount" value="500" required> 儲值 500 元 (獲得 500 點)
            </label><br>
            <label>
                <input type="radio" name="amount" value="1000"> 儲值 1000 元 (獲得 1100 點, 加贈 100 點!)
            </label><br>
            <label>
                <input type="radio" name="amount" value="2000"> 儲值 2000 元 (獲得 2300 點, 加贈 300 點!)
            </label>
        </div>

        <label for="paymentMethod" style="margin-top: 20px;">付款方式:</label>
        <select id="paymentMethod" name="paymentMethod" required>
            <option value="">請選擇</option>
            <option value="credit">信用卡 / 金融卡</option>
            <option value="linepay">Line Pay</option>
            <option value="atm">ATM 轉帳</option>
        </select>

        <button type="submit" class="pay-button">確認並前往付款</button>
    </form>
    
    <p><a href="member_home.php">返回會員中心</a></p>
</div>

<?php 
// 引入 footer
include($shared_views_path . 'footer.php'); 
?>