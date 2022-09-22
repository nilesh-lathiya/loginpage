import 'package:flutter/material.dart';
import 'package:loginpage/register.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  TextEditingController temail= TextEditingController();
  TextEditingController tpass= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title:Text("LOGIN"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(padding: EdgeInsets.all(8.0),
            child: TextField(onChanged: (value) {

            },
              controller: temail,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter Email or mobile ",
                hintText: "Email or mobile",

              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0),
            child: TextField(onChanged: (value) {

            },
              controller: tpass,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: " Enter Pass word",
                hintText: "PASSWORD",

              ),
            ),
          ),
          ElevatedButton(onPressed: () {

          }, child:Text("LOGIN")),
          ElevatedButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return register();
            },)) ;

          }, child:Text("REGISTER")),




        ],
      ),

    );
  }
}
