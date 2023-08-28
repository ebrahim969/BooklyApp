import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styels.dart';

class BookRateing extends StatelessWidget {
  const BookRateing({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:const [
         Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F),),
         SizedBox(width: 6.3,),
        Text("4.8", style: Styles.textStyle16,),
        SizedBox(width: 5,),
        Text("(2390)", style: Styles.textStyle14),
      ],
    );
  }
}