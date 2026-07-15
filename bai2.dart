void main(){
    String tenSanPham = "Lap Top";
    int soLuongMua = 2;
    double donGia = 650000;

    //1 thành tiền 
    double thanhTien = soLuongMua * donGia;

    //2 giảm giá
    double giamGia = 0;
    if(thanhTien >= 1000000){
        giamGia = thanhTien * 0.1;
    }else if(thanhTien >= 500000){
        giamGia = thanhTien * 0.05;
    }else{
        giamGia = 0;
    }

    // tiền sau giảm giá
    double tienSauGiam = thanhTien - giamGia;

    //3.thuế 
    double vat = tienSauGiam * 0.08;

    //tổng thanh toán 
    double tongThanhToan = tienSauGiam + vat;

      // 4. In hóa đơn
     print("===== HÓA ĐƠN =====");
    print("Tên sản phẩm: $tenSanPham");
     print("Số lượng: $soLuongMua");
    print("Đơn giá: $donGia");
     print("Thành tiền: $thanhTien");
    print("Giảm giá: $giamGia");
    print("VAT: $vat");
    print("Tổng thanh toán: $tongThanhToan");
}