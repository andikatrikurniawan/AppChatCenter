// import 'package:faker/faker.dart';
import 'package:flutter/material.dart';


void main (){
  runApp(AppChat());
}

class AppChat extends StatefulWidget {

   const AppChat({super.key});

  @override
  State<AppChat> createState() => _AppChatState();
}

class _AppChatState extends State<AppChat> {
  //field faker libray
  int counter = 0;
  
  List<Map<String, dynamic>> myList = [
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          ),
        body: ListView(
          // //membuat listTile otomatis
          // itemCount: 100,
          // itemBuilder: (context, index){
          //   return ChatItem(
          //     imageUrl:"https://picsum.photos/id/$index/200/300",
          //     title: faker.person.name(),
          //     subTitle: faker.lorem.sentence(),
          //   );
          // },
          children: [
            //Extract Widget
            ChatItem(
              imageUrl:"https://picsum.photos/id/1/200/300",
              title: "Dika",
              subTitle: "This is text",
            ),
            ChatItem(
              imageUrl:"https://picsum.photos/id/2/200/300",
              title: "Jumbo",
              subTitle: "Main Yuk",
            ),
            ChatItem(
              imageUrl:"https://picsum.photos/id/3/200/300",
              title: "Jupri",
              subTitle: "Bang Laptop Saya Mati",
            ),
            ListTile(
              title: Text("Naila"),
              subtitle: Text("How Many To Much",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/seed/picsum/200/300"),
              ),
              trailing: Text("2:50 AM"),
              dense: true,
            ),
            SizedBox(height: 50),
            Column(
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
                ),
                SizedBox(height: 50),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Biodata Person",
                       style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Times New Roman',
                       ) ,
                       ),
                    ],
                  ),
                ),
                
              // Meimplementasi Mapping List
              Column(
                children: myList.map((data){
                List myHobi = data["Hobi"];
                return Card(
                  margin: EdgeInsets.all(20),
                  color: Colors.amber,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // row
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage("https://picsum.photos/seed/picsum/200/300"),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name : ${data["Name"]}"),
                                Text("Age  : ${data["Age"]}"),
                              ],
                            ),
                          ],
                        ),
                        //Hobi 
                        SingleChildScrollView(
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
                      ],
                    ),
                  ),
                );
               }).toList(),
              ) 
              ],
            ),
        //untuk membuat fotter
        bottomNavigationBar: Container(
              width: 100,
              height: 50,
              color: const Color.fromARGB(255, 138, 194, 9),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                // fit: BoxFit.cover,
                "image/logo sepatu.png",
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 20),
              Image.asset(
                // fit: BoxFit.cover,
                "image/login.png",
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 180),
              Image.asset(
                // fit: BoxFit.cover,
                "image/exit.png",
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
              ],
        ),  
      ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subTitle;
  
  const ChatItem({super.key ,this.imageUrl, this.title, this.subTitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
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

      title: Text(title.toString()),
      subtitle: Text(subTitle.toString(),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl.toString()),
      ),
      trailing: Text("2:00 AM"),
      dense: true,
    );
  }
}