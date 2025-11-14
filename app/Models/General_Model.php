<?php
class General_Model {
    // 取得所有正在熱映的電影清單
    public static function getMovieList() {
        // SQL: SELECT movieID, movieName, rating FROM movies WHERE status = 'ON_SHOW'
        return []; // 返回電影陣列
    }

    // 取得單一電影的詳細資訊
    public static function getMovieDetail($movieID) {
        // SQL: SELECT * FROM movies WHERE movieID = :id
        return []; // 返回電影詳細資料
    }
}
?>