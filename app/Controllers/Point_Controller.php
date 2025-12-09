<?php
// Point_Controller.php - 點數兌換邏輯控制器
session_start();

// 假設已引入 Model 檔案
// require_once('../Models/Point_Model.php');

$action = $_GET['action'] ?? '';

switch ($action) {
    case 'exchange':
        MainEarnPoint();
        break;
    case 'history':
        // 點數紀錄查詢邏輯
        // MainPointInquiry(); 
        break;
    default:
        // 導向點數兌換頁面
        header('Location: ../Views/points/point_exchange.php');
        exit();
}


/**
 * FR008: 處理點數兌換邏輯 (MainEarnPoint)
 */
function MainEarnPoint() {
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        header('Location: ../Views/points/point_exchange.php');
        exit();
    }
    
    // 1. 取得會員 ID (假設登入成功後，會員 ID 儲存在 Session 中)
    if (!isset($_SESSION['user_id'])) {
        $_SESSION['error'] = '請先登入後再進行兌換操作。';
        header('Location: ../Views/auth/login.php');
        exit();
    }
    
    $userID = $_SESSION['user_id'];
    $exchangeData = $_POST;
    $totalCost = 0;
    
    // 2. 計算總點數花費 (Controller 邏輯)
    // 這裡需要根據 POST 傳來的數量和預先設定的點數成本計算總數
    
    $itemCosts = [
        'item_500' => 500,  // 電影票
        'item_250' => 250,  // 爆米花
        'item_1000' => 1000 // 周邊好禮
    ];
    
    foreach ($itemCosts as $key => $cost) {
        $quantity = (int)($exchangeData[$key] ?? 0);
        $totalCost += ($quantity * $cost);
    }
    
    if ($totalCost <= 0) {
        $_SESSION['error'] = '請選擇要兌換的商品。';
        header('Location: ../Views/points/point_exchange.php');
        exit();
    }
    
    // --- 【Model 層模擬 (Mocking) 範例】 ---
    
    // 3. 模擬查詢會員當前點數
    // 在真實環境中： $currentPoints = Point_Model::getMemberPoints($userID);
    $mockCurrentPoints = 800; 

    // 4. 檢查點數是否足夠
    if ($totalCost > $mockCurrentPoints) {
        $_SESSION['error'] = "點數不足！您需要 {$totalCost} 點，但只有 {$mockCurrentPoints} 點。";
        header('Location: ../Views/points/point_exchange.php');
        exit();
    }
    
    // 5. 處理兌換 (扣點與寫入紀錄)
    // 在真實環境中： Point_Model::deductPoints($userID, $totalCost);
    // 在真實環境中： Point_Model::logExchange($userID, $exchangeData);
    
    $remainingPoints = $mockCurrentPoints - $totalCost;

    $_SESSION['success'] = "兌換成功！共花費 {$totalCost} 點。您剩餘 {$remainingPoints} 點。";
    header('Location: ../Views/points/point_exchange.php');
    exit();
}