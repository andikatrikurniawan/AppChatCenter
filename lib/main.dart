import 'package:faker/faker.dart';
import 'package:flutter/material.dart';


void main (){
  runApp(AppChat());
}

class AppChat extends StatelessWidget {
   final faker = Faker();
    AppChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
        // centerTitle: true,
        leading: CircleAvatar(
        backgroundImage: NetworkImage("https://picsum.photos/id/7/200/300"),
        ),
          title: Text("PartnerSupport Center",
          style: TextStyle(
            color: Colors.cyanAccent,
          ),
          ),
          ),
        body: ListView.builder(
          //membuat listTile otomatis
          itemCount: 100,
          itemBuilder: (context, index){
            return ChatItem(
              imageUrl:"https://picsum.photos/id/$index/200/300",
              title: faker.person.name(),
              subTitle: faker.lorem.sentence(),
            );
          },
          // children: [
          //   //Extract Widget
          //   ChatItem(
          //     imageUrl:"https://picsum.photos/id/1/200/300",
          //     title: "Dika",
          //     subTitle: "This is text",
          //   ),
          //   ChatItem(
          //     imageUrl:"https://picsum.photos/id/2/200/300",
          //     title: faker.person.name(),
          //     subTitle: faker.lorem.sentence(),
          //   ),
          //   ChatItem(
          //     imageUrl:"https://picsum.photos/id/3/200/300",
          //     title: faker.person.name(),
          //     subTitle: faker.lorem.sentence(),
          //   ),
          //   ListTile(
          //     title: Text("Naila"),
          //     subtitle: Text("How Many To Much",
          //       maxLines: 2,
          //       overflow: TextOverflow.ellipsis,
          //     ),
          //     leading: CircleAvatar(
          //       backgroundImage: NetworkImage("https://picsum.photos/seed/picsum/200/300"),
          //     ),
          //     trailing: Text("2:50 AM"),
          //     dense: true,
          //   ),
          // ],
        ),
        //untuk membuat fotter
      //   bottomNavigationBar: Container(
      //     width: 100,
      //         height: 100,
      //         color: Colors.blueAccent,
      //         alignment: Alignment.centerLeft,
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           Image.asset(
      //           // fit: BoxFit.cover,
      //           "image/logo sepatu.png",
      //           width: 50,
      //           height: 50,
      //           fit: BoxFit.contain,
      //         ),
      //         SizedBox(width: 20),
      //         Image.asset(
      //           // fit: BoxFit.cover,
      //           "image/login.png",
      //           width: 50,
      //           height: 50,
      //           fit: BoxFit.contain,
      //         ),
      //         SizedBox(width: 180),
      //         Image.asset(
      //           // fit: BoxFit.cover,
      //           "image/exit.png",
      //           width: 50,
      //           height: 50,
      //           fit: BoxFit.contain,
      //         ),
      //         ],
      //   ),  
      // ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subTitle;
  
  const ChatItem({Key? key,this.imageUrl, this.title, this.subTitle})
    : super(key: key);
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