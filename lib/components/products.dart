import 'dart:ui';
import 'package:e_mart/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
      "name": "CROCS unisex-adult Bayaband Clog",
      "picture": "images/products/crocs.jpg",
      "old_price": 4495,
      "price": 3057,
      "details": "Sole: Plastic\n"
          "Closure: Pull On\n"
          "Fit Type: Regular\n"
          "Shoe Width: Medium\n"
          "Sizing: Crocs use US sizing worldwide on all footwear, with the US size displayed on the sole. For UK sizes and further info, take a look at the size chart. UK and EU sizes are also located in the tag\n"
          "What size should I buy? These men's and women's Crocs offer a roomy fit, so we recommend ordering the next whole size down from your usual size\n"
          "The Bayaband Clog: A combination of our two fan-favourite styles, the baya and the crocband, these Bayaband Clogs have the iconic clog silhouette with an added fashion-athletic stripe\n"
          "Make each pair unique: Customise your pair of Crocs with fun Jibbitz charms that can be inserted into the ventilation ports and create your own personalised Crocs style\n"
          "Comfortable: The incredibly lightweight and flexible design of these rubber shoes makes them easy to wear and offers 360-degree comfort, with pivoting heel straps for a more secure fit\n",
      "brand": 'Crocs',
    },
    {
      "name": "VINCENTCHASE EyeWear",
      "picture": "images/products/sunglasses.jpg",
      "old_price": 1999,
      "price": 883,
      "details": "Care Instructions: It is important to clean and maintain them regularly. Just spray some Aqualens solution on your lenses and wipe them with a microfibre cloth to keep your lenses smudge-free.\n"
          "ABOUT THE BRAND:- The Vincent Chase collection features some of the most stylish and trendy sunglasses for men and women. Available in a variety of colours and shapes, it ensures you always stand out with your unique style.\n"
          "FRAME PATTERN:- Featuring Blue Full Rim Aviator made from Stainless Steel which is lightweight and offers high strength making it the ideal choice for both men & women.\n"
          "FRAME SIZE:- Large | Frame width: 144mm | Frame Height: 50mm | Frame Dimensions: (58-18-142)mm\n"
          "FRAME STYLE:- One of the most popular and iconic Sunglasses style. The Aviators have been a staple of coolness in pop culture for decades. These timeless sunglasses are most suitable for all men and women.\n"
          "LENS TECHNOLOGY:- They have scratch coating, blocks 100% harmful UV rays up to 400 nm and are very lightweight and highly impact resistant.\n",
      "brand": 'Vincent Chase',
    },
    {
      "name": "EYEBOGLER Men's T-Shirt",
      "picture": "images/products/t-shirt.jpg",
      "old_price": 1299,
      "price": 338,
      "details": "Care Instructions: Machine Wash\n"
          "Fit Type: Regular Fit\n"
          "Moisture wicking fabric is quick-drying, ultra-soft & has a soft feel, keeping you comfortable through any athletic activity.\n"
          "Designed for a comfortable experience. Crew-neck provides a nonrestrictive fit; short-sleeve allows for a wider range of motion\n"
          "Perfect for running, workout and training sports and even as an moisture wicking undershirt.\n"
          "Raglan sleeves for a sporty look\n"
          "Famously durable beefy-t fabric\n",
      "brand": 'EyeBlogger',
    },
    {
      "name": "SKYTRENDS BTS Tshirt",
      "picture": "images/products/t-shirt_women.jpg",
      "old_price": 5499,
      "price": 3999,
      "details": "Care Instructions: Machine Wash\n"
          "Fit Type: Regular Fit\n"
          "Fit Type: Regular Fit , Style: Half Sleeves, Round Neck\n"
          "Occasion: Women's can wear this tshirt for regular and any casual occasions. Can be worn in dailywear,birthday party, family party or outing with friends and family\n",
      "brand": 'SkyTrends',
    },
    {
      "name": "NIFTY Women's Slim Fit Jeans",
      "picture": "images/products/jeans.jpg",
      "old_price": 1299,
      "price": 489,
      "details": "Care Instructions: Machine Wash\n"
          "Fit Type: Slim\n"
          "Material: 70.5% cotton, 27.5% poly, 2% spandex\n"
          "Mid rise\n"
          "Stretchable\n"
          "Inseam length: 27 inches\n"
          "Machine wash cold\n"
          "Number of pockets: 5\n",
      "brand": 'Nifty',
    },
    {
      "name": "LEVI'S Men's Slim Fit Jeans",
      "picture": "images/products/jeans_men.jpg",
      "old_price": 3199,
      "price": 1599,
      "details": "Care Instructions: Machine Wash\n"
          "Fit Type: Slim\n"
          "Levi's Men's 511 Slim Fit Jeans\n",
      "brand": "Levis's"
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
          return single_prod(
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

class single_prod extends StatelessWidget {
  single_prod(
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
          width: 0.5,
          style: BorderStyle.solid,
        )),
        borderOnForeground: true,
        elevation: 8,
        child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
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
