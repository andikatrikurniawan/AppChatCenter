import 'package:flutter/material.dart';

class BottomNavigationTabs extends StatefulWidget {
  const BottomNavigationTabs({super.key});

  @override
  State<BottomNavigationTabs> createState() => _BottomNavigationTabsState();
}

class _BottomNavigationTabsState extends State<BottomNavigationTabs> {
  int select = 0;

  List<Widget> pages = [
    ListView.builder(
    itemCount: 30,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text("Home Item ${index + 1}"),
      );
    },
  ),
      Center(child: Text("Shopping Page")),
      Center(child: Text("List Page")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[select],
      bottomNavigationBar: 
      BottomNavigationBar(
      backgroundColor: Colors.amberAccent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      
      currentIndex: select,
      onTap: (value) {
        setState(() {
          select = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: "Shopping",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: "List",
          ),
      ],
      ),
      );
  }
}