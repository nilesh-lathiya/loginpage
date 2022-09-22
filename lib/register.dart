import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final ImagePicker _picker = ImagePicker();
  String path = "";
  TextEditingController tname= TextEditingController();
  TextEditingController temail= TextEditingController();
  TextEditingController tcont= TextEditingController();
  TextEditingController tpass= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("sign up"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  showDialog(
                      builder: (context) {
                        return SimpleDialog(
                          title: Text("Select Picture"),
                          children: [
                            ListTile(
                              onTap: () async {
                                final XFile? photo = await _picker.pickImage(
                                    source: ImageSource.camera);
                                if (photo != null) {
                                  path = photo.path;
                                  setState(() {});
                                }
                                Navigator.pop(context);
                              },
                              title: Text("Camera"),
                              leading: Icon(Icons.camera_alt),
                            ),
                            ListTile(
                              onTap: () async {
                                final XFile? photo = await _picker.pickImage(
                                    source: ImageSource.gallery);

                                if (photo != null) {
                                  path = photo.path;
                                  setState(() {});
                                }
                                Navigator.pop(context);
                              },
                              title: Text("Gallery"),
                              leading: Icon(Icons.camera_alt),
                            )
                          ],
                        );
                      },
                      context: context);
                },
                child:Container(
                    height: 100,
                    width: 100,
                    child:  path.isEmpty
                        ? Image.asset(
                      "userimag/user.png",
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    )
                        : Image.file(
                      File(path),
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    )
                )
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0),
            child: TextField(onChanged: (value) {

            },
              controller: tname,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter name",
                hintText: "NAME",

              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0),
            child: TextField(onChanged: (value) {

            },
              controller: temail,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter name",
                hintText: "NAME",

              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0),
            child: TextField(onChanged: (value) {

            },
              controller: tcont,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter name",
                hintText: "NAME",

              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0),
            child: TextField(onChanged: (value) {

            },
              controller: tpass,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter name",
                hintText: "NAME",

              ),
            ),
          ),



        ],
      ),

    );
  }
}
