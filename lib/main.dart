import 'package:flutter/material.dart';

void main (){
  runApp(AppChat());
}

class AppChat extends StatelessWidget {
 const AppChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 63, 112),
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
          ),
        body: ListView(
          children: [
            ListTile(
              //untuk menambahkan padding
              // contentPadding: EdgeInsets.all(50),
              // untuk menambahkan padding custom
              // contentPadding: EdgeInsets.only(top: 30, right: 20, left: 15, bottom: 10),
              // untuk menambahkan paddi symetric
              // contentPadding: EdgeInsets.symmetric(
              //   vertical: 20,
              //   horizontal: 20,
              // ),
              // untuk memindahkan form
              // onTap: () {
              //   return ;
              // },
              title: Text("Andika Tri Kurniawan"),
              subtitle: Text("Hallo Jangan Lupa belajar Flutter Setiap Hari",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("2:00 AM"),
              dense: true,
            ),
          // Divider(),
          ListTile(
              title: Text("Bang Opick"),
              subtitle: Text("Bang Ada Pantun?",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("2:00 AM"),
              dense: true,
            ),
            ListTile(
              title: Text("Jordi Amat"),
              subtitle: Text("Bang Pick Up Sepatu Dong?",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("2:50 AM"),
              dense: true,
            ),
            ListTile(
              title: Text("Naila"),
              subtitle: Text("Bang Boleh Cinta Gak Sama Abang?",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("1:44 AM"),
              dense: true,
            ),
            ListTile(
              title: Text("Miiuaa Auu"),
              subtitle: Text("Boleh Order Hari ini?",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("1:34 AM"),
              dense: true,
            ),
            ListTile(
              title: Text("Raflesi"),
              subtitle: Text("Abang Ganteng Deh, Cuci Sepatu Gratis Boleh?",
              overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("1:00 AM"),
              dense: true,
            ),
          ],
        ),  
      ),
    );
  }
}