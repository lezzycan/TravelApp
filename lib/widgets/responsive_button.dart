import 'package:bloc_travel_app/constants/trv_color.dart';
import 'package:bloc_travel_app/widgets/trv.text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key, this.width=120, this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: TrvColors.mainColor 
        ),
        child: Row(
         
         mainAxisAlignment: isResponsive!=true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(margin:const EdgeInsets.only(left: 20),
                child:const TrvText(text: "Book Trip Now", color:Colors.white)):Container(),
            Image.asset("img/button-one.png"),

          ],
        ),
      ),
    );
  }
}
