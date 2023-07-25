import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:testprojectt/Domain/Models/user_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // -----------serialization
  UserModel userModel =
      new UserModel(id: '01', name: 'pranjal', email: 'pranjal');
  String userJson =
      '{"id":"0001","name":"prashant","email":"prashant@gmail.com"}';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment:  MainAxisAlignment .center,
          children: [
            ElevatedButton(onPressed: () {
              // converting  user object into map into JSON by encode
              Map<String ,dynamic> userMap = userModel.toMap();
              var json = jsonEncode(userMap);
              print(json.toString());


            }, child: Text('serialize')),
            ElevatedButton(onPressed: () {
               var decoded = jsonDecode(userJson);
               Map<String, dynamic> userMap = decoded;
               UserModel newUser = new UserModel.fromMap(userMap);
            }, child: Text('deserialize')),
          ],
        ),
      ),
    );
  }
}
