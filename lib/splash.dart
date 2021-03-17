import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_appresturant/showtable.dart';
import 'package:http/http.dart' as http;

import 'mytable.dart';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      // appBar: AppBar(backgroundColor: Colors.limeAccent,),
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          child: RaisedButton(
            onPressed: ()async{
              String url='http://hasprogramming.store/cafe_server/get_tables.php';
              http.Response response=await http.get(url);
              String str =utf8.decode(response.bodyBytes);
              List json=jsonDecode(str);
              List<MyTable>list=List();
              json.forEach((element) {
                list.add(MyTable(element));
              });
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ShowTable();
              },));
            },
            child: Text('start'),
            color: Colors.limeAccent,
          ),
        ),
      ),
    );
  }
}
