<?php
// General_Controller.php - 首頁與電影資訊邏輯
session_start();

// 假設引入 Model
// require_once('../Models/General_Model.php');

$action = $_GET['action'] ?? 'home';

switch ($action) {
    case 'home':
        showHomePage();
        break;
    case 'movie':
        showMovieInfo();
        break;
    default:
        // 確保可以返回首頁
        header('Location: ../Views/general/home.php'); 
        exit();
}

function showHomePage() {
    // 這裡應呼叫 General_Model::getMovieList() 取得電影清單
    // 但在 Mocking 階段，只需要確保頁面能載入即可
    include('../Views/general/home.php');
}

function showMovieInfo() {
    $movieID = $_GET['movie_id'] ?? 1;
    // 這裡應呼叫 General_Model::getMovieDetail($movieID) 取得詳細資訊
    include('../Views/general/movie_info.php');
}
?>