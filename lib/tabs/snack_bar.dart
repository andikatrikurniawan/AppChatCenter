import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Data Behasil Dikirim",
                style: TextStyle(
                  color: Colors.amberAccent[300],
                ),
                ),
                action: SnackBarAction(
                  label: "Save",
                  textColor: Colors.cyan, 
                  onPressed: () {
                    print("Data Disimpan");
                  },
                  ),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(30)),
                  backgroundColor: Colors.deepPurple,
                ),
              );
        }, 
        child: Text("SnackBar"),
        ),
    ) ;
  }
}