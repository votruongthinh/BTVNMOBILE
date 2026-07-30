void main() {
  Product p = Product(name:"laptop",quality:10,price:10000);
  p.printBill();
}

class Product {
  final String name;
  final double quality;
  final double price;

  Product({required this.name, required this.quality, required this.price});

  double total(){
    return quality * price;
  }
  double discount(){
    if(total() >1000000){
      return total() * 0.1;
    }else if(total()>=500000){
      return total() * 0.05;
    }
    return 0;
  }
  double finalTotal(){
    return total() -((total()- discount()) * 0.08);
  }
  void printBill(){
    print("ten san pham:$name");
    print("so luong san pham:$quality");
    print("gia san pham:$price");
    print("tong tien:${total()}");
    print("giam gia:${discount()}");
    print("Tong cuoi cung:${finalTotal()}");
  }
}
