// import 'package:flutter/material.dart';
// import 'package:nasa_app/layout/About/earth_near_by_object.dart';
// import 'package:nasa_app/layout/About/exoplanetes_body.dart';
// import 'package:nasa_app/layout/About/solor_system_screen.dart';

// class AboutSpaceBody extends StatelessWidget {
//   const AboutSpaceBody({super.key});
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Color(0xfffffff),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/space_background.jpg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           children: [
//             Container(
//               width: width * 0.9,
//               height: height * 0.3,
//               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//               margin: EdgeInsets.symmetric(
//                   vertical: height * 0.1, horizontal: width * 0.01),
//               decoration: BoxDecoration(
//                   // color: Color(0xff8940CB),
//                   borderRadius: BorderRadius.circular(8),
//                   image: const DecorationImage(
//                     image: AssetImage("assets/images/Earth-like Planets.jpg"),
//                   )),
//               child: const Column(children: [
//                 //Image.asset("assets/images/Earth-like Planets.jpg"),
//               ]
//                   //       ListTile(
//                   //         //leading: SvgPicture.asset(Assets.imagesUser),
//                   //         leading: Icon(
//                   //           Icons.info,
//                   //           color: Colors.white,
//                   //         ),
//                   //         title: InkWell(
//                   //           onTap: () {
//                   //             //  Navigator.pushNamed(
//                   //             //         context, InformationView.routeName)
//                   //             //   Navigator.of(context)
//                   //             //       .push(MaterialPageRoute(
//                   //             // builder: (context) => const InformationView(),
//                   //           },
//                   //           child: InkWell(
//                   //             onTap: () {
//                   //               Navigator.of(context).push(MaterialPageRoute(
//                   //                 builder: (context) => const ExoplanetesBody(),
//                   //               ));
//                   //             },
//                   //             child: Text(
//                   //               " Exoplanets",
//                   //               style: TextStyle(color: Colors.white),
//                   //             ),
//                   //           ),
//                   //         ),
//                   //         trailing: const Icon(
//                   //           Icons.arrow_forward_ios_rounded,
//                   //           color: Colors.white,
//                   //         ),
//                   //       ),
//                   //       Divider(
//                   //         height: 2,
//                   //         color: Theme.of(context).brightness == Brightness.dark
//                   //             ? Colors.white
//                   //             : const Color(0xffE5E7EB),
//                   //         indent: 30,
//                   //         endIndent: 30,
//                   //       ),
//                   //       ListTile(
//                   //         //leading: SvgPicture.asset(Assets.imagesUser),
//                   //         leading: Icon(
//                   //           Icons.info,
//                   //           color: Colors.white,
//                   //         ),
//                   //         title: InkWell(
//                   //           onTap: () {
//                   //             Navigator.of(context).push(MaterialPageRoute(
//                   //               builder: (context) => const SolorSystemScreen(),
//                   //             ));
//                   //           },
//                   //           child: Text(
//                   //             " Solar System",
//                   //             style: TextStyle(color: Colors.white),
//                   //           ),
//                   //         ),
//                   //         trailing: const Icon(
//                   //           Icons.arrow_forward_ios_rounded,
//                   //           color: Colors.white,
//                   //         ),
//                   //       ),
//                   //       Divider(
//                   //         height: 2,
//                   //         color: Theme.of(context).brightness == Brightness.dark
//                   //             ? Colors.white
//                   //             : const Color(0xffE5E7EB),
//                   //         indent: 30,
//                   //         endIndent: 30,
//                   //       ),
//                   //       ListTile(
//                   //         //leading: SvgPicture.asset(Assets.imagesUser),
//                   //         leading: Icon(
//                   //           Icons.info,
//                   //           color: Colors.white,
//                   //         ),
//                   //         title: InkWell(
//                   //           onTap: () {
//                   //             Navigator.of(context).push(MaterialPageRoute(
//                   //               builder: (context) => const EarthNearByObject(),
//                   //             ));
//                   //           },
//                   //           child: Text(
//                   //             " Earth Near objects",
//                   //             style: TextStyle(color: Colors.white),
//                   //           ),
//                   //         ),
//                   //         trailing: const Icon(Icons.arrow_forward_ios_rounded,
//                   //             color: Color(0xff9DA4AE)),
//                   //       ),
//                   //       Divider(
//                   //         height: 2,
//                   //         color: Theme.of(context).brightness == Brightness.dark
//                   //             ? Colors.white
//                   //             : const Color(0xffE5E7EB),
//                   //         indent: 30,
//                   //         endIndent: 30,
//                   //       ),
//                   //     ],
//                   ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:nasa_app/layout/About/earth_near_by_object.dart';
import 'package:nasa_app/layout/About/exoplanetes_body.dart';
import 'package:nasa_app/layout/About/solor_system_screen.dart';

class AboutSpaceBody extends StatelessWidget {
  const AboutSpaceBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/space_background.jpg'), // Your background image
                fit: BoxFit.cover,
              ),
              // borderRadius: BorderRadius.circular(16),
            ),
          ),
          // Photos with text
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                // First photo
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SolorSystemScreen()),
                      );
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/solor.jpg', // Your photo asset
                            width: width * 0.7,
                            height: height * 0.2,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 70,
                          left: 0,
                          child: Text(
                            'Solor System',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Second photo
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EarthNearByObject()),
                      );
                    },
                    child: Stack(
                      children: [
                        // Image.asset(
                        //   'assets/images/Earth-like Planets.jpg', // Your photo asset
                        //   width: width * 0.7,
                        //   height: height * 0.2,
                        //   fit: BoxFit.cover,
                        // ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/black.jpg', // Your photo asset
                            width: width * 0.7,
                            height: height * 0.2,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 70,
                          left: 0,
                          child: Text(
                            'Black Hole',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Third photo
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExoplanetesBody()),
                      );
                    },
                    child: Stack(
                      children: [
                        // Image.asset(
                        //   'assets/images/Earth-like Planets.jpg', // Your photo asset
                        //   width: width * 0.7,
                        //   height: height * 0.2,
                        //   fit: BoxFit.cover,
                        // ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/exo.jpg', // Your photo asset
                            width: width * 0.7,
                            height: height * 0.2,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 70,
                          left: 0,
                          child: Text(
                            'Exoplanetes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Placeholder for Screen1
