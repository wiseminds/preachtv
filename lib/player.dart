import 'package:flutter/material.dart';
import 'package:preachtv/constants.dart';
import 'package:video_player/video_player.dart';
import 'package:vidflux/vidflux.dart';

import 'loading_indicator.dart';

class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  final _controller = VideoPlayerController.network(
      // 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8' ??
      PLAYER_URL);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: VidFlux(
        videoPlayerController: _controller,
        autoPlay: true,
        // lockOrientation: isLocked,
        pauseOnDoubleTap: true,
        useVolumeControls: false,
        usebrightnessControls: false,
        mode: VideoPlayermode.normal,
        loadingIndicator: LoadingIndicator(),
      ),
    );
  }
}
