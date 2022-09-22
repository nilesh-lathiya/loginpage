import 'package:flutter/material.dart';
import 'package:loginpage/login.dart';

class spash extends StatefulWidget {
  const spash({Key? key}) : super(key: key);

  @override
  State<spash> createState() => _spashState();
}

class _spashState extends State<spash> {
  @override
  void initState() {
    super.initState();
    loding();
  }
  loding()
  async {
   await Future.delayed(Duration(seconds: 3));
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
     return login();
   },)) ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("LOADING...."),),
    );
  }
}
