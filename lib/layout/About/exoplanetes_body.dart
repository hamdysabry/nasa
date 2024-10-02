import 'package:flutter/material.dart';
import 'package:nasa_app/widget/exoplanete_widget.dart';
import 'package:video_player/video_player.dart';

class ExoplanetesBody extends StatefulWidget {
  const ExoplanetesBody({super.key});

  @override
  State<ExoplanetesBody> createState() => _ExoplanetesBodyState();
}

class _ExoplanetesBodyState extends State<ExoplanetesBody> {
  late VideoPlayerController _controller;
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/exo.mp4')
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
          title: Text("Exoplanets", style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
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
                        : Center(
                            child:
                                CircularProgressIndicator()), // Loading indic
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Image.asset("assets/images/exo_2.png"),
                  Text(
                      "Exoplanets, or extrasolar planets, are planets located outside our solar system that orbit a star other than the Sun. The study of exoplanets has gained significant traction, especially since the 1990s, when astronomers first confirmed their existence. There are now thousands of known exoplanets, thanks largely to space telescopes like Kepler, TESS (Transiting Exoplanet Survey Satellite), and ground-based observatories.",
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    children: [
                      Text(
                        "Discovery Methods:",
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
                  ExoplaneteWidget(
                    title:
                        "1.	Transit Method: This is the most common technique, where astronomers detect the dimming of a star's light as a planet passes in front of it. This method has led to the discovery of thousands of exoplanets.",
                    imagepath: "assets/images/Transit Method_gif.gif",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ExoplaneteWidget(
                    title:
                        "2.	Radial Velocity Method: Also known as the Doppler method, this technique measures the wobble of a star caused by the gravitational pull of an orbiting planet. This wobble affects the star's light spectrum.",
                    imagepath: "assets/images/Radial Velocity Method_gif.gif",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ExoplaneteWidget(
                    title:
                        "3.	Direct Imaging: This involves capturing images of exoplanets by blocking out the star’s light, allowing scientists to study the planet's atmosphere and composition.",
                    imagepath: "assets/images/Direct Imaging_gif.gif",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ExoplaneteWidget(
                    title:
                        "4.	Gravitational Microlensing: This technique detects exoplanets by observing the light from a distant star that is bent and magnified by the gravity of a planet passing in front of it.",
                    imagepath: "assets/images/Gravitational-Wave.webp",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "Types of Exoplanets:",
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
                  ExoplaneteWidget(
                    title:
                        "1.	Hot Jupiters: Gas giants that orbit very close to their stars, resulting in high temperatures. They have short orbital periods.",
                    imagepath: "assets/images/gif6.gif",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ExoplaneteWidget(
                    title:
                        "2.	Super-Earths: Planets larger than Earth but smaller than Neptune, often with the potential for rocky surfaces or atmospheres.",
                    imagepath: "assets/images/gif7.gif",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ExoplaneteWidget(
                    title:
                        "3.	Earth-like Planets: These are rocky planets located in the habitable zone of their stars, where conditions might allow for liquid water.",
                    imagepath: "assets/images/gif8.gif",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ExoplaneteWidget(
                    title:
                        "4.	Ice Giants: Similar to Uranus and Neptune, these planets have a significant amount of water, ammonia, and methane in their atmospheres.",
                    imagepath: "assets/images/gif9.gif",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "Habitability and Research:",
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
                  Text(
                      "•	Scientists are interested in studying exoplanets for signs of habitability and potential life. This includes analyzing atmospheres for bio signatures (like oxygen and methane) and understanding planetary compositions and climates",
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "Future Exploration:",
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
                  Text(
                      "•	Upcoming missions, such as the James Webb Space Telescope (JWST) and the European Space Agency's ARIEL mission, are expected to enhance our understanding of exoplanets, including their atmospheres and potential for life.",
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "Impact on Astronomy:",
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
                  Text(
                    "•	The study of exoplanets has transformed our understanding of the universe and our place in it, raising questions about the prevalence of planets, the potential for life elsewhere, and the diversity of planetary systems.",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                ],
              )),
        ));
  }
}
