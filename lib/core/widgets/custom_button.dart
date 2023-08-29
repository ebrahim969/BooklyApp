import 'package:bookly_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.backgroundColor, required this.textColor, this.borderRadius, required this.text});
 
 final Color backgroundColor;
 final Color textColor;
 final BorderRadius? borderRadius;
 final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius ?? BorderRadius.circular(16)
          )
        ),
       onPressed: (){},
       child:  Text(text, style: Styles.textStyle16.copyWith(
        color: textColor,
        fontWeight: FontWeight.bold
       ),),
       ),
    );
  }
}