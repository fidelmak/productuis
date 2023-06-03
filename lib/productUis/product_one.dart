import 'package:flutter/material.dart';

class product_one extends StatefulWidget {
  const product_one({super.key});

  @override
  State<product_one> createState() => _product_oneState();
}

class _product_oneState extends State<product_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                color: Colors.grey,
                icon: Icon(Icons.sort),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Explore",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                color: Colors.grey,
                icon: Icon(Icons.notifications_outlined),
              ),
              IconButton(
                onPressed: () {},
                color: Colors.grey,
                icon: Icon(Icons.search),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 43, 41, 41),
      ),
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 43, 41, 41),
            child: Row(
              children: [
                Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Discover",
                          style: TextStyle(color: Colors.grey),
                        ))),
                Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Activities",
                          style: TextStyle(color: Colors.grey),
                        ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
