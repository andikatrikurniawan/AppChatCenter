import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:intl/intl.dart';

class BiodataTab extends StatelessWidget {
  const BiodataTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myList = [
            {
              "Name": "Andika",
              "Age" : 23,
              "Hobi" : ["Membaca", "Menulis", "Coding", "Mewarnai", "Operasi", "Kalcer"]
            },
            {
              "Name": "Junaidi",
              "Age" : 20,
              "Hobi" : ["Membaca", "Menulis", "Coding", "Mewarnai", "Operasi", "Kalcer"]
            },
            {
              "Name": "Bahar",
              "Age" : 14,
              "Hobi" : ["Membaca", "Coding", "Mewarnai", "Kalcer"]
            },
            {
              "Name": "Kiki",
              "Age" : 20,
              "Hobi" : ["Mewarnai", "Operasi", "Kalcer"]
            },
            {
              "Name": "Sakinah",
              "Age" : 20,
              "Hobi" : ["Membaca", "Menulis", "Design", "Mewarnai", "Makan Pedes", "Kalcer"]
            },
    ];
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.blueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Biodata Person",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(DateFormat.yMMMMEEEEd('id_ID').format(DateTime.now())),
                Text(DateFormat.Hm().format(DateTime.now())),
              ],
            ),
          ),
        ),
        ...myList.map((data) {
          List myHobi = data["Hobi"];
          return Card(
            margin: const EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name : ${data["Name"]}"),
                  Text("Age  : ${data["Age"]}"),
                  const SizedBox(height: 10),
                  ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context).copyWith(
                              dragDevices: {
                                PointerDeviceKind.touch,
                                PointerDeviceKind.mouse,
                              }
                            ),
                            // untuk menscroll di mobile
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: myHobi.map((hobi){ 
                                  return Container(
                                    color: Colors.lightGreen,
                                    margin: EdgeInsets.symmetric(
                                      vertical: 15,
                                      horizontal: 8,
                                    ),
                                    padding: EdgeInsets.all(10),
                                    child: Text(hobi),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}