import 'package:flutter/material.dart';
import 'package:nasa_app/widget/earth_nearby_widget.dart';
import 'package:video_player/video_player.dart';

class EarthNearByObject extends StatefulWidget {
  const EarthNearByObject({super.key});

  @override
  State<EarthNearByObject> createState() => _EarthNearByObject();
}

class _EarthNearByObject extends State<EarthNearByObject> {
  late VideoPlayerController _controller;
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/_space(MP4).mp4')
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
          title:
              const Text("Black Hall", style: TextStyle(color: Colors.white)),
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
                  EarthNearByWidget(
                    planeteName: "Mercury planet:",
                    imagepath: "assets/images/gif6.gif",
                    description:
                        "Mercury is the closest planet to the Sun and the smallest planet in our solar system. Here are some key facts about Mercury:",
                    title1: "Basic Characteristics",
                    description1_1:
                        "•	Diameter: About 4,880 kilometers (3,032 miles), making it slightly larger than the Moon.",
                    description1_2: "•	Orbit around the Sun: 87.97 Earth days",
                    title2: "Surface and Composition",
                    description2_1:
                        "•	Surface: Mercury's surface is heavily cratered, resembling that of the Moon. It has a thin atmosphere and features cliffs (called lobate scarps) that indicate past tectonic activity.",
                    description2_2:
                        "•	Composition: Mercury is composed primarily of traces of iron and nickel.",
                    title3: "Temperature and Atmosphere",
                    description3_1:
                        "•	Temperature: Due to its proximity to the Sun, temperatures on Mercury can be extreme. Daytime temperatures can reach up to 430 degrees Celsius (800 degrees Fahrenheit), while nighttime temperatures can plummet to -180 degrees Celsius (-290 degrees Fahrenheit).",
                    description3_2:
                        "•	Atmosphere: Mercury has a very thin atmosphere, composed mainly of oxygen, sodium, hydrogen, helium, and potassium. This thin atmosphere cannot retain heat, leading to extreme temperature fluctuations.",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  EarthNearByWidget(
                    planeteName: "Venus planet:",
                    imagepath: "assets/images/gif14.gif",
                    description:
                        "Venus is the second planet from the Sun and is often referred to as Earth’s “sister planet” due to its similar size and composition. Here are some key facts about Venus:",
                    title1: "Basic Characteristics",
                    description1_1:
                        "•	Diameter: About 12,104 kilometers (7,521 miles), making it similar in size to Earth.",
                    description1_2:
                        "•	Orbit: Venus takes about 225 Earth days to complete one orbit around the Sun.",
                    title2: "Surface and Composition",
                    description2_1:
                        "•	Surface: Venus has a rocky surface with vast plains, numerous volcanoes, and highland regions. It features large volcanic structures and some evidence of past volcanic activity.",
                    description2_2:
                        "•	Atmosphere: The atmosphere is thick and composed mainly of carbon dioxide (about 96.5%) and nitrogen (about 3.5%), with clouds of sulfuric acid.",
                    title3: "Climate and Temperature",
                    description3_1:
                        "•	Temperature: Venus has an average surface temperature of around 467 degrees Celsius (872 degrees Fahrenheit), making it the hottest planet in the solar system due to a runaway greenhouse effect.",
                    description3_2:
                        "•	Pressure: The atmospheric pressure on Venus is about 92 times that of Earth, comparable to being nearly a kilometer underwater on Earth.",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  EarthNearByWidget(
                    planeteName: "Earth planet:",
                    imagepath: "assets/images/gif15.gif",
                    description:
                        "Earth is the third planet from the Sun and is the largest planet in our solar system. Here are some key facts about Earth:",
                    title1: "Basic Characteristics",
                    description1_1:
                        "•	Diameter: About 12,742 kilometers (7,918 miles), making it about 12 times the diameter of the moon.",
                    description1_2:
                        "•	Atmosphere: Composed mainly of nitrogen (78%) and oxygen (21%), with trace amounts of other gases, including carbon dioxide and argon.",
                    title2: "Surface and Composition",
                    description2_1:
                        "•	Water: Approximately 71% of Earth's surface is covered by water, mainly in oceans, with the remaining 29% consisting of continents and islands.",
                    description2_2:
                        "•	Landforms: Earth features diverse landscapes, including mountains, valleys, deserts, forests, and plains.",
                    title3: "Climate and Weather",
                    description3_1:
                        "•	Climate Zones: Earth has a variety of climate zones, from polar to tropical, influenced by latitude, altitude, and proximity to oceans",
                    description3_2:
                        "•	Weather: The planet experiences a wide range of weather patterns due to its atmosphere, including rain, snow, wind, and storms.",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  EarthNearByWidget(
                    planeteName: "Mars planet:",
                    imagepath: "assets/images/gif16.gif",
                    description:
                        "Mars is the fourth planet from the Sun in our solar system and is often referred to as the Red Planet due to its reddish appearance, which comes from iron oxide (rust) on its surface. Here are some key points about Mars:",
                    title1: "Basic Characteristics",
                    description1_1:
                        "•	Diameter: About 6,792 kilometers (3,959 miles), making it about 6 times the diameter of Earth.",
                    description1_2:
                        "•	Orbit: Mars takes about 686 Earth days to complete one orbit around the Sun.",
                    title2: "Surface and Composition",
                    description2_1:
                        "•	Surface Features: Mars has the largest volcano in the solar system, Olympus Mons, and a massive canyon system, Valles Marineris. The planet also has polar ice caps made of water and dry ice (frozen carbon dioxide).",
                    description2_2:
                        "•	Atmosphere: The atmosphere is thin, composed mostly of carbon dioxide (about 95%), with traces of nitrogen and argon. This thin atmosphere contributes to temperature fluctuations and does not provide substantial protection from solar and cosmic radiation.",
                    title3: "Climate and Temperature",
                    description3_1:
                        "•	Temperature: Temperatures can vary widely, averaging around -80 degrees Fahrenheit (-62 degrees Celsius), but they can range from about -195°F (-125°C) near the poles in winter to 70°F (20°C) at equatorial regions in summer.",
                    description3_2:
                        "•	Seasons: Mars experiences seasons due to its axial tilt, similar to Earth, but they last about twice as long due to its longer orbital period.",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  EarthNearByWidget(
                    planeteName: "Jupiter planet:",
                    imagepath: "assets/images/gif6.gif",
                    description:
                        "Jupiter is the fifth planet from the Sun and is the largest planet in our solar system. Here are some key facts about Jupiter:",
                    title1: "Basic Characteristics",
                    description1_1:
                        "•	Diameter: About 142,984 kilometers (88,000 miles), making it about 5 times the diameter of Earth.",
                    description1_2:
                        "•	Orbit: Jupiter takes about 11.86 Earth days to complete one orbit around the Sun.",
                    title2: "Surface and Composition",
                    description2_1:
                        "•	Surface Features: Jupiter has the largest number of moons in the solar system, with the largest moon, Ganymede, being the largest moon of Jupiter.",
                    description2_2:
                        "•	Atmosphere: Jupiter has a thin atmosphere composed mostly of hydrogen and helium, with traces of oxygen and argon.",
                    title3: "Climate and Weather",
                    description3_1:
                        "•	Temperature: Jupiter's climate is characterized by a high surface temperature of 165 °C (350 °F) and a low surface temperature of 100 °C (212 °F).",
                    description3_2:
                        "•	Weather: Jupiter has a large number of storms and weather systems, including the Great Red Spot, which is caused by the presence of water droplets on Jupiter's surface.",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  EarthNearByWidget(
                    planeteName: "Saturn planet:",
                    imagepath: "assets/images/gif17.gif",
                    description:
                        "Saturn is the sixth planet from the Sun and is named after the Roman god of agriculture. Here are some key facts about Saturn:",
                    title1: "Basic Characteristics",
                    description1_1:
                        "•	Diameter: About 120,536 kilometers (69,000 miles), making it about 9 times the diameter of Earth.",
                    description1_2:
                        "•	Orbit: Saturn takes about 29.46 Earth days to complete one orbit around the Sun.",
                    title2: "Surface and Composition",
                    description2_1:
                        "•	Surface Features: Saturn has the largest number of moons in the solar system, with the largest moon, Titan, being the largest moon of Saturn.",
                    description2_2:
                        "•	Atmosphere: Saturn has a thin atmosphere composed mostly of hydrogen and helium, with traces of oxygen and argon.",
                    title3: "Climate and Weather",
                    description3_1:
                        "•	Temperature: Saturn's climate is characterized by a high surface temperature of 165 °C (350 °F) and a low surface temperature of 100 °C (212 °F).",
                    description3_2:
                        "•	Weather: Saturn has a large number of storms and weather systems, including the Great Red Spot, which is caused by the presence of water droplets on Saturn's surface.",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  EarthNearByWidget(
                    planeteName: "Uranus planet:",
                    imagepath: "assets/images/gif18.gif",
                    description:
                        "Uranus is the seventh planet from the Sun and is named after the Greek god of the sky. Here are some key facts about Uranus:",
                    title1: "Basic Characteristics",
                    description1_1:
                        "•	Diameter: About 51,118 kilometers (25,000 miles), making it about 2 times the diameter of Earth.",
                    description1_2:
                        "•	Orbit: Uranus takes about 84.01 Earth days to complete one orbit around the Sun.",
                    title2: "Surface and Composition",
                    description2_1:
                        "•	Surface Features: Uranus has the largest number of moons in the solar system, with the largest moon, Triton, being the largest moon of Uranus.",
                    description2_2:
                        "•	Atmosphere: Uranus has a thin atmosphere composed mostly of hydrogen and helium, with traces of oxygen and argon.",
                    title3: "Climate and Weather",
                    description3_1:
                        "•	Temperature: Uranus's climate is characterized by a high surface temperature of 165 °C (350 °F) and a low surface temperature of 100 °C (212 °F).",
                    description3_2:
                        "•	Weather: Uranus has a large number of storms and weather systems, including the Great Red Spot, which is caused by the presence of water droplets on Uranus's surface.",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  EarthNearByWidget(
                    planeteName: "Neptune planet:",
                    imagepath: "assets/images/gif9.gif",
                    description:
                        "Neptune is the eighth planet from the Sun and is named after the Roman god of the sea. Here are some key facts about Neptune:",
                    title1: "Basic Characteristics",
                    description1_1:
                        "•	Diameter: About 49,528 kilometers (30,000 miles), making it about 3 times the diameter of Earth.",
                    description1_2:
                        "•	Orbit: Neptune takes about 164.8 Earth days to complete one orbit around the Sun.",
                    title2: "Surface and Composition",
                    description2_1:
                        "•	Surface Features: Neptune has the largest number of moons in the solar system, with the largest moon, Triton, being the largest moon of Neptune.",
                    description2_2:
                        "•	Atmosphere: Neptune has a thin atmosphere composed mostly of hydrogen and helium, with traces of oxygen and argon.",
                    title3: "Climate and Weather",
                    description3_1:
                        "•	Temperature: Neptune's climate is characterized by a high surface temperature of 165 °C (350 °F) and a low surface temperature of 100 °C (212 °F).",
                    description3_2:
                        "•	Weather: Neptune has a large number of storms and weather systems, including the Great Red Spot, which is caused by the presence of water droplets on Neptune's surface.",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  EarthNearByWidget(
                    planeteName: "Pluto planet:",
                    imagepath: "assets/images/gif19.gif",
                    description:
                        "Pluto is a dwarf planet in the solar system and is named after the dwarf planet Pluto. Here are some key facts about Pluto:",
                    title1: "Basic Characteristics",
                    description1_1:
                        "•	Diameter: About 2,370 kilometers (1,200 miles), making it about 2 times the diameter of Earth.",
                    description1_2:
                        "•	Orbit: Pluto takes about 248 Earth days to complete one orbit around the Sun.",
                    title2: "Surface and Composition",
                    description2_1:
                        "•	Surface Features: Pluto has the largest number of moons in the solar system, with the largest moon, Triton, being the largest moon of Pluto.",
                    description2_2:
                        "•	Atmosphere: Pluto has a thin atmosphere composed mostly of hydrogen and helium, with traces of oxygen and argon.",
                    title3: "Climate and Weather",
                    description3_1:
                        "•	Temperature: Pluto's climate is characterized by a high surface temperature of 165 °C (350 °F) and a low surface temperature of 100 °C (212 °F).",
                    description3_2:
                        "•	Weather: Pluto has a large number of storms and weather systems, including the Great Red Spot, which is caused by the presence of water droplets on Pluto's surface.",
                  ),
                  SizedBox(
                    height: height * 0.09,
                  ),
                ],
              )),
        ));
  }
}
