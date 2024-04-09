// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class CameraItem extends StatefulWidget {
  final String url;

  const CameraItem({super.key, required this.url});

  @override
  _CameraItemState createState() => _CameraItemState();
}

class _CameraItemState extends State<CameraItem> {
  late VlcPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = VlcPlayerController.network(
      widget.url,
      hwAcc: HwAcc.full,
      autoPlay: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return VlcPlayer(
      controller: _controller,
      aspectRatio: _controller.value.aspectRatio,
      placeholder: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
