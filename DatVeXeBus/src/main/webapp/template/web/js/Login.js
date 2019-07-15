function getEle(element) {
    return document.getElementById(element);
}

function KiemTraRong1() {
    var email = getEle('email').value;
    var pass = getEle('matKhau').value;
    var thongbao = getEle('tb-submit');
    if (email == "" || pass == "") {
        thongbao.innerHTML = "(*) Vui lòng nhập đầy đủ thông tin";
        thongbao.style.display = "block";
        return false;
    } else {
        thongbao.style.display = "none";
        return true;
    }
}

function KiemTraEmail1(idTag) {
    var inputTag = getEle(idTag);
    var thongbao = getEle('tb-email');
    var email = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" +
        "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    if (inputTag.value.match(email)) {
        thongbao.style.display = 'none';
        return true;
    } else {
        thongbao.style.display = 'block';
        thongbao.innerHTML = "(*) Email chưa hợp lệ";
        return false;
    }
}

// function KiemTraPass3() {
//     var Regexpass1 = getEle('matKhau');
//     var thongbao = getEle('tb-pass');
//     var pass2 = "^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$";
//     if (Regexpass1.value.match(pass2)) {
//         thongbao.style.display = 'none';
//         return true;
//     } else {
//         thongbao.style.display = 'block';
//         thongbao.innerHTML = "(*) Pass chưa đúng định dạng";
//         return false;
//     }
// }

function Login() {
    return KiemTraRong1() && KiemTraEmail1('email');
}