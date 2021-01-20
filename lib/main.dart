import 'package:flutter/material.dart';

import 'Calls.dart';
import 'Camera.dart';
import 'Chats.dart';
import 'Status.dart';

void main(){
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            title: Text('WhatsApp'),
            backgroundColor: Color(0xffb128C7E),
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: (){},),
              IconButton(icon: Icon(Icons.message), onPressed: (){},),
              IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: (){},)
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  isScrollable: true,
                  tabs: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Icon(
                        Icons.camera_alt,
                        size: 25,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width/5,
                            child: Center(child: Center(child: Text('CHATS', style: TextStyle(fontSize: 15.0)))))),
                    Padding(
                      padding: const EdgeInsets.only(bottom:10.0),
                      child: Container(width: MediaQuery.of(context).size.width/5 ,child: Center(child: Text('STATUS', style: TextStyle(fontSize: 15.0)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:10.0),
                      child: Container(width: MediaQuery.of(context).size.width/5,child: Center(child: Text('CALLS', style: TextStyle(fontSize: 15.0)))),
                    ),
                  ],
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.only(left:10.0),
                  indicatorWeight: 3.0,

                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
            children: [
              Camera(),
              Chats(),
              Status(),
              Calls(),
              
        ]
    ),

    ),
    );
  }
}
