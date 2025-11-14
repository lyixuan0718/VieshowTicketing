document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('registerForm');
    const emailInput = document.getElementById('memberEmail');
    const pwdInput = document.getElementById('memberPwd');
    const pwdConfirmInput = document.getElementById('memberPwdConfirm');
    
    // Email 格式驗證
    emailInput.addEventListener('input', function() {
        const emailError = document.getElementById('emailError');
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(emailInput.value)) {
            emailError.textContent = '請輸入有效的電子郵件格式。';
        } else {
            emailError.textContent = '';
        }
    });

    // 密碼長度驗證 (至少8碼)
    pwdInput.addEventListener('input', function() {
        const pwdError = document.getElementById('pwdError');
        if (pwdInput.value.length < 8) {
            pwdError.textContent = '密碼長度必須至少為 8 個字元。';
        } else {
            pwdError.textContent = '';
        }
    });

    // 密碼二次比對 (S8 CheckRepeat)
    pwdConfirmInput.addEventListener('input', checkPasswordMatch);
    pwdInput.addEventListener('input', checkPasswordMatch);

    function checkPasswordMatch() {
        const pwdMatchError = document.getElementById('pwdMatchError');
        if (pwdInput.value !== pwdConfirmInput.value) {
            pwdMatchError.textContent = '兩次輸入的密碼不一致。';
        } else {
            pwdMatchError.textContent = '';
        }
    }

    // 最終表單提交前的驗證
    form.addEventListener('submit', function(e) {
        // 如果有任何錯誤訊息，則阻止表單提交
        const errors = document.querySelectorAll('.error');
        for (let error of errors) {
            if (error.textContent !== '') {
                e.preventDefault();
                alert('請修正表單中的錯誤後再提交！');
                return;
            }
        }
        
        if (pwdInput.value !== pwdConfirmInput.value) {
             e.preventDefault();
             alert('兩次密碼必須一致！');
             return;
        }

        // 可以加上更複雜的台灣身分證驗證邏輯
    });
});