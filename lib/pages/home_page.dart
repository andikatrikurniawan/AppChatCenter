import 'package:app_chat/tabs/biodata_tab.dart';
import 'package:flutter/material.dart';
import 'package:app_chat/tabs/chat_tab.dart';
import 'package:app_chat/tabs/perhitungan_tab.dart';

class HomePage extends StatelessWidget { 
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> myTab = [
              Tab(
                text: "CHATT",
                icon: Icon(Icons.message),
              ),
              Tab(
                text: "PERHITUNGAN",
                icon: Icon(Icons.calculate),
              ),
              Tab(
                text: "BIODATA",
                icon: Icon(Icons.email),
              ),
            ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
          // centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.all(4), 
            child: Image.asset('image/logo sepatu.png'),
          ),
          title: Text("PartnerSupport Center",
              style: TextStyle(
                color: Colors.cyanAccent,
              ),
              ),
            //Mengunakan Action dan Bottom
            actions: [
              IconButton(
                color: Colors.brown,
                hoverColor: Colors.amberAccent,
                icon : Icon(Icons.person,
                size: 50,
              ),
              onPressed: () {
                // print("Tombol Person Di Tekan");
              },
              ),
             IconButton(
                color: Colors.deepOrange,
                hoverColor: Colors.amberAccent,
                icon : Icon(Icons.logout,
                size: 50,
              ),
              onPressed: () {
                // print("Tombol Logout Di Tekan");
              },
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.cyanAccent,
              unselectedLabelColor: Colors.black,
              
              indicator: BoxDecoration(  
                // boxShadow: [
                //   BoxShadow(color: Colors.blueAccent, blurRadius: 0.5),
                // ],
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 5,
                  ),
                ),
                // borderRadius: BorderRadius.circular(50),
              ),
              tabs: myTab,
            ),
            // flexibleSpace: Container(
            //   color: Colors.green,
            // ),
            ),
        body: TabBarView(
          children: [
            ChatTab(),
            PerhitunganTabs(),
            BiodataTab(),
          ],
        ),    
    ),
    );
  }
}