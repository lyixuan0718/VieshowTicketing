<?php
class Member_Model {
    // 取得會員所有資料
    public static function getMemberProfile($memberID) {
        // SQL: SELECT * FROM memberProfile WHERE memberID = :id
        return [];
    }
    
    // 更新會員資料
    public static function updateMemberProfile($memberID, $data) {
        // SQL: UPDATE memberProfile SET memberName = :name, ... WHERE memberID = :id
        return true;
    }

    // 儲值：建立訂單
    public static function createTopupOrder($data) {
        // SQL: INSERT INTO topupOrders (memberID, amount, status) VALUES (...)
        return 'ORDER_12345'; // 返回訂單編號
    }
}
?>