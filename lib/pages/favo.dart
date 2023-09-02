import 'package:e_mart/pages/product_details.dart';
import 'package:flutter/material.dart';

class Liked extends StatefulWidget {
  @override
  _LikedState createState() => _LikedState();
}

class _LikedState extends State<Liked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: LikedProducts(),
    );
  }
}

class LikedProducts extends StatefulWidget {
  @override
  State<LikedProducts> createState() => _LikedProductsState();
}

var Products_Liked = [
  {
    "name": "Dhingra Mens Slim Fit Suit",
    "picture": "images/products/blazer1.jpg",
    "old_price": 12000.0,
    "price": 4499.0,
    "details": "Care Instructions: Dry Clean Only\n"
        "Fit Type: Slim Fit\n"
        "Package includes Coat, Pants, Waistcoat, hanger nicely packed in a branded suit cover. All pieces are fully stitched and ready to wear\n"
        "Perfect gift for him: Suit set comes in a box, We offer the right blend of quality, style, and value aimed to delight our customers\n"
        "There might be minor color variation between the actual product and the image shown on the screen due to photography lighting.\n"
        "Size Guide: Please Follow Size Chart From the image and order respectively\n",
    "brand": 'Dhingra',
    "size": "L",
    "color": "Black",
  },
  {
    "name": "TILKI women's Silk Choli",
    "picture": "images/products/red_Dress.jpg",
    "old_price": 2999.0,
    "price": 1199.0,
    "details": "Care Instructions: Dry Clean Only\n"
        "Lehenga Fabric: Raw Silk; Blouse Fabric: Raw Silk; Dupatta Fabric: Net; Inner: Satin With Cancan(Tulle) Layered Net\n"
        "Lehenga Work: Multi-Color Resham Thread Embroidery ; Blouse Work: Multi-Color Resham Thread Embroidery ; Dupatta Work: Zari & Glitter Sequins Embroidery\n"
        "Measurements: Lehenga(Semi-Stitched) Flair : 3.50Mtr, Waist-43\n"
        "Height-43 Blouse(Unstitched) Size: Up To 44 Dupatta Length: 2.25 Mtr\n"
        "Package Contains: 1 Semi-Stitched Lehenga With Dupatta And Unstitched Blouse\n",
    "brand": "Tilki",
    "size": "M",
    "color": "Red",
  },
  {
    "name": "BATA Mens Formal Shoes",
    "picture": "images/products/shoes1.jpg",
    "old_price": 1099.0,
    "price": 681.0,
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
    "size": "10",
    "color": "Black",
  },
  {
    "name": "CROCS unisex-adult Bayaband Clog",
    "picture": "images/products/crocs.jpg",
    "old_price": 4495.0,
    "price": 3057.0,
    "details": "Sole: Plastic\n"
        "Closure: Pull On\n"
        "Fit Type: Regular\n"
        "Shoe Width: Medium\n"
        "Sizing: Crocs use US sizing worldwide on all footwear, with the US size displayed on the sole. For UK sizes and further info, take a look at the size chart. UK and EU sizes are also located in the tag\n"
        "What size should I buy? These men's and women's Crocs offer a roomy fit, so we recommend ordering the next whole size down from your usual size\n"
        "The Bayaband Clog: A combination of our two fan-favorite styles, the baya and the crocband, these Bayaband Clogs have the iconic clog silhouette with an added fashion-athletic stripe\n"
        "Make each pair unique: Customize your pair of Crocs with fun Jibbitz charms that can be inserted into the ventilation ports and create your own personalized Crocs style\n"
        "Comfortable: The incredibly lightweight and flexible design of these rubber shoes makes them easy to wear and offers 360-degree comfort, with pivoting heel straps for a more secure fit\n",
    "brand": 'Crocs',
    "size": "8",
    "color": "Blue",
  },
  {
    "name": "VINCENTCHASE EyeWear",
    "picture": "images/products/sunglasses.jpg",
    "old_price": 1999.0,
    "price": 883.0,
    "details": "Care Instructions: It is important to clean and maintain them regularly. Just spray some Aqualens solution on your lenses and wipe them with a microfiber cloth to keep your lenses smudge-free.\n"
        "ABOUT THE BRAND:- The Vincent Chase collection features some of the most stylish and trendy sunglasses for men and women. Available in a variety of colors and shapes, it ensures you always stand out with your unique style.\n"
        "FRAME PATTERN:- Featuring Blue Full Rim Aviator made from Stainless Steel which is lightweight and offers high strength making it the ideal choice for both men & women.\n"
        "FRAME SIZE:- Large | Frame width: 144mm | Frame Height: 50mm | Frame Dimensions: (58-18-142)mm\n"
        "FRAME STYLE:- One of the most popular and iconic Sunglasses style. The Aviators have been a staple of coolness in pop culture for decades. These timeless sunglasses are most suitable for all men and women.\n"
        "LENS TECHNOLOGY:- They have scratch coating, blocks 100% harmful UV rays up to 400 nm and are very lightweight and highly impact resistant.\n",
    "brand": 'Vincent Chase',
    "size": "One Size",
    "color": "Blue",
  },
  {
    "name": "EYEBOGLER Men's T-Shirt",
    "picture": "images/products/t-shirt.jpg",
    "old_price": 1299.0,
    "price": 338.0,
    "details": "Care Instructions: Machine Wash\n"
        "Fit Type: Regular Fit\n"
        "Moisture wicking fabric is quick-drying, ultra-soft & has a soft feel, keeping you comfortable through any athletic activity.\n"
        "Designed for a comfortable experience. Crew-neck provides a nonrestrictive fit; short-sleeve allows for a wider range of motion\n"
        "Perfect for running, workout and training sports and even as a moisture wicking undershirt.\n"
        "Raglan sleeves for a sporty look\n"
        "Famously durable beefy-t fabric\n",
    "brand": 'EyeBlogger',
    "size": "L",
    "color": "Black",
  },
  {
    "name": "SKYTRENDS BTS Tshirt",
    "picture": "images/products/t-shirt_women.jpg",
    "old_price": 5499.0,
    "price": 3999.0,
    "details": "Care Instructions: Machine Wash\n"
        "Fit Type: Regular Fit\n"
        "Fit Type: Regular Fit , Style: Half Sleeves, Round Neck\n"
        "Occasion: Women's can wear this t-shirt for regular and any casual occasions. Can be worn in daily wear, birthday party, family party, or outing with friends and family\n",
    "brand": 'SkyTrends',
    "size": "M",
    "color": "Pink",
  },
  {
    "name": "NIFTY Women's Slim Fit Jeans",
    "picture": "images/products/jeans.jpg",
    "old_price": 1299.0,
    "price": 489.0,
    "details": "Care Instructions: Machine Wash\n"
        "Fit Type: Slim\n"
        "Material: 70.5% cotton, 27.5% poly, 2% spandex\n"
        "Mid-rise\n"
        "Stretchable\n"
        "Inseam length: 27 inches\n"
        "Machine wash cold\n"
        "Number of pockets: 5\n",
    "brand": 'Nifty',
    "size": "28",
    "color": "Blue",
  },
  {
    "name": "LEVI'S Men's Slim Fit Jeans",
    "picture": "images/products/jeans_men.jpg",
    "old_price": 3199.0,
    "price": 1599.0,
    "details": "Care Instructions: Machine Wash\n"
        "Fit Type: Slim\n"
        "Levi's Men's 511 Slim Fit Jeans\n",
    "brand": "Levi's",
    "size": "32",
    "color": "Dark Blue",
  },
  {
    "name": "CASIO Watch",
    "picture": "images/products/watch.jpg",
    "old_price": 10995.0,
    "price": 9995.0,
    "details": "Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral. Size of case : 47×43.5×10.4mm\n"
        "Band Color: Silver, Band Material: Stainless Steel\n"
        "Watch Movement Type: Quartz, Watch Display Type: Analog\n"
        "Case Material: Metal, Case Diameter: 43.5 millimeters\n"
        "Water Resistance Depth: 50 meters, Fold-Over Clasp with Safety\n"
        "Ideal for birthday, anniversary and wedding gift\n",
    "brand": 'Casio',
    "size": "One Size",
    "color": "Black",
  },
  // Add more products here...
];

