// import 'package:flutter/material.dart';
// import 'package:nasa_app/layout/About/about_app_body.dart';
// import 'package:nasa_app/layout/home_layout/home_view_body.dart';
// import 'package:nasa_app/layout/quizes_layout/quizes_view.dart';
// import 'package:nasa_app/layout/shop_layout/shop_view.dart';

// class HomeView extends StatefulWidget {
//   HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   int selectedindex = 0;

//   List<Widget> items = [
//     const HomeViewBody(),
//     const AboutSpaceBody(),
//     ShopView(),
//     QuizesView(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: items[selectedindex],
//         backgroundColor: Colors.white,
//         bottomNavigationBar: NavigationBar(
//             elevation: 0,
//             backgroundColor: Color(0xff1B0B87),
//             // selectedItemColor: Colors.white,
//             selectedIndex: items.indexOf(items[selectedindex]),
//             onDestinationSelected: (int index) {
//               setState(() {
//                 selectedindex = index;
//               });
//             },
//             // currentIndex: selectedindex,
//             // type: BottomNavigationBarType.fixed, // This is all you need!

//             destinations: [
//               NavigationDestination(
//                 icon: Icon(Icons.home),
//                 label: "Home",
//               ),
//               NavigationDestination(
//                   icon: Icon(Icons.info), label: "About Space"),
//               NavigationDestination(icon: Icon(Icons.shop), label: "Shop"),
//               NavigationDestination(
//                   icon: Icon(Icons.emoji_events), label: "Quizes"),
//             ]));
//   }
// }
import 'package:flutter/material.dart';
import 'package:nasa_app/layout/About/about_app_body.dart';
import 'package:nasa_app/layout/home_layout/home_view_body.dart';
import 'package:nasa_app/layout/quizes_layout/quiz_view.dart';
import 'package:nasa_app/layout/shop_layout/shop_view.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedindex = 0;

  List<Widget> items = [
    const HomeViewBody(),
    const AboutSpaceBody(),
    ShopView(),
    const QuizesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[selectedindex],
      backgroundColor: Colors.white,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor:
              const Color(0xff1B0B87), // Dark blue background color
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Colors.white, // Change label color to white
            ),
          ),
          indicatorColor: Colors.white, // No default indicator color
        ),
        child: NavigationBar(
          elevation: 0,
          selectedIndex: selectedindex,
          onDestinationSelected: (int index) {
            setState(() {
              selectedindex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              // icon: ImageIcon(AssetImage("assets/images/image_5.jpg")),
              icon: Icon(Icons.blur_circular_outlined),
              label: "Space",
            ),
            NavigationDestination(
              icon: Icon(Icons.shop),
              label: "Shop",
            ),
            NavigationDestination(
              icon: Icon(Icons.emoji_events),
              label: "Quizes",
            ),
          ],
        ),
      ),
    );
  }
}
