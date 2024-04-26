import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:namoot/shared/theme.dart';
import 'package:namoot/widgets/custom_line.dart';
import 'package:namoot/widgets/service_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: whiteColor,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: greenSelectedColor,
          unselectedItemColor: greenColor,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedLabelStyle: greenTextStyle.copyWith(
            fontSize: 12,
            fontWeight: semiBold,
          ),
          unselectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 12,
            fontWeight: semiBold,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                weight: 20,
              ),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                weight: 20,
              ),
              label: 'الرسائل',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                weight: 20,
              ),
              label: 'الاشعارات',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                weight: 20,
              ),
              label: 'الحساب',
            ),
          ],
        ),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          scrollDirection: Axis.vertical,
          children: [
            buildHeader(),
            buildUserCard(),
            buildCarousel(),
            buildServices(),
          ]),
    );
  }

  Widget buildHeader() => Container(
        decoration: const BoxDecoration(
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
                        "assets/namoot.png",
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: greyColor, width: 1),
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/img_profile.png",
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 14,
                        height: 14,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColor,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.check_circle,
                            color: blueColor,
                            size: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "المستخدم",
                    style: blackTextStyle.copyWith(
                      color: greenColor,
                      fontSize: 13,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                "نعمان نشار محمد زين \nرقم التسجيل: 0000980999",
                style: blackTextStyle.copyWith(
                  color: greenColor,
                  fontSize: 16,
                  fontWeight: bold,
                  wordSpacing: 2.0,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      );

  Widget buildCarousel() => Container(
        margin: const EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: Container(
                decoration: const BoxDecoration(),
                height: 200,
                width: double.infinity,
                child: CarouselSlider(
                  items: [
                    Image.asset(
                      "assets/kubur.jpeg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image.asset(
                      "assets/kafan.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image.asset(
                      "assets/shalat.PNG",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ],
                  options: CarouselOptions(
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      viewportFraction: 1,
                      enlargeCenterPage: false,
                      scrollPhysics: const ClampingScrollPhysics()),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildServices() => Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "الخدمات",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const CustomDivider(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: greyColor, width: 1),
                  borderRadius: BorderRadius.circular(20),
                  color: whiteColor,
                  gradient: LinearGradient(
                    colors: [
                      blueColor,
                      redColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ServiceItem(
                        icon: const Icon(
                          Icons.search,
                          color: greenColor,
                          size: 25,
                        ),
                        title: "البحث",
                        onTap: () {},
                      ),
                      ServiceItem(
                        icon: const Icon(
                          Icons.groups,
                          color: greenColor,
                          size: 25,
                        ),
                        title: "المجموعات",
                        onTap: () {},
                      ),
                      ServiceItem(
                        icon: const Icon(
                          Icons.newspaper,
                          color: greenColor,
                          size: 25,
                        ),
                        title: "الاخبار",
                        onTap: () {},
                      ),
                      ServiceItem(
                        icon: const Icon(
                          Icons.menu_book,
                          color: greenColor,
                          size: 25,
                        ),
                        title: "المقالات",
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ServiceItem(
                        icon: const Icon(
                          Icons.security,
                          color: greenColor,
                          size: 25,
                        ),
                        title: "الحماية",
                        onTap: () {},
                      ),
                      ServiceItem(
                        icon: const Icon(
                          Icons.sensors_rounded,
                          color: greenColor,
                          size: 25,
                        ),
                        title: "السائقين",
                        onTap: () {},
                      ),
                      ServiceItem(
                        icon: const Icon(
                          Icons.accessibility,
                          color: greenColor,
                          size: 25,
                        ),
                        title: "المستخدمين",
                        onTap: () {},
                      ),
                      ServiceItem(
                        icon: const Icon(
                          Icons.book,
                          color: greenColor,
                          size: 25,
                        ),
                        title: "الدروس",
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
