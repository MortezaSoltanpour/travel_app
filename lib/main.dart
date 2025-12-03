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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int imageSize = 60;

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
                    Positioned(
                      top: 80,
                      right: 20,
                      child: SizedBox(
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
                                    padding: const EdgeInsets.all(4.0),
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
                                          image: AssetImage(
                                            travelList[index].imageUrl,
                                          ),
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
