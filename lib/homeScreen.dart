import 'dart:math';

import 'package:flutter/material.dart';

class CEO_List extends StatefulWidget {
  const CEO_List({Key? key}) : super(key: key);

  @override
  State<CEO_List> createState() => _HomeState();
}

class _HomeState extends State<CEO_List> {
  List image=[
    "assets/image/sundar.jpg",
    "assets/image/bill.jpg",
    "assets/image/jef.jpg",
    "assets/image/mukesh.jpg",
    "assets/image/cook.jpg",
    "assets/image/adobe.jpg",
    "assets/image/alibaba.jpg",
    "assets/image/bmw.jpg",
    "assets/image/dell.jpg",
    "assets/image/bob.jpg",
  ];
  List name=[
    "Sunder Pichai",
    "Bill Gates",
    "Jeff Bezcs",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayen",
    "Daniel Zhang",
    "Harald Kruger",
    "Michal Dell",
    "Bob Swan",
  ];
  List com=[
    "GOOGLE",
    "MICROSOFT",
    "AMAZONE",
    "RELIENCE LTD",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];
  List tcolor=[
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
  ];
  List boxcolor=[
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              "CEO of MNC's",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,wordSpacing: 2),
            ),
            centerTitle: true,
            backgroundColor:Colors.white70
        ),
        body: Container(
          color: Colors.grey,

          child: ListView.builder(
            itemCount: image.length,
            padding: EdgeInsets.all(5),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Box(image[index],name[index],com[index],tcolor[index],boxcolor[index]),
            ),
          ),
        ),
      ),
    );
  }

  Widget Box(String image,String name,String com,Color tcolor,Color boxcolor) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: boxcolor,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.blueGrey,
            backgroundImage:
            AssetImage(image,),
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(color: tcolor),),
              Text(com,style: TextStyle(fontSize: 11,color: tcolor),),
            ],
          ),
          Expanded(
              child: SizedBox(
                width: 10,
              )),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: tcolor)
            ),
            alignment: Alignment.center,
            child: Icon(Icons.navigate_next,size: 20,color: tcolor),),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}



