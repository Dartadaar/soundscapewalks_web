import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/instalacja_trailer.webm')
      ..initialize().then((_) {
        _controller.setVolume(0.0);
        _controller.setLooping(true);
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
          child: _controller.value.isInitialized
              ? LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox.expand(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                          width: constraints.maxWidth * _controller.value.aspectRatio,
                          height: constraints.maxHeight,
                          child: VideoPlayer(_controller),
                        ),
                    ),
                  );
                }
              )
              : Container(),
        );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
