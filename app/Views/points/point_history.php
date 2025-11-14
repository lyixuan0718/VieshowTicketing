<?php 
// 引入共享 View 路徑
$shared_views_path = dirname(__DIR__, 2) . DIRECTORY_SEPARATOR . 'Views' . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>📜 點數交易紀錄</h2>

    <p>當前剩餘點數: <strong>1,250 點</strong></p>

    <?php 
        // 這裡會從 Point_Controller 傳入點數歷史紀錄資料
        // $history = Point_Controller::getPointHistoryList(); 
        
        // 模擬歷史紀錄
        $history = [
            ['date' => '2025-11-01', 'description' => '電影票兌換', 'points_change' => -500],
            ['date' => '2025-10-25', 'description' => '會員儲值贈點', 'points_change' => +100],
            ['date' => '2025-10-20', 'description' => '爆米花兌換', 'points_change' => -250],
        ];

        if (empty($history)) {
            echo '<p>目前沒有點數交易紀錄。</p>';
        } else {
            echo '<table>';
            echo '<tr><th>日期</th><th>變更說明</th><th>點數異動</th></tr>';
            foreach ($history as $record) {
                $style = ($record['points_change'] > 0) ? 'color: green;' : 'color: red;';
                echo '<tr>';
                echo '<td>' . htmlspecialchars($record['date']) . '</td>';
                echo '<td>' . htmlspecialchars($record['description']) . '</td>';
                echo '<td style="' . $style . '">' . (($record['points_change'] > 0) ? '+' : '') . htmlspecialchars($record['points_change']) . '</td>';
                echo '</tr>';
            }
            echo '</table>';
        }
    ?>
    
    <p style="margin-top: 20px;">
        <a href="point_exchange.php">← 返回點數兌換頁面</a> | 
        <a href="../member/member_home.php">返回會員中心首頁</a>
    </p>
    
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>