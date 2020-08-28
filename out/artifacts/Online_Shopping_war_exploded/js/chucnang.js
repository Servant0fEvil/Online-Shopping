function chinhsua(show) {
    var favDialog = document.getElementById("favDialog_chinhsua");
    if (show) {
        favDialog.style.display = "block";
        favDialog.showModal();
    } else {
        favDialog.style.display = "none";
        return false;
    }

}

function themmoi(show) {
    var favDialog1 = document.getElementById("favDialog_themmoi");
    if (show) {
        favDialog1.style.display = "block";
        favDialog1.showModal();
    } else {
        favDialog1.style.display = "none";
        return false;
    }
}

function xoa() {
    var result = confirm("Bạn có chắc chắn muốn xóa");
}

function xacnhan() {
    var result = confirm("Xác nhận?");
}

function thongtintaikhoan() {
    var favDialog1 = document.getElementById("thongtincanhan");
    favDialog1.style.display = "block";
    favDialog1.showModal();
}
