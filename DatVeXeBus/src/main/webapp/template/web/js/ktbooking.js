function getEle(element){
    return document.getElementById(element);
}

function KiemTraRong2(){
    var from = getEle('inputEmail4').value;
    var to = getEle('inputPassword4').value;
    var day = getEle('datepicker').value;
    var thongbao4 = getEle('tb-subb')
    if(from == "" || to =="" || day == ""){
        thongbao4.innerHTML = "(*) Không Được Để Trống!";
        thongbao4.style.display = "block";
        return false;
    }else {
        thongbao4.style.display = "none";
        return true;
    }
}
function KiemTraBooking(){
    var user = getEle('user').value;
    var diachi = getEle('diachi').value;
    var didong = getEle('didong').value;
    var tinh = getEle('tinh').value;
    var quanhuyen = getEle('quanhuyen').value;
    var date = getEle('date').value;
    var didong2 = getEle('number').value;
    var thongbao = getEle('tb-submit');
    if(user == "" || diachi == "" || didong =="" || tinh == "" || quanhuyen =="" || date == "" || didong2 == ""){
        thongbao.innerHTML = "(*) Vui lòng điền đủ thông tin!";
        thongbao.style.display = "block";
        return false;
    }else{
        thongbao.style.display ="none";
        return true;
    }
}
function KiemTraDinhDang(){
    var inputTag = getEle('diachi');
    var thongbao = getEle('tb-diachi');
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
function KiemTra(){
    KiemTraBooking() &&
    KiemTraDinhDang();
}
function QuayLai(){
    var div1 = getEle('div1');
    var div2 = getEle('div2');
    history.back();
    div1.style.display = "none";
    div2.style.display = "block";
}