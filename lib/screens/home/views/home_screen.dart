import 'dart:math';
import 'package:expense_tracker/screens/home/views/main_screen.dart';
import 'package:expense_tracker/screens/stats/stats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  late Color selectedItem = Colors.blue;
  Color unselectedItem = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(239, 255, 255, 255),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(30), // Apply rounded corners
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            //backgroundColor: Colors.white,
            showSelectedLabels: false, // Hide selected labels
            showUnselectedLabels: false, // Hide unselected labels
            selectedItemColor: Colors.yellow,
            elevation: 3, // Add shadow to the bottom navigation
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home,
                    color: index == 0 ? selectedItem : unselectedItem),
                label: 'Home',
                // Add a label to the BottomNavigationBarItem
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.graph_square_fill,
                    color: index == 1 ? selectedItem : unselectedItem),
                label: 'Stats', // Add a label to the BottomNavigationBarItem
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.tertiary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary,
                  ],
                  transform: const GradientRotation(pi / 4),
                )),
            child: const Icon(
              CupertinoIcons.add,
            ),
          ),
        ),
        // If index is 0, return to MainScreen, else go to StatScreen
        body: index == 0 ? MainScreen() : StatScreen());
  }
}
