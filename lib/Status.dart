import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'Click.dart';
class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 120.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top:20.0, left: 10.0),
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 38.0,
                    backgroundImage: CachedNetworkImageProvider("https://i.pravatar.cc/150?img=58"),
                  ),
                  Container(
                    width: 80.0,
                    height: 80.0,
                    // color: Colors.blue[100],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 25.0,
                          height: 25.0,
                          child: Icon(Icons.add, size: 25.0, color: Colors.white,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                          color: Colors.green),
                          ),
                        ],
                    ),
                  ),

                ],
              ),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 30.0),
                            child: Text('My Status', style: TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Tap to add status update', style: TextStyle(fontSize: 16.0, color: Colors.black54)),
                      ),
                    ],
                  ) ),
            ],
          ),


        ),
        Container(
            height: 42.0,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffcccac8),
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10.0),
              child: Text('Recent updates', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold,color: Color(0xff8f8f8f))),
            )
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Click()));
          },
          child: ListView.builder(shrinkWrap: true,physics: ClampingScrollPhysics(), itemCount: 6, scrollDirection: Axis.vertical, itemBuilder: (context,index){
            return Container(
              height: 90.0,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 66,
                      width: 66,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(33), color:Colors.green),
                      child: Center(
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: CachedNetworkImageProvider("https://i.pravatar.cc/150?img=$index+3"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0, left: 10.0),
                          child: Text('Rohan Mittal', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, left: 10.0),
                          child: Text('1 hour ago', style:TextStyle(color: Colors.black54)),
                        )

                      ],
                    ),
                  )
                ],
              ),

            );
          },
    ),
        ),
      ],
    );

  }
}