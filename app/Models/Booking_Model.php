<?php
class Booking_Model {
    // 取得場次的可用座位
    public static function getAvailableSeats($showtimeID) {
        // SQL: SELECT seatID, status FROM seats WHERE showtimeID = :id
        return []; // 返回座位狀態陣列
    }

    // 建立訂票訂單
    public static function createBookingOrder($data) {
        // SQL: INSERT INTO bookingOrders (...) VALUES (...)
        // SQL: UPDATE seats SET status = 'SOLD' WHERE seatID IN (...)
        return 'ORDER_56789'; // 返回訂單編號
    }

    // 取得會員訂票紀錄
    public static function getBookingHistory($memberID) {
        // SQL: SELECT * FROM bookingOrders WHERE memberID = :id ORDER BY date DESC
        return []; // 返回訂單紀錄陣列
    }
}
?>