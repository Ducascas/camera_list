import 'package:camera_list/common/common.dart';
import 'package:camera_list/ui/ui.dart';
import 'package:flutter/material.dart';

class CameraList extends StatelessWidget {
  const CameraList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera List', style: textStyle),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: cameraUrls.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _textList(index),
                _boxCamera(index),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CameraView(url: cameraUrls[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }

  SizedBox _boxCamera(int index) {
    return SizedBox(
      width: 60,
      height: 60,
      child: CameraItem(url: cameraUrls[index]),
    );
  }

  Text _textList(int index) {
    return Text(
      'Camera ${index + 1}',
      style: textStyle,
    );
  }
}
