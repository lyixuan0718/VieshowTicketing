<?php 
$shared_views_path = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>🎬 Vieshow 線上訂票系統</h2>
    <p>歡迎！最新的熱門電影正在熱映中。</p>
    
    <div style="margin-bottom: 20px;">
        <a href="../auth/login.php" class="btn-action" style="background-color: #f7a83d; color: #333;">👤 登入 / 註冊</a>
    </div>

    <div style="margin-bottom: 30px; border: 1px solid #ddd; padding: 15px;">
        <h3>快速場次查詢</h3>
        <form action="../../Controllers/General_Controller.php?action=search_showtimes" method="GET">
            <select name="location" style="padding: 5px;">
                <option value="">選擇影城地點</option>
                <option value="taipei">台北信義</option>
            </select>
            <input type="date" name="date" value="<?php echo date('Y-m-d'); ?>" style="padding: 5px;">
            <button type="submit">查詢場次</button>
        </form>
    </div>

    <h3>熱門電影推薦</h3>
    <div class="movie-list">
        <?php for ($i = 1; $i <= 3; $i++): ?>
        <div class="movie-card" style="border: 1px solid #ccc; padding: 10px; margin-bottom: 15px;">
            <h4>電影名稱 <?php echo $i; ?></h4>
            <p>類型: 動作 / 奇幻</p>
            <p>平均評分: ⭐️ 4.5</p>
            
            <a href="movie_info.php?movie_id=<?php echo $i; ?>" style="display: block; margin-top: 10px;">查看詳情 &gt;</a>
        </div>
        <?php endfor; ?>
    </div>
</div>

<?php 
include($shared_views_path . 'footer.php'); 
?>