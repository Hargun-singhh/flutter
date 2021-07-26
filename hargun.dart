/*
Amazon
  Name,  country region , categories

  categories
    title , COSTUMER Rating , noofproducts

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
    print(
        "Product Details =>\n\tBRAND NAME : ${Brand_Name} \n\tITEM NAME : ${Item_name} \n\tPRICE : \u20b9 ${price}");
  }
}

class Categories {
  String? Title;
  int? Noofproducts;
  double? Rating;
  List<product>? products;

  Categories({this.Title, this.Rating, this.Noofproducts, this.products});

  void showCategories() {
    print(" SEARCHED CATEGORY");
    print("~~~~~~~~~~~~~~~~~~~~~~~~~");

    print(
        "CATEGORY=> ${Title}\n\n\t NO OF PRODUCTS :${Noofproducts}\n\t  COSTUMER RATING : ${Rating}");

    products!.forEach((product) {
      product.showproduct();
    });
  }
}

class Amazon {
  String? User, Country, Address;
  int? Cart;
  Categories? categories;

  Amazon({this.User, this.Country, this.Address, this.Cart, this.categories});

  void showAmazon() {
    print("-------------------------");
    print(
        "USER NAME => ${User}\n COUNTRY & REGION =>  ${Country}\n CURRENT LOCATION =>${Address}\n CART => ${Cart}");
    print("-------------------------");

    categories!.showCategories();
  }
}

void main() {
  Amazon(
      User: "HARGUN DEEP SINGH",
      Country: "INDIA",
      Address: " 630/3B  civil Lines  LUDHIANA",
      Cart: 1,
      categories: Categories(
        Title: "SHOES",
        Rating: 4.2,
        Noofproducts: 3,
        products: <product>[
          product(Brand_Name: "NIKE", Item_name: "NIKE AIR MAX", price: 8499),
          product(Brand_Name: "PUMA", Item_name: "STREET ERA", price: 2099),
          product(Brand_Name: "GUCCI", Item_name: "RYTHON ", price: 80996)
        ],
      )).showAmazon();
}

/*
OUTPUT =>>


-------------------------
USER NAME => HARGUN DEEP SINGH
 COUNTRY & REGION =>  INDIA
 CURRENT LOCATION => 630/3B  civil Lines  LUDHIANA
 CART => 1
-------------------------
 SEARCHED CATEGORY
~~~~~~~~~~~~~~~~~~~~~~~~~
CATEGORY=> SHOES

	 NO OF PRODUCTS :3
	  COSTUMER RATING : 4.2
Product Details =>
	BRAND NAME : NIKE 
	ITEM NAME : NIKE AIR MAX 
	PRICE : ₹ 8499
Product Details =>
	BRAND NAME : PUMA 
	ITEM NAME : STREET ERA 
	PRICE : ₹ 2099
Product Details =>
	BRAND NAME : GUCCI 
	ITEM NAME : RYTHON  
	PRICE : ₹ 80996
*/
