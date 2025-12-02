import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/TravelModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int selectedIndex = 0;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 1.8,
                width: double.infinity,

                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: size.height / 2.1,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                          ),
                          // color: Colors.grey,
                          image: DecorationImage(
                            image: AssetImage(
                              travelList[selectedIndex].imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    // Top bar with icons
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(151, 255, 255, 255),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(CupertinoIcons.left_chevron),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(151, 255, 255, 255),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(CupertinoIcons.heart),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(color: Colors.blue, width: double.infinity),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
