<?php 
// 程式碼開始：

// 1. 定義共享 View 路徑，使用 dirname(__DIR__) 來計算絕對路徑
// 當前路徑: .../app/Views/auth/
// 目標路徑: .../app/Views/shared/
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;

// 引入 header (使用 $shared_views_path 絕對路徑)
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>會員註冊</h2>
    <form id="registerForm" action="../../Controllers/Auth_Controller.php?action=register" method="POST">
        
        <label for="memberCardID">身分證字號:</label>
        <input type="text" id="memberCardID" name="memberCardID" required maxlength="10">
        <span class="error" id="idError"></span>

        <label for="memberName">姓名:</label>
        <input type="text" id="memberName" name="memberName" required>
        
        <label for="memberBirth">生日:</label>
        <input type="date" id="memberBirth" name="memberBirth" required>
        
        <label for="memberPhone">行動電話:</label>
        <input type="tel" id="memberPhone" name="memberPhone" required pattern="09\d{8}">

        <label for="memberEmail">電子郵件 (Email):</label>
        <input type="email" id="memberEmail" name="memberEmail" required>
        <span class="error" id="emailError"></span>

        <label for="memberPwd">密碼 (至少8碼):</label>
        <input type="password" id="memberPwd" name="memberPwd" required minlength="8">
        <span class="error" id="pwdError"></span>

        <label for="memberPwdConfirm">確認密碼:</label>
        <input type="password" id="memberPwdConfirm" name="memberPwdConfirm" required>
        <span class="error" id="pwdMatchError"></span>
        
        <button type="submit">註冊</button>
        <p>已有帳號？ <a href="login.php">立即登入</a></p>
    </form>
</div>

<?php 
// 引入 footer (使用 $shared_views_path 絕對路徑)
include($shared_views_path . 'footer.php'); 
?>

<script src="../../public/assets/js/auth_validation.js"></script>