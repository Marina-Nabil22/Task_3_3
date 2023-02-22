import 'package:flutter/material.dart';
import 'package:untitled/items/gallery.dart';
import 'package:untitled/items/option.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body:Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 47),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.settings_outlined,color: Colors.grey,size: 41),

              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 135,
                  height: 135,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa4xjShh4ynJbrgYrW_aB4lhKSxeMzQ3cO_A&usqp=CAU'),
                  ),
                ),
                Column(
                  children: [
                    Container(

                      child:Text('Mary Smith',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
                    ),

                   Row(

                     
                      children:[
                       Container(
                         margin: EdgeInsets.only(left: 110,top: 5,bottom: 5),
                         child: Row(
                           children: [
                             Icon(Icons.sms_rounded,color: Colors.purpleAccent,),
                             Text('SMS:415-555-1212',style: TextStyle(fontSize: 18,color:Colors.black54,)),
                           ],
                         ),
                       )
                      ],
                    ),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

    Menu(color: Colors.deepPurple.shade400, number: '2', text: 'Unclaimed'),
    Menu(color: Colors.indigo.shade900, number: '2,880', text: 'Monthly Earn')
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
   Container(
     margin: EdgeInsets.all(13),
     child:  Text('Action Required',style: TextStyle(color: Colors.black87,fontSize: 19,fontWeight: FontWeight.w700)),
   ),
    Container(

      margin: EdgeInsets.only(right: 15,top: 23),
      decoration: BoxDecoration(color: Colors.indigo,borderRadius: BorderRadius.all(Radius.circular(30)),border: Border.all(width: 7,color: Colors.indigo)),
      child: Text('18',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w400,backgroundColor: Colors.indigo)),
    )
  ],
),
Container(
  margin: EdgeInsets.only(top: 15),

  width: 350,
  height: 57,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurStyle: BlurStyle.outer,
            blurRadius: 7
        )
      ]
  ),
  child: Row(
mainAxisAlignment: MainAxisAlignment.center,
    children: [
     Container(
       margin: EdgeInsets.only(right: 15),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.all(Radius.circular(25)),
         boxShadow: [
           BoxShadow(
             color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
             blurStyle: BlurStyle.outer,
             blurRadius: 7
           )
         ]
       ),
       child:  Icon(Icons.verified_outlined,size: 30,color: Colors.green,),
     ),
Container(
margin:  EdgeInsets.only(top: 10),
  child: Column(
      children: [
        Text('Verify Art Profile',style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w800)),
        Text('New Art Piece Required Your Verification',style: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w500)),
      ],
)
)
    ],
),
),
                  Container(
                    margin: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Gallery',style: TextStyle(color: Colors.black87,fontSize: 21,fontWeight: FontWeight.w500)),
                        Text('see all',style: TextStyle(color: Colors.black87,fontSize: 17,fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GallerySection(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThjJudAPNX4DzortuSmEl6SKje-KjpFEqWGw&usqp=CAU', image_name: 'Slouching towards', description: 'Oil,spray paint'),
                          GallerySection(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStui8rxwdhz1uTukld7qVlGuJU3B2svpoi_A&usqp=CAU', image_name: 'King Grin', description: 'Oil,spray paint')

                        ],
                      ),
                    )
                  ],
                ),

              ],
            ),
          )
        ],
      ) ,
    );
  }
}


  


