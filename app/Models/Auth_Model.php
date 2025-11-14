<?php
// Auth_Model.php - 資料層 (MySQL) 函式框架

// 假設已引入 DB_Connection.php 

class Auth_Model {
    // FR001: 註冊相關函式
    
    // S3 CheckID() - 檢查身分證號是否重複
    public static function checkMemberCardIDExists($cardID) {
        // SQL: SELECT COUNT(*) FROM memberProfile WHERE memberCardID = ?
        // return true 或 false;
    }
    
    // S14 InsertMember() - 新增會員資料
    public static function insertNewMember($data) {
        // SQL: INSERT INTO memberProfile (...) VALUES (...)
        // return 成功/失敗
    }
    
    // FR002: 登入相關函式
    
    // L7 CheckLogin() - 檢查帳號和密碼是否正確
    public static function getMemberByEmail($email) {
        // SQL: SELECT memberPwd, memberID, ... FROM memberProfile WHERE memberEmail = ?
        // return 該會員的資料陣列 (含加密密碼) 或 null;
    }
    
    // FR008: 點數相關函式 (可以放在 Auth_Model 或 Point_Model)

    // 取得會員點數餘額
    public static function getMemberPoints($memberID) {
        // SQL: SELECT points FROM memberProfile WHERE memberID = ?
        // return 點數;
    }

    // 扣除點數
    public static function deductMemberPoints($memberID, $amount) {
        // SQL: UPDATE memberProfile SET points = points - ? WHERE memberID = ?
        // return 成功/失敗;
    }
}