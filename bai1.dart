void main(){
    String hoTen = "Võ Trường Thịnh";
    double soGioLam = 45;
    double luongMoiGio = 300000;

    //tính tổng lương 
    double tongLuong = soGioLam * luongMoiGio;

    //2.Phụ cấp
    double phuCap = 0;

    //2.1 kiểm tra nếu số giờ làm trên 40 giờ thì thưởng thêm 20%
    if(soGioLam > 40){
        phuCap = tongLuong * 0.2;
    }

    double luongTruocThue = tongLuong + phuCap;

    //3.Thuế
    double thue = 0;

    if(luongTruocThue > 10000000){
        thue = luongTruocThue * 0.1;

    }else if(luongTruocThue >= 7000000){
        thue = luongTruocThue * 0.05;
    }else{
        thue = 0;
    }

    //lương thực lãnh 
    double luongThucLanh = luongTruocThue - thue;

    print("======= Thông tin nhân viên =======");
    print("họ và tên : $hoTen");
    print("Tổng lương :$tongLuong");
    print("Phụ cấp: $phuCap");
    print("Luong trước thuế: $luongTruocThue");
    print("Thuế:$thue");
    print("Lương thực lãnh:$luongThucLanh");
}