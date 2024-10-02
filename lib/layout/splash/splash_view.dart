import 'package:flutter/material.dart';
import 'package:nasa_app/layout/register_layout/register_screen.dart';
import 'package:video_player/video_player.dart'; // Your RegisterView screen

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/splash_video.mp4")
      ..initialize().then((_) {
        setState(
            () {}); // Ensure the first frame is shown after the video is initialized.
        _controller.play(); // Start playing the video.
      });

    // Navigate to the Register screen after the video completes.
    // _controller.addListener(() {
    //   if (_controller.value.position == _controller.value.duration) {
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(builder: (context) => RegisterScreen()),
    //     );
    //   }
    // });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 14), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RegisterScreen()),
      );
    });
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : const CircularProgressIndicator(), // Show loading spinner while video is initializing.
    );
  }
}
