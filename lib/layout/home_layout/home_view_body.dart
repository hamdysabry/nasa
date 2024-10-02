// import 'package:flutter/material.dart';
// import 'package:nasa_app/widget/container_widget.dart';
// import 'package:video_player/video_player.dart';

// class HomeViewBody extends StatefulWidget {
//   const HomeViewBody({super.key});

//   @override
//   State<HomeViewBody> createState() => _HomeViewBodyState();
// }

// class _HomeViewBodyState extends State<HomeViewBody> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset('assets/videos/earth-bg.mp4')
//       ..initialize().then((_) {
//         setState(() {});
//         _controller.play();
//         _controller.setLooping(true);
//       }).catchError((error) {
//         print("Video failed to load: $error");
//       });
//     _controller.addListener(() {
//       setState(() {}); // Forces widget to rebuild when video state changes
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.all(60.0),
//           child: Text(
//             "Astronova",
//             style: TextStyle(
//               fontSize: 24,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         // actions: [
//         //   Container(
//         //     width: width * 0.5,
//         //     height: height * 0.5,
//         //     child: Image(
//         //       image: AssetImage("assets/images/logo.png"),
//         //       fit: BoxFit.fill,
//         //     ),
//         //   )
//         // ],
//         leading: Image(
//           image: AssetImage("assets/images/logo.png"),
//           fit: BoxFit.cover,
//         ),
//       ),
//       backgroundColor: Color(0xff8940CB),
//       body: SingleChildScrollView(
//         child: Container(
//           decoration: const BoxDecoration(
//             color: Colors.black,
//             // image: DecorationImage(
//             //   image: AssetImage("assets/images/image_1.jpg"),
//             //   fit: BoxFit.fill,
//             // )),
//           ),
//           child: Column(
//             children: [
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.end,
//               //   children: [
//               //     Text(
//               //       "welcome back",
//               //       style: TextStyle(
//               //           color: Colors.white,
//               //           fontSize: 20,
//               //           fontWeight: FontWeight.bold),
//               //     ),
//               //     Container(
//               //       padding: const EdgeInsets.all(10),
//               //       height: height * 0.09,
//               //       width: width * 0.3,
//               //       decoration: const BoxDecoration(
//               //           color: Colors.transparent,
//               //           image: DecorationImage(
//               //             image: AssetImage("assets/images/logo.png"),
//               //             fit: BoxFit.fill,
//               //           )),
//               //     ),
//               //   ],
//               // ),
//               Container(
//                 height: height * 0.3,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 child: _controller.value.isInitialized
//                     ? AspectRatio(
//                         aspectRatio: _controller.value.aspectRatio,
//                         child: VideoPlayer(_controller),
//                       )
//                     : Center(
//                         child: CircularProgressIndicator()), // Loading indic
//               ),

//               SizedBox(
//                 height: height * 0.03,
//               ),
//               // ContainerWidget(
//               //   imagepath: "assets/images/gif4.webp",
//               //   title: 'HST',
//               //   subtitle: "300-1500km",
//               //   description1: "Used for astronomical observations,",
//               //   description2: " capturing stunning images of the universe.",
//               // ),
//               // SizedBox(
//               //   height: height * 0.03,
//               // ),
//               // ContainerWidget(
//               //   imagepath: "assets/images/gif3.webp",
//               //   title: 'ISS',
//               //   subtitle: "500-1500km",
//               //   description1: "it's a habitable artificial satellite  ",
//               //   description2: "orbiting Earth and serves as a space ",
//               //   description3: "environment research laboratory. ",
//               // ),
//               // SizedBox(
//               //   height: height * 0.03,
//               // ),
//               // ContainerWidget(
//               //   imagepath: "assets/images/gif5.webp",
//               //   title: 'GPS',
//               //   subtitle: "300-1500km",
//               //   description1: "Part of the Global Positioning System (GPS)",
//               //   description2: "used for navigation.",
//               // ),
//               ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   return ContainerWidget(
//                     imagepath: "assets/images/gif5.webp",
//                     title:
//                         'HST /n 300-1500km /n Used for astronomical observations /n capturing stunning images of the universe. ',
//                   );
//                 },
//                 itemCount: 3,
//               ),

