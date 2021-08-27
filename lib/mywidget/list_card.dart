import 'package:flutter/material.dart';
import 'package:oneweekplanner/dataplan/data_plan.dart';

class ListCard extends StatelessWidget {
  ScrollController _controller = new ScrollController();
  late var data;

  ListCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45, left: 18, right: 18),
      child: ListView.builder(
        controller: _controller,
        itemBuilder: (context, index) {
          final DataPlan list = this.data[index];
          return Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          color: Color.fromRGBO(196, 196, 196, 1),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            // width: 198,
                            child: Text(
                              list.activity,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                            // padding: EdgeInsets.only(left: 5),
                            width: 40,
                            child: Text(
                              list.time,
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15),
                            )),
                      ),
                      Container(
                        width: 15,
                        // padding: EdgeInsets.only(left: 5),
                        child: Icon(Icons.access_alarm,
                            color: Color.fromRGBO(196, 196, 196, 1)),
                      ),
                    ],
                  ),
                ),
                width: 339,
                height: 58,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    color: Color.fromRGBO(55, 53, 57, 1)),
              ));
        },
        itemCount: data.length,
        shrinkWrap: true,
      ),
    );
  }
}