class _LikedProductsState extends State<LikedProducts> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_Liked.length,
      itemBuilder: (context, index) {
        final product = Products_Liked[index];

        // Perform null safety checks for required properties
        final liked_prod_name = product['name'] ?? 'Unknown Name';
        final liked_prod_picture = product['picture'] ?? 'images/placeholder.png';
        final liked_prod_price = (product['price'] ?? 0.0) as double; // Explicit cast to double
        final liked_prod_size = product['size'] ?? 'N/A';
        final liked_prod_color = product['color'] ?? 'N/A';
        final liked_prod_qty = product['qty'] ?? 0;
        final liked_prod_old_price = product['old_price'] ?? 0;
        final liked_prod_details = product['details'] ?? 'Unknown Details';
        final liked_prod_brand = product['brand'] ?? 'Unknown Brand';

        return SingleLikedProduct(
          single_liked_prod_name: liked_prod_name,
          single_liked_prod_color: liked_prod_color,
          single_liked_prod_qty: liked_prod_qty,
          single_liked_prod_size: liked_prod_size,
          single_liked_prod_price: liked_prod_price,
          single_liked_prod_picture: liked_prod_picture,
          single_liked_prod_old_price: liked_prod_old_price,
          single_liked_prod_details: liked_prod_details,
          single_liked_prod_brand: liked_prod_brand,
        );
      },
    );
  }
}

class SingleLikedProduct extends StatelessWidget {
  const SingleLikedProduct({
    super.key,
    this.single_liked_prod_name,
    this.single_liked_prod_picture,
    this.single_liked_prod_price,
    this.single_liked_prod_size,
    this.single_liked_prod_color,
    this.single_liked_prod_qty,
    this.single_liked_prod_old_price,
    this.single_liked_prod_details,
    this.single_liked_prod_brand,
  });
  final single_liked_prod_name;
  final single_liked_prod_picture;
  final single_liked_prod_price;
  final single_liked_prod_size;
  final single_liked_prod_color;
  final single_liked_prod_qty;
  final single_liked_prod_old_price;
  final single_liked_prod_details;
  final single_liked_prod_brand;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProductDetails(
          product_detail_name: single_liked_prod_name,
          product_detail_price: single_liked_prod_price,
          product_detail_old_price: single_liked_prod_old_price,
          product_detail_picture: single_liked_prod_picture,
          product_details: single_liked_prod_details,
          product_detail_brand: single_liked_prod_brand,
        ),
      )),
      child: Card(
        elevation: 20,
        child: ListTile(
          leading: Image.asset(
            single_liked_prod_picture,
            width: 80,
            height: 80,
          ),
          title: Text(single_liked_prod_name),
          subtitle: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text("Size : "),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      single_liked_prod_size,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                    child: Text("Color : "),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      single_liked_prod_color,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  '₹' + '${single_liked_prod_price}',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                    fontSize: 19,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}