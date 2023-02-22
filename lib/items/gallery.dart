import 'package:flutter/material.dart';
class GallerySection extends StatelessWidget {

final image;
final image_name;
final description;

GallerySection({required this.image,required this.image_name,required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
width: 170,
      height: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                //spreadRadius: 5,
               blurStyle: BlurStyle.outer,
                blurRadius: 7
            )
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
children: [
  Container(
    width: 450,
    height: 90,
          margin: EdgeInsets.all(7),
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(image)),
          borderRadius: BorderRadius.all(Radius.circular(10)),),
  ),

  Container(
    margin: EdgeInsets.only(top: 5,bottom: 10),
    child: Column(
      children: [
       Text(image_name,style: TextStyle(color: Colors.black87,fontSize: 17,fontWeight: FontWeight.w700)),
        Text(description,style: TextStyle(color: Colors.indigo.shade800,fontSize: 15,fontWeight: FontWeight.w500)),
      ],
    ),
  ),

  Container(
    width: 140,
    height: 24,
 decoration: BoxDecoration(
   border: Border.all(color: Colors.blue.shade900,),
   color: Colors.blue.shade900,
borderRadius: BorderRadius.all(Radius.circular(10))
 ),
    child:Center(
      child:  Text('Buy Now',style: TextStyle(color: Colors.white)),
         ),
        )
       ],
      ),
    );
  }
}
