import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class Click extends StatefulWidget {
  final StoryController controller = StoryController();
  @override
  _ClickState createState() => _ClickState();
}

class _ClickState extends State<Click> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black, ),
        body: StoryView(
          controller: StoryController(),
          storyItems: [
            StoryItem.text(
              title:
              "Hello world!\nHave a look at some great Ghanaian delicacies. I'm sorry if your mouth waters. \n\nTap!",
              backgroundColor: Colors.orange,
              roundedTop: true,
            ),
            StoryItem.pageProviderImage(CachedNetworkImageProvider("https://i.picsum.photos/id/1015/6000/4000.jpg?hmac=aHjb0fRa1t14DTIEBcoC12c5rAXOSwnVlaA5ujxPQ0I"),
              caption: 'Nice View'),
            StoryItem.inlineImage(url: "https://i.picsum.photos/id/1019/5472/3648.jpg?hmac=2mFzeV1mPbDvR0WmuOWSiW61mf9DDEVPDL0RVvg1HPs", caption: Text('Sea View'), controller: StoryController()),
              StoryItem.text(title: "My First Clone App", backgroundColor: Colors.blue)

        ],
        ),
      );
  }
}
