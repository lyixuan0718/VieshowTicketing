<?php 
// 引入 header
$shared_views_path = dirname(__DIR__, 2) . DIRECTORY_SEPARATOR . 'Views' . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>🧾 歷史訂票紀錄</h2>
    
    <?php 
        // 模擬歷史訂單資料 (此資料應由 Controller 傳遞)
        $history = [
            ['id' => '20251101A01', 'movie' => '阿凡達 3', 'date' => '2025/11/01', 'total' => 600, 'status' => '已完成', 'can_modify' => true],
            ['id' => '20251015B02', 'movie' => '不可能的任務 8', 'date' => '2025/10/15', 'total' => 300, 'status' => '已完成', 'can_modify' => false],
        ];

        if (empty($history)) {
            echo '<p>您目前沒有任何訂票紀錄。</p>';
        } else {
            // 【修正：增加 max-width 和 table-layout 樣式】
            echo '<table border="1" style="width: 100%; border-collapse: collapse; margin-top: 20px; table-layout: fixed;">';
            
            // 完整的表頭
            echo '<thead><tr>';
            echo '<th style="padding: 10px; width: 15%;">訂單編號</th>';
            echo '<th style="padding: 10px; width: 20%;">電影名稱</th>';
            echo '<th style="padding: 10px; width: 15%;">場次日期</th>';
            echo '<th style="padding: 10px; width: 10%;">總金額</th>';
            echo '<th style="padding: 10px; width: 10%;">狀態</th>';
            echo '<th style="padding: 10px; width: 30%;">操作</th>'; // 為操作欄位分配較大寬度
            echo '</tr></thead><tbody>'; 
            
            foreach ($history as $order) {
                echo '<tr>';
                
                // 訂單資料欄位 (所有 td 加上 padding 和 word-wrap)
                echo '<td style="padding: 10px; word-wrap: break-word;">' . htmlspecialchars($order['id']) . '</td>';
                echo '<td style="padding: 10px; word-wrap: break-word;">' . htmlspecialchars($order['movie']) . '</td>';
                echo '<td style="padding: 10px; word-wrap: break-word;">' . htmlspecialchars($order['date']) . '</td>';
                echo '<td style="padding: 10px; word-wrap: break-word;">NT$' . number_format($order['total']) . '</td>';
                echo '<td style="padding: 10px; word-wrap: break-word;">' . htmlspecialchars($order['status']) . '</td>';
                
                // 操作欄位 (強制內容換行)
                echo '<td style="padding: 10px; word-break: break-all;">';
                if ($order['can_modify']) {
                    // 使用 <br> 強制換行，確保不會撐破容器
                    echo '<a href="../../Controllers/Booking_Controller.php?action=cancel_order&order_id=' . $order['id'] . '">取消(退票)</a> <br> ';
                    echo '<a href="../../Controllers/Booking_Controller.php?action=modify_order_flow&order_id=' . $order['id'] . '">修改訂單</a>';
                } else {
                    echo '-';
                }
                echo '</td>';
                echo '</tr>';
            }
            echo '</tbody></table>';
        }
    ?>
    
    <p style="margin-top: 20px;"><a href="../member/member_home.php">返回會員中心</a></p>
</div>

<?php 
// 引入 footer
include($shared_views_path . 'footer.php'); 
?>