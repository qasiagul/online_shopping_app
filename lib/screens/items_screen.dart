import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/product_item_slider.dart';
 class ItemsScreen extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(child:
       Column(
         children: [
           Container(
             height: MediaQuery.of(context).size.height/ 2,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
                 color: Color(0xffD4ECF7),
               borderRadius: BorderRadius.only(
                 bottomRight: Radius.circular(30),
                 bottomLeft: Radius.circular(30),
               )
             ),
             child: Stack(
               children: [
                 Center(
                   child: ProductItemSlider(),
                 ),
                 Padding(
                   padding: EdgeInsets.only(left: 15, top: 20),
                   child: InkWell(
                     onTap: (){
                       Navigator.pop(context);
                     },
                     child: Icon(
                       Icons.arrow_back_ios_new,
                       size: 25,
                     ),
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(height: 10,),
           Padding(padding: EdgeInsets.all(20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                   Text("Apple Watch Series 6",
                   style: TextStyle(
                     fontSize: 22,
                     fontWeight: FontWeight.bold
                   ),
                   ),
               SizedBox(height: 10,),
               Row(
                 children: [
                   RatingBar.builder(
                     initialRating: 3.5,
                       minRating: 1,
                       direction: Axis.horizontal,
                       allowHalfRating: true,
                       itemCount: 5,
                       itemSize: 25,
                       itemBuilder: (context , _) => Icon(
                         Icons.star,
                         color: Colors.amber,
                       ),
                     onRatingUpdate: (rating){},
                   ),
                   SizedBox(width: 5,),
                   Text("(450)")
                 ],
               ),
               SizedBox(height: 15,),
               Row(
                 children: [
                   Text(
                       "\$140",
                   style: TextStyle(
                     fontWeight: FontWeight.bold, fontSize: 22
                   ),
                   ),
                   SizedBox(width: 5,),
                   Text(
                     "\$200",
                     style: TextStyle(
                         color: Colors.black45,
                       decoration: TextDecoration.lineThrough
                     ),
                   ),
                 ],
               ),
               SizedBox(height: 20,),
               Text(
                   "Lorem Ipsum is simply dummy text of the printing and "
                       "typesetting industry. Lorem Ipsum has been the "
                       "industry's standard dummy text ever since "
                       "the 1500s, when an unknown printer took a galley "
                       "of type and scrambled it to make a type specimen "
                       "book. ",
               style: TextStyle(fontSize: 16),
                 textAlign: TextAlign.justify,
               ),
             ],
           ),
           ),
         ],
       ),
       ),
       bottomNavigationBar: Container(
         height: 70,
         margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             InkWell(
               onTap: (){},
               child: Container(
                 height: 60,
                 width: MediaQuery.of(context).size.width / 1.5,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.redAccent,
                 ),
                 child: Center(
                   child: Text(
                     "Add To Card",
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                       fontWeight: FontWeight.bold
                     ),
                   ),
                 ),
               ),
             ),
             InkWell(
               onTap: (){},
               child: Container(
                 height: 60,
                 width: MediaQuery.of(context).size.width / 5,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Color(0xffD4ECF7),
                 ),
                 child: Center(
                   child: Icon(
                       Icons.favorite_outline,
                      color: Colors.redAccent,
                     size: 30,
                   )
                 ),
               ),
             ),
           ],
         ),
       ),
     );
   }
 }
 