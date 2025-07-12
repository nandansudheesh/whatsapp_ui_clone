import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.chat),
      backgroundColor: Colors.green,
      foregroundColor: Colors.black,
    ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Whatsapp"),
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 25),
          Icon(Icons.camera_alt),
          SizedBox(width: 25),
          Icon(Icons.more_vert),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Ruud_Gullit_1988.jpg/250px-Ruud_Gullit_1988.jpg",
              ),
            ),
            title: Text("USER"),
            subtitle: Text("Hello"),
            trailing: Text("7:00pm"),
          ),
        ],
      ),
    );
  }
}
