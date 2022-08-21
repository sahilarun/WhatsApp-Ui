import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:whatapp_clone_ui/json/chat_json.dart';
import 'package:whatapp_clone_ui/theme/colors.dart';

class ChatDetailPage extends StatefulWidget {
  final String name;
  final String img;

  const ChatDetailPage({Key key, this.name, this.img}) : super(key: key);
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: getAppBar(),
      bottomSheet: getBottomSheet(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: greyColor,
      title: Container(
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(widget.img), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "last seen today at 10:10 PM",
                    style:
                        TextStyle(fontSize: 12, color: white.withOpacity(0.4)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: primary,
        ),
      ),
      actions: [
        Icon(
          LineIcons.video_camera,
          color: primary,
          size: 27,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          LineIcons.phone,
          color: primary,
          size: 27,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  Widget getBottomSheet() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 80,
      decoration: BoxDecoration(color: greyColor),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.add,
              color: primary,
              size: 28,
            ),
            Container(
              width: size.width * 0.6,
              height: 32,
              decoration: BoxDecoration(
                  color: white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: TextField(
                  style: TextStyle(color: white),
                  cursorColor: primary,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "",
                      suffixIcon: Icon(
                        LineIcons.sticky_note,
                        color: primary,
                        size: 25,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Icon(
                LineIcons.camera,
                color: primary,
                size: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Icon(
                LineIcons.microphone,
                color: primary,
                size: 25,
              ),
            )
          ],
