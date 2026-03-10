import 'package:app_chat/tabs/chat_tab.dart';
import 'package:flutter/material.dart';

class InputTab extends StatefulWidget {
 const InputTab({super.key});

  @override
  State<InputTab> createState() => _InputTabState();
}

class _InputTabState extends State<InputTab> {
  bool isHidden = true; 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
    children: [ 
        // decoration: BoxDecoration(
        //   color: Colors.amberAccent,
        //   borderRadius: BorderRadius.circular(100),
        //   boxShadow: [
        //     BoxShadow(
        //       //warna bayangan
        //       color: Colors.amber,
        //       //tingkat blur(semakin besar semakin halus)
        //       blurRadius: 20,
        //       //seberapa luas bayangan
        //       spreadRadius: 5,
        //       //posisi bayangan
        //       offset: Offset(10, 30), // bayangan ke bawah
        //     ),
        //     BoxShadow(
        //       color: Colors.blueAccent,
        //       spreadRadius: 2,
        //       blurRadius: 25,
        //       offset: Offset(-5, -5), //bayangan ke atas
        //     ),
        //   ],
        // ),
        Padding(
          padding: EdgeInsetsGeometry.only(
              top: 3,
              left: 20,
              right: 20,
            )),
        
        // width: 350,
        // height: 350,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
              Column(
                children: [
                  Image.asset('image/logo sepatu.png'),
                  Text("LOGIN",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 30,
                    fontFamily: "Times New Roman",
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
              SizedBox(height: 5),
            //user
              TextField(
                //fitur
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.bold,
                ),
                autocorrect: true,
                autofocus: true,
                enableInteractiveSelection: true,
                //untuk cuma menggunakan keybord hp 
                // keyboardType: TextInputType.phone,
                //decoration
                // showCursor: true,
                // cursorColor: Colors.brown,
                // cursorWidth: 5,
                //Menggunakan Huruf besa pada awal kalimat
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  icon:Icon(
                    Icons.email_sharp,
                    size: 20,
                    ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: "Please Input Your Username...",
                  suffixIcon: Icon(Icons.person_add),
                  labelText: "Username",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              //password
              TextField(
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.bold,
                ),
                autocorrect: true,
                autofocus: true,
                obscureText: isHidden,
                obscuringCharacter: "*",
                // maxLines: 8,
                enableInteractiveSelection: true,
                 decoration: InputDecoration(
                  icon:Icon(
                    Icons.password,
                    size: 20,
                    ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  labelText: "Password",
                  hintText: "Please Input Your Password...",
                  suffixIcon: IconButton(
                    icon: Icon(
                      isHidden? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed:() {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   ElevatedButton(
                      onPressed: () {
                        setState(() {
                          ChatTab();
                          print("Berhasil Di Hapus");
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        iconColor: Colors.white,
                      ), 
                      child: Icon(Icons.delete_forever),  
                    ),
                    SizedBox(width: 40,),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          ChatTab();
                          print("berhasil login");
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        iconColor: Colors.white,
                      ), 
                      child: Icon(Icons.add),  
                    ),
              ],
              ),
          ],
        ),
      
      ],
    );
  }
}