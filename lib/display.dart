import 'package:flutter/material.dart';

import 'user_model.dart';

List<UserModel> _user;
void recive(List<UserModel> user) {
  _user = user;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.green,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: display(),
    );
  }
}

class display extends StatefulWidget {
  @override
  _displayState createState() => _displayState();
}

class _displayState extends State<display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "attendance",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        //leading: Icon(Icons.arrow_back_ios,color: Colors.green.withOpacity(.7),),

        backgroundColor: Colors.green.withOpacity(.8),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(1),
        //height: 200.0,
        width: 600,
        child: _user==null? Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Error In Getting Data",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green.withOpacity(.8)
            ),
            )
            ),
        SizedBox(height: 30,),
        Container(
          height: 100,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white70,
                Colors.white,
                //Colors.red
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),

          child: Center(
            child: Text("Invalid Username Or Password",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
          ),
        ),

          ],
        ):ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: _user.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _user[index].subject;
              return AbsorbPointer(
                absorbing: true,
                child: Dismissible(
                  key: Key(item),

                  //background: Container(color: Colors.red,),

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.white70,
                              Colors.white,
                              //Colors.red
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              spreadRadius: 1,
                              blurRadius: 15,
                              offset: Offset(0, 5),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14, top: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.green.withOpacity(.4),
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 290,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: Text(
                                              "${_user[index].subject}",
                                              textAlign: TextAlign.left,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              softWrap: false,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                  fontSize: 13,
                                                  letterSpacing: 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Colors.white70,
                                          Colors.white,
                                          //Colors.red
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Attended ",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                            fontSize: 15,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Colors.white70,
                                          Colors.white,
                                          //Colors.red
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${_user[index].attended}",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                            fontSize: 15,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Colors.white70,
                                          Colors.white,
                                          //Colors.red
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Total ",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                            fontSize: 15,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Colors.white70,
                                          Colors.white,
                                          //Colors.red
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${_user[index].total}",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                            fontSize: 15,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Colors.white70,
                                          Colors.white,
                                          //Colors.red
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Can Bunk ",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                            fontSize: 15,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Colors.white70,
                                          Colors.white,
                                          //Colors.red
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${_user[index].canBunk}",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: _user[index].canBunk
                                                ? Colors.green
                                                : Colors.red,
                                            fontSize: 15,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Colors.white70,
                                          Colors.white,
                                          //Colors.red
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Days ",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                            fontSize: 15,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Colors.white70,
                                          Colors.white,
                                          //Colors.red
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${_user[index].days}",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                            fontSize: 15,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
