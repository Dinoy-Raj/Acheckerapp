import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:httpr/display.dart';
import 'user_model.dart';
import 'package:flutter/cupertino.dart';

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

 Future<List<UserModel>> createUser(String username,String password,String percent) async{

  final String apiUrl = "https://anonymousgbuapi.herokuapp.com/";

   final response =  await  http.post(apiUrl,body:{
        "username": username,
        "password": password,
        "percent": percent
      } );

   if(response.statusCode==200){
     final String responseString = response.body;

     return userModelFromJson(responseString);
   }else{
     return null;
   }
}



class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController percentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
      Container(
      child: Stack(
          children: <Widget>[

          Container(
          padding: EdgeInsets.fromLTRB(25.0, 100.0, 0.0, 0.0),

      child: Text(
        "Hello",
        style: TextStyle(
          fontSize: 50.0, //fontWeight: FontWeight.bold
        ),
      ),
    ),

    Container(
    padding: EdgeInsets.fromLTRB(25.0, 160.0, 0.0, 0.0),

    child: Text(
    "There",
    style: TextStyle(
    fontSize: 60.0,fontWeight: FontWeight.bold
    ),
    ),
    ),

    Container(
    padding: EdgeInsets.fromLTRB(165, 160.0, 0.0, 0.0),

    child: Text(
    ".",
    style: TextStyle(
    fontSize: 60.0,fontWeight: FontWeight.bold,color: Colors.green,
    ),
    ),
    )

    ],
    ),
    ),

    Container(
    padding: EdgeInsets.only(top: 40.0,left: 25.0,right: 20.0),
    child: Column(
    children: <Widget>[
    TextField(
      controller:usernameController,
    decoration: InputDecoration(
    labelText: "username",
    labelStyle: TextStyle(
    height: 1,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    ),
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.green)
    )
    ),
    ),
    SizedBox(height: 25.0,),

    TextField(
      obscureText: true,
      controller: passwordController,
    decoration: InputDecoration(
    labelText: "Password",
    labelStyle: TextStyle(
    height: 1,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    ),
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.green)
    )
    ),
    ),
    SizedBox(height: 20.0,),
      TextField(
        controller: percentController,
        decoration: InputDecoration(
            labelText: "Percentage",
            labelStyle: TextStyle(
              height: 1,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green)
            )
        ),
      ),

    Container(
    alignment: Alignment(1,0),
    padding: EdgeInsets.only(top: 10.0,left: 230.0),

    ),
    SizedBox(height: 60.0),

    Container(

    height: 45.0,

      child: RaisedButton(

        onPressed: () async{

          final String username = usernameController.text;
          final String password = passwordController.text;
          final String percent = percentController.text;

          final List<UserModel> user = await createUser(username, password, percent);
          setState(() {
            recive(user);
          });
          Navigator.push(context, MaterialPageRoute(builder: (context)=>display()));
        },

        child: Text("Send Data",style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        color: Colors.greenAccent,),

      ),

     /*Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                hintText: "username"
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "password"
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              controller: percentController,
              decoration: InputDecoration(
                  hintText: "percentage"
              ),
            ),
            SizedBox(height: 30,),
             RaisedButton(


*/



          ],
        ),
      )
    ])
    );
  }
}