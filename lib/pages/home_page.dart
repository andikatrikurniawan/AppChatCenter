import 'package:app_chat/tabs/biodata_tab.dart';
import 'package:flutter/material.dart';
import 'package:app_chat/tabs/chat_tab.dart';
import 'package:app_chat/tabs/perhitungan_tab.dart';
import 'package:app_chat/tabs/input_tab.dart';
import '../tabs/dialog_tab.dart';
import '../tabs/snack_bar.dart';

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
              Tab(
                text: "INPUT",
                icon: Icon(Icons.input),
              ),
              Tab(
                text: "Dialog",
                icon: Icon(Icons.account_box),
              ),
              Tab(
                text: "SnckBar",
                icon: Icon(Icons.save),
              ),
            ];
    return DefaultTabController(
      length: 6,
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
                fontSize: 12,
              ),
              ),
            //Mengunakan Action dan Bottom
            actions: [
              IconButton(
                color: Colors.brown,
                hoverColor: Colors.amberAccent,
                icon : Icon(Icons.person,
                size: 30,
              ),
              onPressed: () {
                // print("Tombol Person Di Tekan");
              },
              ),
             IconButton(
                color: Colors.deepOrange,
                hoverColor: Colors.amberAccent,
                icon : Icon(Icons.logout,
                size: 30,
              ),
              onPressed: () {
                // print("Tombol Logout Di Tekan");
              },
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.cyanAccent,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              
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
              isScrollable: false,
              tabs: myTab,
            ),
            // flexibleSpace: Container(
            //   color: Colors.green,
            // ),
            ),
        body: TabBarView(
        children: const [
          ChatTab(),
          PerhitunganTabs(),
          BiodataTab(),
          InputTab(),
          DialogTab(),
          Snackbar(),
        ],
      ),    
    ),
    );
  }
}