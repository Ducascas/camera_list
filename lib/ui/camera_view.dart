import 'package:camera_list/common/common.dart';
import 'package:camera_list/ui/ui.dart';
import 'package:flutter/material.dart';

class CameraView extends StatelessWidget {
  final String url;

  const CameraView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera View', style: textStyle),
        centerTitle: true,
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: CameraItem(url: url)),
    );
  }
}
