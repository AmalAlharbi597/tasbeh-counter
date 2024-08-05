import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;
  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(223, 175, 171, 171),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(129, 215, 213, 0.737),
        centerTitle: true,
        title: Text(
          " فَإِنَّ مَعَ الْعُسْرِ يُسْرًا إِنَّ مَعَ الْعُسْرِ يُسْرًا ",
          style: TextStyle(
              fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.50,
                    height: MediaQuery.of(context).size.height / 1.50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(198, 252, 244, 1),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 9),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Text(
                          count.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Transform.translate(
                    offset: Offset(1, 9),
                    child: Container(
                      width: 190,
                      height: 190,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 9),
                              blurRadius: 20,
                              color: Colors.black,
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => counter(),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 183, 230, 237),
                                  shape: BoxShape.circle),
                            ),
                            style: ElevatedButton.styleFrom(
                                maximumSize: Size(80, 80)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () => reset(),
                                child: Container(
                                    child: Icon(
                                  Icons.wifi_protected_setup,
                                  color: Color.fromRGBO(109, 230, 150, 3),
                                )),
                                style: ElevatedButton.styleFrom(
                                    maximumSize: Size(80, 80)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
