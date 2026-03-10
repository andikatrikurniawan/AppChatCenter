import 'package:flutter/material.dart';
import '../tabs/chat_tab.dart';

class DialogTab extends StatefulWidget {
  const DialogTab({super.key});

  @override
  State<DialogTab> createState() => _DialogTabState();
}

class _DialogTabState extends State<DialogTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
        showDialog(
          context: context, 
          builder: (dialogContext) => Dialog.fullscreen(
              child: Container(
                margin: EdgeInsets.all(10),
                width: 200,
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Custom Dialog",
                    style: Theme.of(context).textTheme.titleMedium,
                     
                    ),
                    SizedBox(height: 10),
                    Text("Apakah Anda Yakin Menghapus Data Ini?",
                    style: TextStyle(
                      fontFamily: "SansSerif",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.pop(dialogContext), 
                            child: Text("Close",
                            style: TextStyle(
                              color: Colors.brown[600],
                            ),
                            ),
                            ),
                     SizedBox(width: 10),
                          TextButton(
                            onPressed: () { 
                              Navigator.pop(dialogContext); // Menutup Dialog
                               Navigator.push( //Membuka Halaman Baru
                                context,
                                MaterialPageRoute( // animasi pindah halaman
                                  builder: (context) => ChatTab(),
                                ),
                              ); 
                            }, 
                          child: Text("Izinn",
                            style: TextStyle(
                              color : Colors.pink[200],
                            ),
                          
                          ),
                          ),       
                        ],
                      ),
                  ],
                ),
              ),
          ),
        ); 
      }, 
      child: Text("Show Dialog"), 
      ),
    );
    // showDialog(
    //       context: context, 
    //       builder: (dialogContext) => AlertDialog(
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadiusGeometry.circular(30),
    //         ),
    //         title: Text("Alert Message",
    //         textAlign: Center,
    //         style: TextStyle(

    //         ),
    //         ),
    //         content: Text('Ini adalah aleert message lohh..'),
    //         actions: [
    //           ElevatedButton(onPressed: () {

    //           }, 
    //           child: Text("Keluar")
    //           ),
    //         ],
    //       ) 
    //
    // notiifikasi snack bar  
    //Center(
    //     child: ElevatedButton(
    //       child: const Text('Show Dialog'),
    //       onPressed: () async => showDialog<String>(
    //         context: context,
    //         builder: (BuildContext context) => SimpleDialog(
    //           title: const Text('What is your favorite color'),
    //           children: [
    //             SimpleDialogOption(
    //               onPressed: () => Navigator.pop(context, 'blue'),
    //               child: const Text('Blue'),
    //             ),
    //             SimpleDialogOption(
    //               onPressed: () => Navigator.pop(context, 'green'),
    //               child: const Text('Green'),
    //             ),
    //           ],
    //         ),
    //       ).then(
    //         (String? choice) => choice != null
    //             ? ScaffoldMessenger.of(context).showSnackBar(
    //                 SnackBar(
    //                   backgroundColor:
    //                       choice == 'green' ? Colors.green : Colors.blue,
    //                   content:
    //                       Center(child: Text('Your favorite color is $choice')),
    //                   duration: const Duration(seconds: 1),
    //                 ),
    //               )
    //             : null,
    //       ),
    //     ),
    //   ),
    // );  
  }
}