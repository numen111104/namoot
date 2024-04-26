import 'package:flutter/material.dart';
import 'package:namoot/shared/theme.dart';

class CustomDivider extends StatelessWidget {
  final Color c1;
  final Color c2;
  final Color c3;
  const CustomDivider(
      {super.key,
      this.c1 = redColor,
      this.c2 = greenColor,
      this.c3 = blueColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.6,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [c1, c2, c3],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: const [0.0, 0.5, 1.0],
            tileMode: TileMode.clamp),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
    );
  }
}
