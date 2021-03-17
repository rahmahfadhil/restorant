import 'items.dart';

class MyTable{
  String num;
  String id;
  List <Items>listOfItem;
  MyTable(Map map){
    this.num=map['num'];
    this.id=map['id'];
    listOfItem=List();
    List list =map['items'];
    list.forEach((element) {
      listOfItem.add(Items(element));
    });
  }

}