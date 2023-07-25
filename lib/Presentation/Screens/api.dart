import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:testprojectt/Domain/Models/api_service.dart';

import '../../Domain/Models/post_model.dart';

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),

    );
  }
  FutureBuilder _body(){
    final apiService = ApiService(Dio(BaseOptions(contentType: 'application/json')));
    return FutureBuilder(
        future: apiService.getPosts(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.done){
            final List<PostModel> posts =snapshot.data;
            return _posts(posts);
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
    );
  }
}
Widget _posts(List<PostModel> posts){
  return ListView.builder(
      itemCount: posts.length,
      itemBuilder:(context,index){
        return Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black38,width: 1),

          ),
          child: Column(
            children: [
              Text(posts[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text(posts[index].title)
            ],
          ),
        );
      }
      );
}