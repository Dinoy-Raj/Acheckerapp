import 'package:flutter/material.dart';
import 'main.dart';
import 'user_model.dart';

List<UserModel> _user;
void recive(List<UserModel> user){
  _user=user;
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
      appBar: AppBar(title:Text("attendance"),backgroundColor: Colors.green,),

      body: Container(
        margin: EdgeInsets.all(20),
        //height: 200.0,
        width:400,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              height: 160.0,
              color: Colors.white,
              child: _user==null?Text("failed to get data"):
              _user==null?Text("failed"):
              Text("${_user[1].subject}\n\n attended - ${_user[1].attended }\n\n Total - ${_user[1].total}\n\n can bunk - ${_user[1].canBunk}\n\n days - ${_user[1].days}"
              ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:12,

                ),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 160.0,
              color: Colors.white,
              child: _user==null?Text("failed to get data"):
              _user==null?Text("failed"):
              Text("${_user[2].subject}\n\n attended - ${_user[2].attended }\n\n Total - ${_user[2].total}\n\n can bunk - ${_user[2].canBunk}\n\n days - ${_user[2].days}"
                ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:12,

                ),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 160.0,
              color: Colors.white,
              child: _user==null?Text("failed to get data"):
              _user==null?Text("failed"):
              Text("${_user[3].subject}\n\n attended - ${_user[3].attended }\n\n Total - ${_user[3].total}\n\n can bunk - ${_user[3].canBunk}\n\n days - ${_user[3].days}"
                ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:12,

                ),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 160.0,
              color: Colors.white,
              child: _user==null?Text("failed to get data"):
              _user==null?Text("failed"):
              Text("${_user[4].subject}\n\n attended - ${_user[4].attended }\n\n Total - ${_user[4].total}\n\n can bunk - ${_user[4].canBunk}\n\n days - ${_user[4].days}"
                ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:12,

                ),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 160.0,
              color: Colors.white,
              child: _user==null?Text("failed to get data"):
              _user==null?Text("failed"):
              Text("${_user[5].subject}\n\n attended - ${_user[5].attended }\n\n Total - ${_user[5].total}\n\n can bunk - ${_user[5].canBunk}\n\n days - ${_user[5].days}"
                ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:12,

                ),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 160.0,
              color: Colors.white,
              child: _user==null?Text("failed to get data"):
              _user==null?Text("failed"):
              Text("${_user[6].subject}\n\n attended - ${_user[6].attended }\n\n Total - ${_user[6].total}\n\n can bunk - ${_user[6].canBunk}\n\n days - ${_user[6].days}"
                ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:12,

                ),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 160.0,
              color: Colors.white,
              child: _user==null?Text("failed to get data"):
              _user==null?Text("failed"):
              Text("${_user[7].subject}\n\n attended - ${_user[7].attended }\n\n Total - ${_user[7].total}\n\n can bunk - ${_user[7].canBunk}\n\n days - ${_user[7].days}"
                ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:12,

                ),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 160.0,
              color: Colors.white,
              child: _user==null?Text("failed to get data"):
              _user==null?Text("failed"):
              Text(" ${_user[8].subject}\n\n attended - ${_user[8].attended }\n\n Total - ${_user[8].total}\n\n can bunk - ${_user[8].canBunk}\n\n days - ${_user[8].days}"
                ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:12,

                ),),
            ),
          ],
        ),
      ),
      //_user==null?Text("failed"):
      //Text("subject - ${_user[1].subject} \n attended - ${_user[1].attended } \n can bunk - ${_user[1].canBunk} \n days - ${_user[1].days}"),
      //SizedBox(height: 10,),
      //_user==null?Text("failed"):
      //Text("subject - ${_user[2].subject} \n attended - ${_user[2].attended } \n can bunk - ${_user[2].canBunk} \n days - ${_user[2].days}"),
      //_user==null?Text("failed"):
      //Text("subject - ${_user[3].subject} \n attended - ${_user[3].attended } \n can bunk - ${_user[3].canBunk} \n days - ${_user[3].days}"),
      //SizedBox(height: 10,),
      //_user==null?Text("failed"):
      //Text("subject - ${_user[4].subject} \n attended - ${_user[4].attended } \n can bunk - ${_user[4].canBunk} \n days - ${_user[4].days}"),

    );
  }
}
