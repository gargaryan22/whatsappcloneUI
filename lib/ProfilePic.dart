import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfilePic extends StatefulWidget {
  @override
  _ProfilePicState createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb128C7E),
      ),
      body: Column(
        children: [
          Container(
            height: 250.0,
            width: MediaQuery.of(context).size.width,
            child: Image(image: CachedNetworkImageProvider("https://i.pravatar.cc/1200?img=52")),

          ),
        ],
      ),
    );
  }
}
