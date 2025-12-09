<?php 
// 引入共享 View 路徑
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>🔒 忘記密碼</h2>
    <p>請輸入您註冊時使用的電子郵件，我們將發送密碼重設連結給您。</p>

    <form action="../../Controllers/Auth_Controller.php?action=forgot" method="POST">
        
        <label for="email">電子郵件 (Email):</label>
        <input type="email" id="email" name="email" required>
        
        <button type="submit" class="send-button">發送重設連結</button>
        
        <p><a href="login.php">返回登入頁面</a></p>
    </form>
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>