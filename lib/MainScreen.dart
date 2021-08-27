import 'package:flutter/material.dart';
import 'package:oneweekplanner/mywidget/singkat.dart';
import 'package:oneweekplanner/mywidget/list_card.dart';
import 'package:oneweekplanner/AddScreen.dart';
import 'package:oneweekplanner/dataplan/data_plan.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _day = 'Choose a Day';
  // late bool sun=false, mon=false, tue=false, wed=false, thu=false, fri=false, sat=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddScreen(
              msg: _day,
            );
          })).then((_) {
            setState(() {});
          });
        },
        backgroundColor: Color.fromRGBO(55, 53, 57, 1),
        child: Icon(Icons.add),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/Backgrounddark1.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 56, left: 24),
                    child: Text(
                      _day,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),

                  //------------------------------------//
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            /// Button Sunday
                            child: Container(
                                width: 42,
                                height: 42,
                                decoration: deco,
                                child: Symbol(sym: 'S')),
                            onTap: () {
                              setState(() {
                                _day = 'Sunday';
                              });
                            },
                          ),
                          InkWell(
                            /// Button Monday
                            child: Container(
                                width: 42,
                                height: 42,
                                decoration: deco,
                                child: Symbol(sym: 'M')),
                            onTap: () {
                              setState(() {
                                _day = 'Monday';
                              });
                            },
                          ),
                          InkWell(
                            /// Button Tuesday
                            child: Container(
                                width: 42,
                                height: 42,
                                decoration: deco,
                                child: Symbol(sym: 'T')),
                            onTap: () {
                              setState(() {
                                _day = 'Tuesday';
                              });
                            },
                          ),
                          InkWell(
                            /// Button Wednesday
                            child: Container(
                                width: 42,
                                height: 42,
                                decoration: deco,
                                child: Symbol(sym: 'W')),
                            onTap: () {
                              setState(() {
                                _day = 'Wednesday';
                              });
                            },
                          ),
                          InkWell(
                            /// Button Thursday
                            child: Container(
                                width: 42,
                                height: 42,
                                decoration: deco,
                                child: Symbol(sym: 'T')),
                            onTap: () {
                              setState(() {
                                _day = 'Thursday';
                              });
                            },
                          ),
                          InkWell(
                            /// Button Friday
                            child: Container(
                                width: 42,
                                height: 42,
                                decoration: deco,
                                child: Symbol(sym: 'F')),
                            onTap: () {
                              setState(() {
                                _day = 'Friday';
                              });
                            },
                          ),
                          InkWell(
                            /// Button Saturday
                            child: Container(
                                width: 42,
                                height: 42,
                                decoration: deco,
                                child: Symbol(sym: 'S')),
                            onTap: () {
                              setState(() {
                                _day = 'Saturday';
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_day == 'Sunday') ...{
                    ListCard(data: datasunday)
                  } else if (_day == 'Monday') ...{
                    ListCard(data: datamonday)
                  } else if (_day == 'Tuesday') ...{
                    ListCard(data: datatuesday)
                  } else if (_day == 'Wednesday') ...{
                    ListCard(data: datawednesday)
                  } else if (_day == 'Thursday') ...{
                    ListCard(data: datathursday)
                  } else if (_day == 'Friday') ...{
                    ListCard(data: datafriday)
                  } else if (_day == 'Saturday') ...{
                    ListCard(data: datasaturday)
                  }
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
