import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/calls.dart';
import 'package:whatsapp_ui_clone/chats.dart';
import 'package:whatsapp_ui_clone/community.dart';
import 'package:whatsapp_ui_clone/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> pages = [Chats(), Updates(), Community(), Calls()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index=value;
          });
        },
        selectedItemColor: Colors.green,unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pending_actions_outlined),
            label: "Calls",
          ),
        ],
      ) ,body: pages[index],
    );
  }
}
