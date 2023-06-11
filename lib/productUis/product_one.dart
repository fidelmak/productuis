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
    final screenWidth = MediaQuery.of(context).size.width;
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
            gradientCard(
              icon: Icons.church_outlined,
              text: "Nature's Light ",
              image: AssetImage(
                "assets/images/grtwall.jpg",
              ),
              // width: 60,
              // height: 170,
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        child: gradientCard(
                          icon: Icons.church_outlined,
                          text: "Cultural",
                          image: AssetImage(
                            "assets/images/grtwall.jpg",
                          ),
                          // width: 230,
                          // height: 200,
                        ),
                      ),
                      Container(
                        height: 240,
                        child: gradientCard(
                          icon: Icons.mosque_outlined,
                          text: "Popularity",
                          image: AssetImage(
                            "assets/images/grtwall.jpg",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 240,
                        child: gradientCard(
                          icon: Icons.church_outlined,
                          text: "Modern Life",
                          image: AssetImage(
                            "assets/images/grtwall.jpg",
                          ),
                          // width: 230,
                          // height: 200,
                        ),
                      ),
                      Container(
                        child: gradientCard(
                          icon: Icons.wb_sunny_outlined,
                          text: "Sun Sand ",
                          image: AssetImage(
                            "assets/images/grtwall.jpg",
                          ),
                          // width: 230,
                          // height: 200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class gradientCard extends StatelessWidget {
  gradientCard({
    required this.icon,
    required this.text,
    required this.image,
    // required this.width,
    // required this.height
  });
  final IconData icon;
  final text;
  final AssetImage image;
  // final width;
  // final height;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(7),
      elevation: 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          // width: width,
          // height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
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
                    icon,
                    color: Colors.white,
                    size: 27,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    text,
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
