import 'package:flutter/material.dart';
import 'package:nasa_app/widget/exoplanete_widget.dart';
import 'package:video_player/video_player.dart';

class SolorSystemScreen extends StatefulWidget {
  const SolorSystemScreen({super.key});

  @override
  State<SolorSystemScreen> createState() => _SolorSystemScreenState();
}

class _SolorSystemScreenState extends State<SolorSystemScreen> {
  late VideoPlayerController _controller;
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/solor.mp4")
      ..initialize().then((_) {
        setState(() {});
        _controller.setVolume(0.0);

        _controller.play();
        _controller.setLooping(true);
      }).catchError((error) {
        print("Video failed to load: $error");
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
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff1B0B87),
          title: const Text("Star explosion theory",
              style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
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
                        : const Center(
                            child:
                                CircularProgressIndicator()), // Loading indic
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Image.asset("assets/images/Star explosion.jpeg"),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Text(
                      "Star explosion theory primarily refers to the mechanisms behind stellar explosions, such as supernovae, which are among the most energetic events in the universe.",
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Types of Stellar Explosions",
                        style: TextStyle(
                            color: Color(0xff0070C0),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("1.	Supernova Types:",
                        style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ExoplaneteWidget(
                    title:
                        "o	Type I Supernova: These occur in binary systems where a white dwarf accretes matter from a companion star, reaching a critical mass (the Chandrasekhar limit) and exploding. They are characterized by a lack of hydrogen lines in their spectra.",
                    imagepath: "assets/images/gif10.webp",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ExoplaneteWidget(
                    title:
                        "o	Type II Supernova: These result from the gravitational collapse of massive stars (more than 8 times the mass of the Sun) after they exhaust their nuclear fuel. This leads to a core collapse, followed by an explosion. They exhibit hydrogen lines in their spectra.",
                    imagepath: "assets/images/gif11.gif",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Types of Stellar Explosions",
                        style: TextStyle(
                            color: Color(0xff0070C0),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("1.	Core Collapse:",
                        style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ExoplaneteWidget(
                    title:
                        "o	In massive stars, nuclear fusion creates heavier elements in the core. Once iron is produced, fusion stops producing energy, leading to an imbalance. The core collapses under gravity, and if the core exceeds a certain mass, it can trigger a supernova explosion.",
                    imagepath: "assets/images/gif12.gif",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("2.	Thermonuclear Explosion:",
                        style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ExoplaneteWidget(
                    title:
                        "o	For Type I supernovae, when a white dwarf gains enough mass (through accretion from a companion star or merging with another white dwarf), it undergoes rapid carbon fusion, leading to a thermonuclear explosion.",
                    imagepath: "assets/images/gif13.gif",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Observational Evidence",
                        style: TextStyle(
                            color: Color(0xff0070C0),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Text(
                      "•	Supernovae can outshine entire galaxies for a brief period and are observed across the universe. Astronomers use them as standard candles to measure cosmic distances and study the expansion of the universe.",
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Importance in Cosmology",
                        style: TextStyle(
                            color: Color(0xff0070C0),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Text(
                      "•	Supernovae provide insight into stellar evolution, the lifecycle of galaxies, and the chemical enrichment of the universe. They also play a role in understanding dark energy and the universe's expansion",
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    height: height * 0.09,
                  ),
                ],
              )),
        ));
  }
}
