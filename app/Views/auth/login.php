<?php 
// 程式碼開始：

// 1. 定義專案根目錄 (ROOT_PATH)
// __DIR__ 指向 C:\xampp\htdocs\VieshowTicketing\app\Views\auth
// dirname(__DIR__, 3) 會從 'auth' -> 'Views' -> 'app' 往上三層到 VieshowTicketing 專案根目錄
// 注意：如果您的程式碼結構與我前述建議的 MVC 架構有微小差異，這個數字可能需要調整。
// 為了確保您能運行，我們使用最保守的方式：
// 從當前檔案往上兩層 (到 VieshowTicketing/app/)，然後再往上到專案根目錄。

// 為了簡化，我們先定義一個從當前檔案到 Views/shared 的絕對路徑：
// 當前路徑: .../app/Views/auth/
// 目標路徑: .../app/Views/shared/
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;

// 引入 header (使用 $shared_views_path 絕對路徑)
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>會員登入</h2>
    <form id="loginForm" action="../../Controllers/Auth_Controller.php?action=login" method="POST">

        <label for="loginAccount">帳號/電子郵件:</label>
        <input type="text" id="loginAccount" name="loginAccount" required>

        <label for="loginPwd">密碼:</label>
        <input type="password" id="loginPwd" name="loginPwd" required>

        <div class="forgot-password-link">
            <a href="forget_password.php">忘記密碼?</a>
        </div>

        <label for="captchaCode">驗證碼:</label>
        <div class="captcha-group">
            <input type="text" id="captchaCode" name="captchaCode" required maxlength="4" style="width: 50%;">
            <img src="../../Controllers/Auth_Controller.php?action=captcha" alt="驗證碼" id="captchaImage" style="vertical-align: middle;">
            <button type="button" id="refreshCaptcha">↻</button> 
        </div>

        <button type="submit" class="login-button">Log In</button>

        <p>還沒有帳號？ <a href="register.php">立即註冊</a></p>
    </form>
</div>

<script>
document.getElementById('refreshCaptcha').addEventListener('click', function() {
    // 透過改變 src 參數 (例如加上時間戳) 強制瀏覽器重新載入圖片
    const captchaImage = document.getElementById('captchaImage');
    captchaImage.src = '../../Controllers/Auth_Controller.php?action=captcha&t=' + new Date().getTime();
});
</script>

<?php 
// 引入 footer (使用 $shared_views_path 絕對路徑)
include($shared_views_path . 'footer.php'); 
?>