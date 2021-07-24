/*
Amazon
  Sign up , log in, Retuns  country region , categories

  categories
    Amazon Pay , Moblies , fashion , New Releases, Prime , products

    product
    Brand Name , item name , price

  
  customer 
    name, email, Phone no. , address , orders

  orders
  Orders , Quatity , oid , date , time ,Discount
  
*/
class product {
  String? Brand_Name;
  String? Item_name;
  int? price;

  product({this.Brand_Name, this.Item_name, this.price});

  void showproduct() {
    print("Product Details: ${Brand_Name} ${Item_name} ${price}");
  }
}

void main() {
  product item1 =
      product(Brand_Name: "NIKE", Item_name: "AIR MAX", price: 4194);
  product item2 =
      product(Brand_Name: "PUMA", Item_name: " RISE XT FUSE", price: 8099);
  product item3 = product(
      Brand_Name: "ADIDAS", Item_name: "GOKYO WALKING SHOE", price: 3000);
  product item4 =
      product(Brand_Name: "GUCCI", Item_name: "RHYTON WEB", price: 84080);

  item1.showproduct();
  item2.showproduct();
  item3.showproduct();
  item4.showproduct();
}
