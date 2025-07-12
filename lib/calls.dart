import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.call),
      backgroundColor: Colors.green,
      foregroundColor: Colors.black,
    ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("CALLS"),
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 25),
          Icon(Icons.search),
          SizedBox(width: 25),
          Icon(Icons.more_vert),
          SizedBox(width: 28),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 30),
          Text("favourites",style: TextStyle(fontSize: 25),),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.favorite),
            ),
            title: Text("Add favourites"),
          ),
          Text("Recent"),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbySPOVJMWqKXXDjw9zQLk4k7k7T2xDXjzsw&s",
              ),
            ),
            title: Text("Ebin"),
            subtitle: Row(
              children: [Icon(Icons.call_missed,color: Colors.red,),
                Text("Yesterday,8:00 pm"),
              ],
            ),
            trailing: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}