//               // SizedBox(
//               //   height: height * 0.03,
//               // ),
//               Column(children: [
//                 Container(
//                   width: width * 0.9,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Image(
//                     image: AssetImage("assets/images/image_5.jpg"),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 SizedBox(
//                   height: height * 0.03,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     "Since inception, NASA has selected 360 astronaut candidates: 299 men, 61 women; 212 military, 138 civilians; 191 pilots, 159 non-pilots.",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     "The first class of NASA astronauts was selected in 1959. They are known as the Mercury 7.",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//                 Image.asset("assets/images/wave Gif.gif"),
//                 Container(
//                   width: width * 0.9,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Image(
//                     image: AssetImage("assets/images/planetes.jpg"),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 SizedBox(
//                   height: height * 0.03,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     "The solar system has eight planets: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, and Neptune. There are five officially recognized dwarf planets in our solar system: Ceres, Pluto, Haumea, Makemake, and Eris.",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     "The first four planets from the Sun are Mercury, Venus, Earth, and Mars. These inner planets also are known as terrestrial planets because they have solid surfaces.",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ])
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa_app/widget/container_widget.dart'; // Import your custom container widget
import 'package:video_player/video_player.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/earth-bg.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      }).catchError((error) {
        print("Video failed to load: $error");
      });
    _controller.addListener(() {
      setState(() {}); // Forces widget to rebuild when video state changes
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Map<String, String>> items = [
      {
        'imagePath': 'assets/images/gif3.webp',
        'title':
            'HST \n 300-1500km \n Used for astronomical observations \n capturing stunning images of the universe.'
      },
      {
        'imagePath': 'assets/images/gif4.webp',
        'title':
            'ISS \n 400-600km \n International Space Station \n Serves as a space environment research laboratory.'
      },
      {
        'imagePath': 'assets/images/gif5.webp',
        'title':
            'GPS \n 20,000 km \n Global Positioning System \n Used for satellite navigation and positioning.'
      },
      {
        'imagePath': 'assets/images/giphy.gif',
        'title':
            'Exoplanets \n 300-1500km \n Part of the Global Positioning System (GPS) \n used for navigation.'
      },
      // Add more items as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Text(
            "Astronova",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color(0xff05021A),
        elevation: 0,
        leading: Image(
          image: AssetImage("assets/images/logo.png"),
          fit: BoxFit.cover,
        ),
      ),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            children: [
              Container(
                height: height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Center(
                        child:
                            CircularProgressIndicator()), // Loading indicator
              ),
              SizedBox(height: height * 0.03),

              // Horizontal List of ContainerWidgets
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: height * 0.44,
                  width:
                      double.infinity, // Set height for horizontal scroll view
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal, // Horizontal scrolling
                    itemCount: items.length, // The length of the items list
                    itemBuilder: (context, index) {
                      return ContainerWidget(
                        imagepath: items[index][
                            'imagePath']!, // Access imagePath dynamically from list
                        title: items[index]
                            ['title']!, // Access title dynamically from list
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Display two items vertically
                      // crossAxisSpacing: 10.0, // Space between columns
                      // mainAxisSpacing: 10.0, // Space between rows
                      // childAspectRatio: 0.75, // Aspect ratio of each grid item
                    ),
                  ),
                ),
              ),

              SizedBox(height: height * 0.03),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/image_5.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Since inception, NASA has selected 360 astronaut candidates: 299 men, 61 women; 212 military, 138 civilians; 191 pilots, 159 non-pilots.",
                      style: GoogleFonts.orbitron(
                        // fontSize: 24,
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "The first class of NASA astronauts was selected in 1959. They are known as the Mercury 7.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Image.asset("assets/images/wave Gif.gif"),
                  // Container(
                  //   width: width * 0.9,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   child: Image(
                  //     image: AssetImage("assets/images/planetes.jpg"),
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                  // SizedBox(height: height * 0.03),
                  // const Padding(
                  //   padding: EdgeInsets.all(8.0),
                  //   child: Text(
                  //     "The solar system has eight planets: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, and Neptune. There are five officially recognized dwarf planets in our solar system: Ceres, Pluto, Haumea, Makemake, and Eris.",
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // ),
                  // const Padding(
                  //   padding: EdgeInsets.all(8.0),
                  //   child: Text(
                  //     "The first four planets from the Sun are Mercury, Venus, Earth, and Mars. These inner planets also are known as terrestrial planets because they have solid surfaces.",
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // ),
                  SizedBox(
                    height: height * 0.5,
                    width: double.infinity,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical, // Horizontal scrolling
                      itemCount: 1, // The length of the items list
                      itemBuilder: (context, index) {
                        return ContainerWidget(
                          imagepath:
                              'assets/images/planetes.jpg', // Access imagePath dynamically from list
                          title:
                              "The solar system has eight planets: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, and Neptune. \n There are five officially recognized dwarf planets in our solar system: Ceres, Pluto, Haumea, Makemake, and Eris.\n The first four planets from the Sun are Mercury, Venus, Earth, and Mars. \nThese inner planets also are known as terrestrial planets because they have solid surfaces.", // Access title dynamically from list
                        );
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1, // Display two items vertically
                        // crossAxisSpacing: 10.0, // Space between columns
                        // mainAxisSpacing: 10.0, // Space between rows
                        // childAspectRatio: 0.75, // Aspect ratio of each grid item
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
