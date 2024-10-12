import 'package:clean_architecture/core/utils/styles.dart';
import 'package:flutter/material.dart';
class CustomBotton extends StatelessWidget {
  const CustomBotton({Key? key, required this.backgroundColor, required this.textColor,  this.borderRadius, required this.text, this.fontSize}) : super(key: key);

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: (){},
        style: TextButton.styleFrom(
          backgroundColor:backgroundColor,
          shape:  RoundedRectangleBorder(
            borderRadius:borderRadius?? BorderRadius.circular(12,),
          ),
        ),
          child:
          Text(
           text,
            style: Style.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize:fontSize,
            ),
          ),
      ),
    );
  }
}
