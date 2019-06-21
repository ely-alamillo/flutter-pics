import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int idx) {
        return buildImage(images[idx]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Column(
        children: <Widget>[
          Image.network(image.url),
          SizedBox(height: 15),
          Text(image.title),
        ],
      ),
    );
  }
}
