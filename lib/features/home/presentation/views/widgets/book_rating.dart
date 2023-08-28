import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styels.dart';

class BookRateing extends StatelessWidget {
  const BookRateing({super.key, required this.mainAxisAlignment});
 final MainAxisAlignment  mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:const [
         Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 17,),
         SizedBox(width: 6.3,),
        Text("4.8", style: Styles.textStyle16,),
        SizedBox(width: 5,),
        Opacity(
          opacity: .7,
          child: Text("(2390)", style: Styles.textStyle14)),
      ],
    );
  }
}