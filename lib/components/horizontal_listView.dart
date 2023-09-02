import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
     scrollDirection: Axis.horizontal,
     children: [
       Category(
           image_location: 'images/cats/b2.jpg',
           image_caption: 'T-Shirt'),
       Category(image_location: 'images/cats/b3.png', image_caption: 'Jeans'),
       Category(image_location: 'images/cats/b5.png', image_caption: 'Formals'),
       Category(image_location: 'images/cats/b6.png', image_caption: 'In-Formals'),
       Category(image_location: 'images/cats/b4.png', image_caption: 'Shoes'),
       Category(image_location: 'images/cats/b1.png', image_caption: 'Accessories'),
       Category(image_location: 'images/cats/b7.png', image_caption: 'Frocks'),
     ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  Category({super.key, required this.image_location, required this.image_caption});
final String image_location;
final String image_caption;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black,
          width: 0.5,
        ),
            borderRadius: BorderRadius.circular(2),
      ),
      child: Padding(
        padding: EdgeInsets.all(1.0),
        child: InkWell(
          onTap: (){

          },
          child: Container(
            width: 100,
            height: 200,
            color: Colors.white,
            child: ListTile(
              title: Image.asset(image_location,
              width: 100,
              ),
              subtitle:  Container(
                alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      SizedBox(height: 4,),
                      Text(image_caption,
                       style: TextStyle(
                         fontSize: 10,
                       ),
                      ),
                    ],
                  ),
              ),
            ),
          ),
        ),
      ),
    ) ;
  }
}

