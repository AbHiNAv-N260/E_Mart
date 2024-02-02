import 'dart:ui';
import 'package:e_mart/components/cartproducts.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/main.dart';
import 'home.dart';
import 'login.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_old_price;
  final product_detail_picture;
  final product_details;
  final product_detail_brand;
  final name;
  final email;

  ProductDetails({
    super.key,
    this.product_detail_name,
    this.product_detail_price,
    this.product_detail_old_price,
    this.product_detail_picture,
    this.product_details,
    this.product_detail_brand,
    this.name,
    this.email,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  
  String selectedSize = 'S';
  String selectedColor = 'Black';
  int selectedQuantity = 1;
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: InkWell(
          onTap: () => Navigator.of(context)
              .push(new MaterialPageRoute(builder: (context) => HomePage())),
          child: Text(
            'E-Mart',
          ),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView(children: [
        Container(
          height: 300,
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(
                  widget.product_detail_name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                title: Row(
                  children: [
                    Container(
                      child: Text(
                        "₹" + '${widget.product_detail_old_price}',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      child: Text(
                        '₹' + '${widget.product_detail_price}',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            child: Container(
              color: Colors.white,
              child: Image.asset(widget.product_detail_picture),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                color: Colors.white,
                textColor: Colors.grey,
                onPressed: () {
                  _showSizeDialog();
                },
                child: Row(
                  children: [
                    Text('Size: $selectedSize'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                color: Colors.white,
                textColor: Colors.grey,
                onPressed: () {
                  _showColorDialog();
                },
                child: Row(
                  children: [
                    Text('Color: $selectedColor'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                color: Colors.white,
                textColor: Colors.grey,
                onPressed: () {
                  _showQuantityDialog();
                },
                child: Row(
                  children: [
                    Text('Qty: $selectedQuantity'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                elevation: 5,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                var list = [
                  {
                    "name": widget.product_detail_name.toString(),
  
                    "picture": widget.product_detail_picture.toString(),
                    "old_price": widget.product_detail_old_price,
                    "price": widget.product_detail_price,
                    "details": widget.product_details.toString(),
                    "brand": widget.product_detail_brand.toString(),
                    "size": selectedSize,
                    "qty": selectedQuantity,
                    "color": selectedColor,
                  }
                ];
                setState(() {
                  Products_on_the_cart.add(list as Map<String, Object>);
                });
                
              },
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.red,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
            child: Text(
              'Product Details',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Text(
                widget.product_details,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        Divider(),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                'Product Name',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                widget.product_detail_name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                'Product Brand',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                widget.product_detail_brand,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                'Product Condition',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                'New',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 10, 5),
          child: Text(
            'Similar Products',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
        Container(
          height: 360,
          child: Similar_Products(),
        ),
      ]),
    );
  }

  // Size selection dialog
  void _showSizeDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Size'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('S'),
                onTap: () {
                  setState(() {
                    selectedSize = 'S';
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: Text('M'),
                onTap: () {
                  setState(() {
                    selectedSize = 'M';
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: Text('L'),
                onTap: () {
                  setState(() {
                    selectedSize = 'L';
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: Text('XL'),
                onTap: () {
                  setState(() {
                    selectedSize = 'XL';
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }

  // Color selection dialog
  void _showColorDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Color'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Black'),
                onTap: () {
                  setState(() {
                    selectedColor = 'Black';
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: Text('White'),
                onTap: () {
                  setState(() {
                    selectedColor = 'White';
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }

  // Quantity selection dialog
  void _showQuantityDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Quantity'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('1'),
                onTap: () {
                  setState(() {
                    selectedQuantity = 1;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: Text('2'),
                onTap: () {
                  setState(() {
                    selectedQuantity = 2;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: Text('3'),
                onTap: () {
                  setState(() {
                    selectedQuantity = 3;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: Text('4'),
                onTap: () {
                  setState(() {
                    selectedQuantity = 4;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class Similar_Products extends StatefulWidget {
  const Similar_Products({super.key});

  @override
  State<Similar_Products> createState() => _Similar_ProductsState();
}

class _Similar_ProductsState extends State<Similar_Products> {
  var product_list = [
    {
      "name": "Dhingra Mens Slim Fit Suit",
      "picture": "images/products/blazer1.jpg",
      "old_price": 12000,
      "price": 4499,
      "details": "Care Instructions: Dry Clean Only\n"
          "Fit Type: Slim Fit\n"
          "Package includes Coat, Pants, Waistcoat, hanger nicely packed in a branded suit cover. All pieces are fully stitched and ready to wear\n"
          "Perfect gift for him: Suit set comes in box, We offer the right blend of quality, style and value aimed to delight our customers\n"
          "There might be minor color variation between actual product and image shown on screen due to photography lighting.\n"
          "Size Guide: Please Follow Size Chart From the image and order respectively\n",
      "brand": 'Dhingra',
    },
    {
      "name": "TILKI women's Silk Choli",
      "picture": "images/products/red_Dress.jpg",
      "old_price": 2999,
      "price": 1199,
      "details": "Care Instructions: Dry Clean Only\n"
          "Lehenga Fabric: Raw Silk; Blouse Fabric: Raw Silk; Dupatta Fabric: Net; Inner: Satin With Cancan(Tulle) Layered Net\n"
          "Lehenga Work: Multi Color Resham Thread Embroidery ; Blouse Work: Multi Color Resham Thread Embroidery ; Dupatta Work: Zari & Glitter Sequins Embroiderey\n"
          "Measurements: Lehenga(Semi-Stitched) Flair : 3.50Mtr, Waist-43\n"
          "Height-43 Blouse(Unstitched) Size: Up To 44 Dupatta Length: 2.25 Mtr\n"
          "Package Contains: 1 Semi-Stitched Lehenga With Dupatta And Unstitched Blouse\n",
      "brand": "Tilki",
    },
    {
      "name": "BATA Mens Formal Shoes",
      "picture": "images/products/shoes1.jpg",
      "old_price": 1099,
      "price": 681,
      "details": "Sole: Rubber\n"
          "Closure: Pull On\n"
          "Fit Type: Regular\n"
          "Shoe Width: Medium\n"
          "Material - Synthetic\n"
          "Color - Black\n"
          "Sole - Synthetic\n"
          "Care Instructions - Wipe with clean and dry cloth to remove dust\n"
          "Water Resistant Level - Not Water Resistant\n",
      "brand": 'Bata',
    },
    {
      "name": "CASIO Watch",
      "picture": "images/products/watch.jpg",
      "old_price": 10995,
      "price": 9995,
      "details":
          "Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral. Size of case : 47×43.5×10.4mm\n"
              "Band Color: Silver, Band Material: Stainless Steel\n"
              "Watch Movement Type: Quartz, Watch Display Type: Analog\n"
              "Case Material: Metal, Case Diameter: 43.5 millimeters\n"
              "Water Resistance Depth: 50 meters, Fold-Over Clasp with Safety\n"
              "Ideal for birthday, anniversary and wedding gift\n",
      "brand": 'Casio',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
            prod_details: product_list[index]['details'],
            prod_brand: product_list[index]['brand'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  Similar_single_prod(
      {super.key,
      this.prod_picture,
      this.prod_old_price,
      this.prod_name,
      this.prod_price,
      this.prod_details,
      this.prod_brand});
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_details;
  final prod_brand;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
            side: BorderSide(
          color: Colors.black,
        )),
        borderOnForeground: true,
        elevation: 8,
        child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => ProductDetails(
                        product_detail_name: prod_name,
                        product_detail_price: prod_price,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_picture,
                        product_details: prod_details,
                        product_detail_brand: prod_brand,
                      ))),
              child: GridTile(
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.contain,
                ),
                footer: Container(
                  height: 80,
                  color: Colors.white,
                  child: ListTile(
                    leading: Column(
                      children: [
                        Text(
                          prod_name,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "₹" + prod_price.toString(),
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w900,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "₹" + prod_old_price.toString(),
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough,
                            decorationThickness: 2.0,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
