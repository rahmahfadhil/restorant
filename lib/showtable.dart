import 'package:flutter/material.dart';
import 'package:flutter_appresturant/mytable.dart';
import 'package:flutter_appresturant/showitema.dart';
class ShowTable extends StatefulWidget {
  List<MyTable>list;
  ShowTable({this.list});
  @override
  _ShowTableState createState() => _ShowTableState();
}

class _ShowTableState extends State<ShowTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView.builder(itemCount: widget.list.length,itemBuilder: (context, index) {
        return Padding(padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return ShowItem();
            },));
          },
        child: Container(
          decoration: BoxDecoration(
            color:Colors.limeAccent //widget.list[index].listOfItem.length==0?Colors.white70:Colors.limeAccent
          ),
          height: 100,
          child: Text(widget.list[index].num),
        ),)

        ) ;

      },),
    );
  }
}
