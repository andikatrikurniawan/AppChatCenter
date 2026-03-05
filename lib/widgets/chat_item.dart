import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subTitle;
  final String? time;
  
  const ChatItem({super.key ,this.imageUrl, this.title, this.subTitle, this.time});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title.toString()),
      subtitle: Text(subTitle.toString(),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl.toString()),
      ),
      trailing: Text(time.toString()),
      dense: true,
    );
  }
}