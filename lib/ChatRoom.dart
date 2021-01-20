import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ProfilePic.dart';

// ignore: must_be_immutable
class ChatRoom extends StatefulWidget {
  String name,image;
  ChatRoom({name,image}){
    this.name = name;
    this.image = image;
  }

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb128C7E),
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },),
        title: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePic()));
          },
          child: Container(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 23.0,
                  backgroundImage: CachedNetworkImageProvider(widget.image),
                ),
                Column(
                  children: [
                    Text(widget.name),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0, left: 8.0),
                      child: Text('last seen at 2:45 pm ', style: TextStyle(fontSize: 12.0),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.video_call, size: 30.0,),
          ),
          Padding(
          padding: const EdgeInsets.only(right: 11.0),
            child: Icon(Icons.call_outlined),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.more_vert_rounded),
          )
        ],
      ),
    );
  }
}
