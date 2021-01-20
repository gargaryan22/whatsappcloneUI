import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ChatRoom.dart';

const People = [
"Namita Amble",
"Pinky Ramesh",
"Abbas Sekhon",
"Devendra Acharya",
"Jatin Rao Dubey",
"Kiran Pingle",
"Pirzada Dev Patel",
"Bagwati Anand Mitter",
"Shweta Yash Kapadia",
"Kalyani Sandal",
"Devika Zeeshan Pau",
"Suresh Patel",
"Jamshed Rao Babu",
"Vicky Raman",
"Padama Naseer Deep",
"Poonam Hanuman Dass",
"Kasturi Master",
"Rupal Devi",
"Devika Pradeep Ghose",
"Zahir Jayaraman"
];



class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  // ignore: deprecated_member_use, non_constant_identifier_names
  List Pmages = new List();
    @override
    // ignore: deprecated_member_use
  Widget build(BuildContext context) {
      for (int i=0; i<People.length;i++){
        Pmages.add("https://i.pravatar.cc/150?img=$i");
      }
    return ListView.separated(
        itemCount: People.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ChatRoom(name:People[index], image: Pmages[index],)));},
            child: Container(
              height: 90.0,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      foregroundImage: CachedNetworkImageProvider("https://i.pravatar.cc/150?img=$index"),
                      radius: 30.0,
                    ),
                  ),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:25.0, left: 10.0),
                                child: Text(People[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0), overflow: TextOverflow.ellipsis,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:20.0, right: 10.0),
                                child: Text("3:45 pm"),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 12.0 ),
                            child: Text('Hey there I am using WhatsApp!', style: TextStyle(fontSize: 16.0, color: Color(0xffb3aead))),
                          )
                        ],
                      )),
                ],
              ),
            ),
          );
          
        }, separatorBuilder: (BuildContext context, int index) { return Padding(
          padding: const EdgeInsets.only(left: 85.0),
          child: Divider(color: Colors.black26),
        ); },
    );

  }
}
