import 'package:flutter/material.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panic Button UI',
      theme: ThemeData(
       // primarySwatch: Colors.black26,
      ),
      home: MyHomePage(title: 'Panic Button Register',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final phoneNumber = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Phone Number",
          labelText: "Phone Number",
          labelStyle: new TextStyle(color: Colors.amber),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email ID",
          labelText: "Email ID",
          labelStyle: new TextStyle(color: Colors.amber),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );
    final aadhar = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Aadhar Number",
          labelText: "Aadhar Number",
          labelStyle: new TextStyle(color: Colors.amber),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );
    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
        },
        child: Text("Register",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),

      ),
    );
    return Scaffold(
      //backgroundColor: Colors.black87,
      body: Center(
        /*decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.2,0.4,0.6,0.8],
            colors: [
              Colors.indigo[200],
              Colors.indigo[425],
              Colors.indigo[700],
              Colors.indigo[1000]
            ],
          ),
        ),*/
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            //child: SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            SizedBox(
            height: 155.0,
            child: Image.asset(
            "images/Logo.png",
            fit: BoxFit.contain,),
            ),
            SizedBox(height: 35.0),
            phoneNumber,
            SizedBox(height: 35.0),
            emailField,
            SizedBox(
            height: 35.0,
            ),
            aadhar,
            SizedBox(height: 40.0),
            registerButton,


            ],
            ),
            ),
        ),
      ),
    );
  }
}