import 'package:app_chat/tabs/chat_tab.dart';
import 'package:app_chat/tabs/dialog_tab.dart';
import 'package:app_chat/tabs/input_tab.dart';
import 'package:flutter/material.dart';

class BottomSheetTabs extends StatefulWidget {
  const BottomSheetTabs({super.key});

  @override
  State<BottomSheetTabs> createState() => _BottomSheetTabsState();
}

class _BottomSheetTabsState extends State<BottomSheetTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amberAccent,
            ),
          onPressed: () {
            showModalBottomSheet(
              barrierLabel: "INI Bottom Sheet",
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                  ),
              ),
              isDismissible: false,
              context: context, 
              builder: (context) => SizedBox(
                height: 300,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.photo_camera),
                      title: Text("Photo"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => ChatTab(),
                            ),
                          );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.video_call),
                      title: Text("Video"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => DialogTab(),
                            ),
                          );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.share_rounded),
                      title: Text("Share"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => InputTab(),
                            ),
                          );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.cancel),
                      title: Text("Cancel"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ), 
            );
          }, 
          child: Text("Show BottomSheet"),
          ),
        ),
      ),
    );
  }
}