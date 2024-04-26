import 'package:flutter/material.dart';
import 'package:namoot/shared/theme.dart';

class ServiceItem extends StatelessWidget {
  final Icon icon;
  final String title;
  final VoidCallback? onTap;
  const ServiceItem(
      {super.key, required this.title, this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          splashColor: greyColor,
          hoverColor: greyColor,
          highlightColor: greyColor,
          focusColor: greyColor,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.1),
                  blurRadius: 2,
                  offset: const Offset(0, 2),
                )
              ],
            ),
            child: Center(
              child: icon,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 14),
        )
      ],
    );
  }
}
