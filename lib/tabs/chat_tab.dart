import 'package:flutter/material.dart';
import '../widgets/chat_item.dart';
import 'package:faker/faker.dart';

class ChatTab extends StatelessWidget {
  
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
      //membuat listTile otomatis
      itemCount: 100,
      itemBuilder: (context, index){
          return ChatItem(
            imageUrl:"https://picsum.photos/id/$index/200/300",
            title: faker.person.name(),
            subTitle: faker.lorem.sentence(),
            time: faker.date.justTime(),
          );
      },
      // children: [
      //    //Extract Widget
      //         ChatItem(
      //           imageUrl:"https://picsum.photos/id/1/200/300",
      //           title: "Dika",
      //           subTitle: "This is text",
      //           time: "1.00",
      //         ),
      //         ChatItem(
      //           imageUrl:"https://picsum.photos/id/2/200/300",
      //           title: "Jumbo",
      //           subTitle: "Main Yuk",
      //           time: "12.00",
      //         ),
      //         ChatItem(
      //           imageUrl:"https://picsum.photos/id/3/200/300",
      //           title: "Jupri",
      //           subTitle: "Bang Laptop Saya Mati",
      //           time: "10.00",
      //         ),
      //         ListTile(
      //           title: Text("Naila"),
      //           subtitle: Text("How Many To Much",
      //             maxLines: 2,
      //             overflow: TextOverflow.ellipsis,
      //           ),
      //           leading: CircleAvatar(
      //             backgroundImage: NetworkImage("https://picsum.photos/seed/picsum/200/300"),
      //           ),
      //           trailing: Text("2:50"),
      //           dense: true,
      //         ),
      // ],
    );
  }
}