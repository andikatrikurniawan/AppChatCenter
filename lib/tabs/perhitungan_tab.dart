import 'package:flutter/material.dart';

class PerhitunganTabs extends StatefulWidget {
  const PerhitunganTabs({super.key});

  @override
  State<PerhitunganTabs> createState() => _PerhitunganTabsState();
}

class _PerhitunganTabsState extends State<PerhitunganTabs> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                     counter.toString(),
                     style: TextStyle(
                      fontSize: 40,
                     ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if(counter != 0){
                            setState(() {
                              counter--;
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                        ),
                        child : Icon(Icons.remove),
                        ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                        ),
                        child : Icon(Icons.add),
                      ),  
                     ],    
                    ),
                  ],
                );
  }
}