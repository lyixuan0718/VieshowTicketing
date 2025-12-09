<?php 
// 引入 header
$shared_views_path = dirname(__DIR__, 2) . DIRECTORY_SEPARATOR . 'Views' . DIRECTORY_SEPARATOR . 'shared' . DIRECTORY_SEPARATOR;
include($shared_views_path . 'header.php'); 
?>

<div class="container">
    <h2>👤 修改會員資料</h2>
    <p>在此更新您的個人資訊。</p>

    <?php
        $memberData = [
            'name' => '李怡萱',
            'email' => 'yihsuan@vieshow.com',
            'phone' => '0912345678',
            'birth' => '1995-10-22'
        ];
    ?>

    <form action="../../Controllers/Member_Controller.php?action=update_profile" method="POST">
        
        <label for="memberName">姓名:</label>
        <input type="text" id="memberName" name="memberName" value="<?php echo htmlspecialchars($memberData['name']); ?>" required>
        
        <label for="memberEmail">電子郵件 (Email):</label>
        <input type="email" id="memberEmail" name="memberEmail" value="<?php echo htmlspecialchars($memberData['email']); ?>" disabled>
        
        <label for="memberPhone">行動電話:</label>
        <input type="tel" id="memberPhone" name="memberPhone" value="<?php echo htmlspecialchars($memberData['phone']); ?>" required>
        
        <label for="memberBirth">生日:</label>
        <input type="date" id="memberBirth" name="memberBirth" value="<?php echo htmlspecialchars($memberData['birth']); ?>" required>
        
        <p style="margin-top: 20px;">
            <a href="#" style="color: blue;">[修改密碼]</a>
        </p>

        <button type="submit" class="update-button">儲存變更</button>
    </form>
    
    <p><a href="member_home.php">返回會員中心</a></p>
</div>

<?php 
// 引入 footer
include($shared_views_path . 'footer.php'); 
?>