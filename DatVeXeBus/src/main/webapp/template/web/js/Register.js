function getEle(element) {
    return document.getElementById(element);
}


function KiemTraRong() {
    var user = getEle('user').value;
    var email = getEle('Email1').value;
    var pass = getEle('Pass1').value;
    var repass = getEle('repass').value;
    var Cmnd = getEle('cmnd').value;
    var sdt = getEle('sdt').value;
    var qh = getEle('quanhuyen').value;
    var tp = getEle('city').value;
    var dc = getEle('diachi').value;
    var thongbao = getEle('tb-submit1');
    if (user == "" || email == "" || pass == "" || repass == "" || Cmnd == "" || sdt == "" || qh =="" || tp == "" || dc == "") {
        thongbao.innerHTML = "(*) Vui lòng nhập đầy đủ thông tin";
        thongbao.style.display = "block";

        return false;
    } else {
        thongbao.style.display = "none";
        return true;
    }
}


function KiemTraMinMax(idTag1, TB1, content1, min, max) {
    var inputTag = getEle(idTag1).value;
    var thongbao = getEle(TB1);
    if (inputTag.length < min || inputTag.length > max) {
        thongbao.innerHTML = "(*) " + content1 + " phải từ " + min + " đến " + max + " kí tự";
        thongbao.style.display = "block";
        return false;
    } else {
        thongbao.style.display = "none";
        return true;
    }
}

function KiemTraEmail() {
    var inputTag = getEle('Email1');
    var thongbao = getEle('tb-email1');
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

function KiemTraRepass() {
    var pass = getEle('Pass1');
    var repass = getEle('repass');
    var thongbao = getEle('tb-repass');
    if (pass.value != repass.value) {
        thongbao.style.display = 'block';
        thongbao.innerHTML = "(*) Repassword chưa đúng";
        return false;
    } else {
        thongbao.style.display = 'none';
        return true;
    }

}
// function KiemTraCMND(cmnd){
//     var cmnd = getEle('cmnd');
//     var thongbao = getEle('tb-cmnd');
//     if(cmnd.length > 10){
//         thongbao.style.display = 'block';
//         thongbao.innerHTML = "(*) CMND phải ít hơn 10 kí tự";
//         return false;
//     } else if(cmnd.length < 10){
//         thongbao.style.display = 'block';
//         thongbao.innerHTML = "(*) CMND phải ít hơn 10 kí tự";
//         return false;
//     }
// }

function Register() {
    return KiemTraRong() &&
        KiemTraMinMax('user', 'tb-user', "Username", 3, 50) &&
        KiemTraMinMax('Email1', 'tb-email1', "Email", 5, 50) &&
        KiemTraMinMax('Pass1', 'tb-pass1', "Password", 8, 50) &&
        KiemTraMinMax('cmnd', 'tb-cmnd', "CMND", 9, 9) &&
        KiemTraMinMax('quanhuyen', 'tb-quanhuyen', "Số Kí Tự Quá Ngắn", 4, 20) &&
        KiemTraMinMax('city', 'tb-city', "Số Kí Tự Quá Ngắn", 4, 20) &&
        KiemTraMinMax('diachi', 'tb-diachi', "Số Kí Tự Quá Ngắn", 4, 20) &&
        KiemTraEmail() &&
        KiemTraRepass();
}