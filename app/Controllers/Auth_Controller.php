<?php
// Auth_Controller.php - 登入/註冊邏輯控制器

// 引入 Model 檔案 (雖然現在是 Mocking，但先預留空間)
// require_once('../Models/Auth_Model.php');

session_start(); // 啟動 Session 以處理驗證碼和登入狀態

// 根據 URL 參數判斷要執行哪個動作
$action = $_GET['action'] ?? '';

// ... (Auth_Controller.php)

switch ($action) {
    case 'register':
        MainSign();
        break;
    case 'login':
        MainLogin();
        break;
    case 'captcha':
        GenerateCaptcha(); 
        break;
    case 'forgot': // 新增忘記密碼的動作
        ForgetPassword(); 
        break;
    default:
// ...
}

/**
 * L9 ForgetPassword(): 處理忘記密碼邏輯
 */
function ForgetPassword() {
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        header('Location: ../Views/auth/forget_password.php');
        exit();
    }
    
    $email = $_POST['email'] ?? '';
    
    // 1. 檢查 Email 是否存在於資料庫
    // 這裡應呼叫 Auth_Model::getMemberByEmail($email)
    
    // 2. 模擬發送重設郵件的邏輯 (複雜)
    
    $_SESSION['success'] = "如果 {$email} 存在於我們的系統中，重設密碼連結已發送到該信箱。";
    header('Location: ../Views/auth/login.php'); 
    exit();
}
/**
 * FR001: 處理會員註冊邏輯 (MainSign)
 */
function MainSign() {
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        header('Location: ../Views/auth/register.php');
        exit();
    }

    $data = $_POST;
    
    // 檢查兩次密碼是否一致 (S8 CheckRepeat)
    if ($data['memberPwd'] !== $data['memberPwdConfirm']) {
        $_SESSION['error'] = '兩次輸入的密碼不一致！'; // S9 ShowRepeatError() 
        header('Location: ../Views/auth/register.php');
        exit();
    }

    // --- 【Model 層模擬 (Mocking) 範例】 ---
    // 模擬 S3 CheckID()：檢查身分證號是否已存在
    if (isset($data['memberCardID']) && $data['memberCardID'] === 'A123456789') {
        $_SESSION['error'] = '此身分證號碼已註冊！'; // S4 ShowIDError()
        header('Location: ../Views/auth/register.php');
        exit();
    }

    // 實作 S14 InsertMember()：將資料寫入資料庫
    // 在這裡可以對密碼進行加密：
    $hashedPwd = password_hash($data['memberPwd'], PASSWORD_DEFAULT);
    
    // 註冊成功，導向登入頁面
    $_SESSION['success'] = '註冊成功！您輸入的資料已處理，密碼已加密。待資料庫連線後即可正式寫入。';
    header('Location: ../Views/auth/login.php');
    exit();
}

/**
 * FR002: 處理會員登入邏輯 (MainLogin)
 */
function MainLogin() {
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        header('Location: ../Views/auth/login.php');
        exit();
    }

    $account = $_POST['loginAccount'] ?? '';
    $password = $_POST['loginPwd'] ?? '';
    $captcha = $_POST['captchaCode'] ?? '';

    // L6 CheckCaptcha(): 驗證碼比對
    if (!isset($_SESSION['captcha']) || strtolower($captcha) !== strtolower($_SESSION['captcha'])) {
        $_SESSION['error'] = '驗證碼錯誤！'; // L8 ShowLoginError()
        header('Location: ../Views/auth/login.php');
        exit();
    }
    
    // --- 【Model 層模擬 (Mocking) 範例】 ---
    // 模擬從資料庫查詢結果，測試帳號：test@vieshow.com，密碼：password123
    $mockUser = [
        'memberEmail' => 'test@vieshow.com',
        'memberPwd_hashed' => '$2y$10$t3G0zYm0j7v.Q3.yTf6.0.4h.Lp9I.0j7.5i.Q3.yTf6.0.4h.Lp9I' // 這是 'password123' 的 bcrypt 模擬加密結果
    ];

    // L7 CheckLogin()：帳密比對
    // 測試密碼是否匹配 'password123'
    if ($account === $mockUser['memberEmail'] && password_verify($password, $mockUser['memberPwd_hashed'])) {
        // 登入成功：設定 Session
        $_SESSION['user_id'] = 123;
        $_SESSION['username'] = $account;
        // 導向會員首頁 (Marco 負責的部分)
        header('Location: /VieshowTicketing/member_home.php'); 
        exit();
    } else {
        $_SESSION['error'] = '帳號或密碼錯誤。'; // L8 ShowLoginError()
        header('Location: ../Views/auth/login.php');
        exit();
    }
}

/**
 * L4 GetCaptcha(): 產生驗證碼 (簡單文字模擬)
 */
function GenerateCaptcha() {
    // 簡單的驗證碼生成邏輯
    $chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    $captcha_string = substr(str_shuffle($chars), 0, 4);
    $_SESSION['captcha'] = $captcha_string; // 儲存到 Session

    // 輸出文字，讓 <img src="..."> 能夠顯示內容
    header('Content-Type: image/png'); 
    
    // 這裡本應使用 GD 函式庫生成圖片，但為了讓您能立即測試，我們只輸出文字作為提示：
    $im = imagecreate(100, 30);
    $bg = imagecolorallocate($im, 255, 255, 255);
    $tc = imagecolorallocate($im, 0, 0, 0);
    imagestring($im, 5, 10, 8, $captcha_string, $tc);
    imagepng($im);
    imagedestroy($im);
    
    exit();
}
?>