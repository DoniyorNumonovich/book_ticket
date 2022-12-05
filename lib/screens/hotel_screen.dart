import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic>hotel;
  const HotelScreen({Key? key,required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print("Hotel price is ${hotel['price']}");
    final size=AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(15)),
      margin: EdgeInsets.only(top: 5,right: 15),
      height: AppLayout.getHeight(360),
      width: size.width*0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 20,
            spreadRadius: 5
          ),
        ],
        color: Styles.primaryColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
              color: Styles.primaryColor,
              image: DecorationImage(
                image: AssetImage("assets/images/${hotel['image']}"),
                fit: BoxFit.cover
              )
            ),
          ),
          Gap(10),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${hotel['place']}",style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor)),
                Gap(5),

                Text("${hotel['destination']}",style: Styles.headLineStyle3),
                Gap(8),

                Text("\$${hotel['price']}/night",style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor)),

              ],
            ),
          )
        ],
      ),
    );
  }
}
