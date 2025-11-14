<?php
// Point_Model.php - 點數子系統 資料層 (MySQL)

// 假設這裡引入了蔡勇濱負責的資料庫連線檔案
// require_once('DB_Connection.php'); 

class Point_Model {
    
    // --- FR008: 點數兌換相關函式 ---
    
    /**
     * 從資料庫中取得會員目前的點數餘額。
     * 點數餘額通常存於 memberProfile 資料表。
     * @param int $memberID 會員 ID
     * @return int 會員點數餘額
     */
    public static function getMemberPoints($memberID) {
        // 在這裡加入實際的資料庫連線和查詢邏輯
        // 範例 SQL 語句: 
        // SELECT points FROM memberProfile WHERE memberID = :memberID
        
        // 預留：在蔡勇濱的資料庫完成前，先返回模擬資料
        return 0; 
    }

    /**
     * 扣除會員點數。這是兌換成功的關鍵步驟。
     * @param int $memberID 會員 ID
     * @param int $amount 欲扣除的點數數量
     * @return bool 扣除成功或失敗
     */
    public static function deductMemberPoints($memberID, $amount) {
        // 確保扣點是一個原子操作，防止競態條件 (Race Condition)
        // 範例 SQL 語句: 
        // UPDATE memberProfile SET points = points - :amount WHERE memberID = :memberID AND points >= :amount
        
        return true; // 模擬成功
    }
    
    /**
     * 寫入點數兌換紀錄 (交易紀錄)。
     * @param int $memberID 會員 ID
     * @param array $exchangeData 兌換的詳細內容 (商品ID, 數量, 花費點數等)
     * @return bool 寫入成功或失敗
     */
    public static function logExchange($memberID, $exchangeData) {
        // 假設有 pointLog 或 exchangeRecord 資料表
        // SQL: INSERT INTO pointLog (memberID, type, amount, item_details, transaction_date) VALUES (...)
        
        return true; // 模擬成功
    }

    /**
     * 取得可供兌換的商品清單及其所需點數。
     * @return array 商品清單陣列
     */
    public static function getExchangeItemsList() {
        // 假設有 exchangeItems 資料表
        // SQL: SELECT itemID, itemName, requiredPoints FROM exchangeItems WHERE isActive = 1
        
        // 預留：返回模擬商品清單給 Controller 和 View 使用
        return [
            ['id' => 1, 'name' => '豪華電影票兌換券', 'points' => 500],
            ['id' => 2, 'name' => '爆米花套餐兌換券', 'points' => 250],
            ['id' => 3, 'name' => '限定周邊好禮', 'points' => 1000],
        ];
    }
    
    // --- 擴展功能：點數紀錄查詢 ---
    
    /**
     * 查詢會員的歷史點數異動紀錄。
     * @param int $memberID 會員 ID
     * @return array 歷史紀錄清單
     */
    public static function getPointHistory($memberID) {
        // SQL: SELECT * FROM pointLog WHERE memberID = :memberID ORDER BY transaction_date DESC
        
        return []; // 模擬空紀錄
    }
}