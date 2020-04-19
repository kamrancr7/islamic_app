import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/DummyData/dummy_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeScreen(),
    );
  }

  Widget homeScreen() {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/night.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                height: 210,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Next Prayer . Isha",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "7:10 PM",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "2 hrs remaining",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 3,
                          padding: const EdgeInsets.all(4),
                          children:
                              List.generate(dummyData.length, (index) {
                            return mainWidget(dummyData[index].icon,
                                dummyData[index].name);
                          }),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget mainWidget(String icon, String name) {
    return Column(
      children: <Widget>[
        Container(
          height: 70,
          width: 70,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                icon,
                color: Colors.purple,
              ),
            ),
          ),
        ),
        Text(
          name,
          style: TextStyle(color: Colors.purple),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
