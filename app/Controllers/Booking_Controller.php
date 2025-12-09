<?php
// Booking_Controller.php - 訂票與紀錄邏輯控制器

session_start(); // 確保 Session 啟動，用於檢查登入狀態

// 引入 Model 檔案 (雖然現在是 Mocking，但先預留空間)
// require_once('../Models/Booking_Model.php');
// require_once('../Models/General_Model.php'); 


// 根據 URL 參數判斷要執行哪個動作
$action = $_GET['action'] ?? 'start_booking';

switch ($action) {
    case 'start_booking':                   startBookingFlow();             break; // Step 1 GET (入口)
    case 'select_showtime_post':            handleSelectShowtimePost();     break; // Step 1 POST -> Step 2
    
    case 'select_tickets_and_food':         selectTicketsAndFood();         break; // Step 2 (GET/POST)
    case 'select_tickets_and_food_post':    handleTicketsAndFoodPost();     break; // Step 2 POST -> Step 3

    case 'select_seats':                    selectSeats();                  break; // Step 3 (GET)
    case 'select_seats_post':               handleSelectSeatsPost();        break; // Step 3 POST -> Step 4

    case 'confirm_order':                   showOrderConfirmation();        break; // Step 4 (GET/確認頁)

    case 'select_payment':                  selectPayment();                break; // Step 5 (GET/選付款方式)
    case 'select_payment_post':             handleSelectPaymentPost();      break; // Step 5 POST -> Step 6

    case 'process_payment_info':            processPaymentInfo();           break; // Step 6 (GET/付款人資訊)
    case 'process_payment_post':            handlePaymentPost();            break; // Step 6 POST -> Step 7

    case 'payment_result':                  showPaymentResult();            break; // Step 7 (結果頁)

    case 'show_history':                    showBookingHistory();           break; // 訂票紀錄
    case 'cancel_order':                    cancelOrder();                  break; // 取消訂單 (新增功能)
    case 'modify_order_flow':               modifyOrderFlow();              break; // 修改訂單 (新增功能)
    
    default:
        header('Location: Booking_Controller.php?action=start_booking'); 
        exit();
}

// -------------------------------------------------------------------
// 核心函式 - 流程控制
// -------------------------------------------------------------------

function checkLoginStatus() {
    if (!isset($_SESSION['user_id'])) {
        $_SESSION['error'] = '請先登入會員才能進行訂票操作。';
        header('Location: ../Views/auth/login.php'); 
        exit();
    }
}

// Step 1: 選地點/電影/時間/場次 (GET)
function startBookingFlow() {
    checkLoginStatus();
    include('../Views/booking/booking_flow_1.php');
}

// Step 1: POST -> Step 2
function handleSelectShowtimePost() {
    checkLoginStatus();
    // ... 處理 POST 資料 (showtimeID) ...
    // 導向 Step 2
    header('Location: Booking_Controller.php?action=select_tickets_and_food');
    exit();
}

// Step 2: 選票種/餐點 (GET)
function selectTicketsAndFood() {
    checkLoginStatus();
    include('../Views/booking/booking_flow_2.php');
}

// Step 2: POST -> Step 3
function handleTicketsAndFoodPost() {
    checkLoginStatus();
    // ... 處理 POST 資料 (票種/張數/餐點) ...
    // 導向 Step 3
    header('Location: Booking_Controller.php?action=select_seats');
    exit();
}

// Step 3: 選擇座位 (GET)
function selectSeats() {
    checkLoginStatus();
    include('../Views/booking/booking_flow_3.php');
}

// Step 3: POST -> Step 4
function handleSelectSeatsPost() {
    checkLoginStatus();
    // ... 處理 POST 資料 (座位) ...
    // 導向 Step 4
    header('Location: Booking_Controller.php?action=confirm_order');
    exit();
}

// Step 4: 訂單確認 (GET)
function showOrderConfirmation() {
    checkLoginStatus();
    // 匯集所有 Session 資料並計算最終價格
    include('../Views/booking/booking_flow_4_confirm.php');
}

// Step 5: 選擇付款方式 (GET)
function selectPayment() {
    checkLoginStatus();
    include('../Views/booking/booking_flow_5_payment.php');
}

// Step 5: POST -> Step 6
function handleSelectPaymentPost() {
    checkLoginStatus();
    // ... 處理 POST 資料 (付款方式) ...
    // 導向 Step 6
    header('Location: Booking_Controller.php?action=process_payment_info');
    exit();
}

// Step 6: 付款人資訊 & 確認付款 (GET)
function processPaymentInfo() {
    checkLoginStatus();
    include('../Views/booking/booking_flow_6_checkout.php');
}

// Step 6: POST -> Step 7
function handlePaymentPost() {
    checkLoginStatus();
    // ... 處理 POST 資料 (付款人資訊) ...
    // 執行金流 API 呼叫 (Payment Service Model)
    // 導向 Step 7
    header('Location: Booking_Controller.php?action=payment_result&status=success');
    exit();
}

// Step 7: 付款結果 (GET)
function showPaymentResult() {
    checkLoginStatus();
    // 載入結果頁，根據 status 參數顯示成功或失敗
    include('../Views/booking/booking_result.php');
}

// -------------------------------------------------------------------
// 【訂票紀錄與維護函式】
// -------------------------------------------------------------------

function showBookingHistory() {
    checkLoginStatus();
    include('../Views/booking/booking_history.php');
}

function cancelOrder() {
    checkLoginStatus();
    // 呼叫 Model 執行取消/退票邏輯 (需符合時間限制)
    $_SESSION['info'] = '訂單已成功取消/退票。';
    header('Location: Booking_Controller.php?action=show_history');
    exit();
}

function modifyOrderFlow() {
    checkLoginStatus();
    // 呼叫 Model 檢查是否允許修改
    $_SESSION['info'] = '模擬：進入修改訂單流程...';
    // 重新導向 Step 1 或 Step 2 (視規格書定義修改範圍)
    header('Location: Booking_Controller.php?action=start_booking');
    exit();
}
?>