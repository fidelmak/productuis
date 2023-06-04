import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class product_one extends StatefulWidget {
  const product_one({super.key});

  @override
  State<product_one> createState() => _product_oneState();
}

class _product_oneState extends State<product_one> {
  final lightTheme = ThemeData(
    primaryColor: Colors.grey,
    hintColor: const Color.fromARGB(255, 43, 41, 41),
    focusColor: Color.fromARGB(237, 0, 0, 0),
    errorColor: Color.fromARGB(255, 0, 0, 0),
    hoverColor: Color.fromARGB(255, 0, 0, 0),
    fontFamily: 'Roboto',
    // Add more theme properties as needed
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                color: lightTheme.primaryColor,
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
        backgroundColor: Color.fromARGB(255, 43, 41, 41),
      ),
      body: Container(
        color: Color.fromARGB(255, 0, 0, 0),
        child: ListView(
          children: [
            Container(
              color: Color.fromARGB(255, 43, 41, 41),
              child: Row(
                children: [
                  Expanded(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Discover",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
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
            gradientCard(),
          ],
        ),
      ),
    );
  }
}

class gradientCard extends StatelessWidget {
  const gradientCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(7),
      elevation: 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: 60,
          height: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/grtwall.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.pink.withOpacity(0.6),
                Colors.orange.withOpacity(0.6),
              ],
            )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.church_outlined,
                    color: Colors.white,
                    size: 27,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Nature's Light",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
