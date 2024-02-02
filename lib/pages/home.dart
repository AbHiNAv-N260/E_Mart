import 'package:e_mart/pages/product_details.dart';
import 'package:e_mart/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/components/products.dart';
import 'package:e_mart/components/horizontal_listView.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'about.dart';
import 'favo.dart';
import 'package:e_mart/main.dart';
import 'login.dart';
import 'myacc.dart';
import 'myorders.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          elevation: 0,
          title: Text('E-Mart'),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              //header
              UserAccountsDrawerHeader(
                  accountName: Text(
                    'Abhinav',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  accountEmail: Text(
                    'abhinavn.ug22.cs@nitp.ac.in',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  currentAccountPicture: GestureDetector(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                    ),
                  ))),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.home_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAccount()));
                },
                child: ListTile(
                  title: Text('My Account',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  leading: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyOrders()));
                },
                child: ListTile(
                  title: Text(
                    'My Orders',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.shopping_basket_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/cart');
                },
                child: ListTile(
                  title: Text(
                    'Shopping Cart',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/fav');
                },
                child: ListTile(
                  title: Text(
                    'Favourites',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.black,
                height: 40,
                indent: 5,
                thickness: 0.5,
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
                child: ListTile(
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutPage()));
                },
                child: ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.question_mark_outlined,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
        body: new ListView(
          children: [
            ImageCarousel(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Categories'),
            ),
            SizedBox(
              height: 20,
            ),
            HorizontalList(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Recently Viewed'),
            ),
            Container(
              height: 400,
              child: Products(),
            )
          ],
        ));
  }
}

class ImageCarousel extends StatelessWidget {
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
    return Container(
      height: 275,
      child: CarouselSlider.builder(
        itemCount: product_list.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductDetails(product_detail_name: product_list[index]["name"],product_detail_brand: product_list[index]["brand"],product_detail_old_price: product_list[index]["old_price"],
                  product_detail_price: product_list[index]["price"],product_details: product_list[index]["details"],product_detail_picture: product_list[index]["picture"],)));
            },
            child: Image.asset(
              product_list[index]["picture"].toString(),
              fit: BoxFit.cover,
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 2,
        ),
      ),
    );
  }
}
