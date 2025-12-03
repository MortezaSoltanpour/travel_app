import 'dart:math';
import 'dart:ui';

import 'package:expandable_text/expandable_text.dart';
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
  int selectedIndex = 0;
  int imageSize = 60;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                        ),
                        child: Container(
                          height: size.height / 2.1,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                            ),

                            // image: DecorationImage(
                            //   image: AssetImage(
                            //     travelList[selectedIndex].imageUrl,
                            //   ),
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                            child: Image.asset(
                              travelList[selectedIndex].imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: size.height / 2.1 - 90,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            style: (TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                            travelList[selectedIndex].name,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  CupertinoIcons.location_solid,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                style: (TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                                travelList[selectedIndex].location,
                              ),
                            ],
                          ),
                        ],
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
                    // Image list on the right side
                    Positioned(top: 110, right: 20, child: ImageItems()),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 1, color: Colors.grey),
                            ),
                            child: Container(
                              height: 100,
                              width: 100,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      1,
                                      10,
                                      1,
                                      1,
                                    ),
                                    child: Text('Distance'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      1,
                                      10,
                                      1,
                                      1,
                                    ),
                                    child: Text(
                                      travelList[selectedIndex].distance +
                                          " KM",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 1, color: Colors.grey),
                            ),
                            child: Container(
                              height: 100,
                              width: 100,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      1,
                                      10,
                                      1,
                                      1,
                                    ),
                                    child: Text('Temperature'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      1,
                                      10,
                                      1,
                                      1,
                                    ),
                                    child: Text(
                                      travelList[selectedIndex].temp + " °C",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 1, color: Colors.grey),
                            ),
                            child: Container(
                              height: 100,
                              width: 100,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      1,
                                      10,
                                      1,
                                      1,
                                    ),
                                    child: Text('Rating'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      1,
                                      10,
                                      1,
                                      1,
                                    ),
                                    child: Text(
                                      travelList[selectedIndex].rating,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Description'),

                            Container(
                              height: 150,
                              child: ExpandableText(
                                travelList[selectedIndex].description,
                                expandText: 'show more',
                                collapseText: 'show less',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ImageItems() {
    return SizedBox(
      height: double.maxFinite,
      width: 90,
      child: ListView.builder(
        itemCount: travelList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              print('Tapped on ${travelList[index].name}');
              setState(() {
                selectedIndex = index;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 10, 4, 10),
                  child: AnimatedContainer(
                    width: selectedIndex == index
                        ? imageSize + 10
                        : imageSize.toDouble(),
                    height: selectedIndex == index
                        ? imageSize + 10
                        : imageSize.toDouble(),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: selectedIndex == index ? 2 : 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(travelList[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    duration: Duration(milliseconds: 300),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
