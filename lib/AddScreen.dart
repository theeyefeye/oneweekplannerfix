import 'package:flutter/material.dart';
import 'package:oneweekplanner/dataplan/data_plan.dart';

class AddScreen extends StatefulWidget {
  late String msg;

  String getMsg() {
    return msg;
  }

  AddScreen({required this.msg});

  @override
  _AddScreenState createState() => _AddScreenState(inputday: msg);
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController _controller = TextEditingController();
  String _inputact = '';
  String _inputtime = '';
  late String inputday;
  _AddScreenState({required this.inputday});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Padding(
            padding: EdgeInsets.only(top: 160, left: 25),
            child: Text(
              'Selected day : $inputday',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220, right: 25, left: 25),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: 'Your Activity',
                        labelText: 'Activity',
                        fillColor: Color.fromRGBO(55, 53, 57, 1),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide:
                              BorderSide(color: Color.fromRGBO(55, 53, 57, 1)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide:
                              BorderSide(color: Color.fromRGBO(55, 53, 57, 1)),
                        )),
                    style: TextStyle(color: Colors.white),
                    onChanged: (String value) {
                      setState(() {
                        _inputact = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'ex. 19:00',
                        labelText: 'Time',
                        fillColor: Color.fromRGBO(55, 53, 57, 1),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide:
                              BorderSide(color: Color.fromRGBO(55, 53, 57, 1)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide:
                              BorderSide(color: Color.fromRGBO(55, 53, 57, 1)),
                        )),
                    style: TextStyle(color: Colors.white),
                    onChanged: (String value) {
                      setState(() {
                        _inputtime = value;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (inputday == 'Sunday') {
                        DataPlan newInput =
                            new DataPlan(activity: _inputact, time: _inputtime);
                        setState(() {
                          datasunday.add(newInput);
                          Navigator.pop(context);
                        });
                      } else if (inputday == 'Monday') {
                        DataPlan newInput =
                            new DataPlan(activity: _inputact, time: _inputtime);
                        setState(() {
                          datamonday.add(newInput);
                          Navigator.pop(context);
                        });
                      } else if (inputday == 'Tuesday') {
                        DataPlan newInput =
                            new DataPlan(activity: _inputact, time: _inputtime);
                        setState(() {
                          datatuesday.add(newInput);
                          Navigator.pop(context);
                        });
                      } else if (inputday == 'Wednesday') {
                        DataPlan newInput =
                            new DataPlan(activity: _inputact, time: _inputtime);
                        setState(() {
                          datawednesday.add(newInput);
                          Navigator.pop(context);
                        });
                      } else if (inputday == 'Thursday') {
                        DataPlan newInput =
                            new DataPlan(activity: _inputact, time: _inputtime);
                        setState(() {
                          datathursday.add(newInput);
                          Navigator.pop(context);
                        });
                      } else if (inputday == 'Friday') {
                        DataPlan newInput =
                            new DataPlan(activity: _inputact, time: _inputtime);
                        setState(() {
                          datafriday.add(newInput);
                          Navigator.pop(context);
                        });
                      } else if (inputday == 'Saturday') {
                        DataPlan newInput =
                            new DataPlan(activity: _inputact, time: _inputtime);
                        setState(() {
                          datasaturday.add(newInput);
                          Navigator.pop(context);
                        });
                      }
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(55, 53, 57, 1)),
                  ),
                  SizedBox(height: 20),
                  if (inputday == 'Choose a Day') ...{
                    Text(
                      'Please choose a day first!',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )
                  }
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
