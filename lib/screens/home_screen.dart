import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:namoot/shared/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        buildHeader(),
        buildCarousel(),
      ]),
    );
  }

  Widget buildHeader() => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(whiteColor, BlendMode.multiply),
              image: NetworkImage(
                'https://1.bp.blogspot.com/-xiWcT4mdT7k/VxCHv4UzFKI/AAAAAAAAZl8/iM7g3czO3egVKM8sUlsNqiy5i32qHZisgCK4B/s1600/IMG-20160415-WA0017.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  blackColor.withOpacity(0.5),
                  whiteColor.withOpacity(0.5)
                ])),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'namoot.png',
                        width: 100,
                        height: 100,
                      ),
                      Text("نموت",
                          style: blackTextStyle.copyWith(
                              fontSize: 25, fontWeight: bold))
                    ],
                  ),
                  Center(
                      child: Text(
                    "أهلا وسهلا بك في نموت\nرعاية الذكريات بإكرام",
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.right,
                  ))
                ]),
          ),
        ),
      );

  Widget buildUserCard() => Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      'assets/img_profile.png',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: blueColor,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildCarousel() => Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 25.0,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(),
                height: 200,
                width: double.infinity,
                child: CarouselSlider(
                  items: [
                    Image.asset(
                      'kafan.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image.asset(
                      'kafan.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image.asset(
                      'kafan.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ],
                  options: CarouselOptions(
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      viewportFraction: 1,
                      enlargeCenterPage: false,
                      scrollPhysics: ClampingScrollPhysics()),
                ),
              ),
            ),
          ],
        ),
      );
}
