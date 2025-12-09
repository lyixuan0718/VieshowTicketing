<?php 
// 修正後的絕對路徑引入方式
$shared_views_path = dirname(__DIR__, 2) . DIRECTORY_SEPARATOR . 'Views' . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>🪙 會員點數兌換</h2>
    
    <div class="point-info">
        <?php 
            // 假設從 Session 或 Controller 傳來點數資訊
            $currentPoints = 850; 
            echo "您目前的 iShow 點數：<strong>" . htmlspecialchars($currentPoints) . " 點</strong>";
        ?>
    </div>
    
    <hr>
    
    <h3>可兌換項目清單</h3>
    
    <form action="../../Controllers/Point_Controller.php?action=exchange" method="POST">
        
        <div class="exchange-item">
            <h4>豪華電影票兌換券</h4>
            <p>所需點數: 500 點</p>
            <input type="number" name="item_500" min="0" max="10" value="0" style="width: 50px;"> 
            <label>張</label>
        </div>

        <div class="exchange-item">
            <h4>爆米花套餐兌換券</h4>
            <p>所需點數: 250 點</p>
            <input type="number" name="item_250" min="0" max="10" value="0" style="width: 50px;">
            <label>份</label>
        </div>

        <div class="exchange-item">
            <h4>限定周邊好禮</h4>
            <p>所需點數: 1000 點</p>
            <input type="number" name="item_1000" min="0" max="5" value="0" style="width: 50px;">
            <label>個</label>
        </div>
        
        <button type="submit" class="exchange-button">確認兌換</button>
    </form>

    <div style="margin-top: 20px;">
        <a href="point_history.php" style="padding: 8px 15px; background-color: #5cb85c; color: white; border-radius: 5px; text-decoration: none; display: inline-block;">
            📜 查看點數交易紀錄
        </a>
    </div>

    <p style="margin-top: 20px;"><a href="../member/member_home.php">返回會員中心首頁</a></p>
</div>


<?php 
include($shared_views_path . 'footer.php'); 
?>