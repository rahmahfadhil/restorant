import 'mumatreal.dart';

class Gatoc{
  String name;
  String id;
  List<MyMaterial> listofItem;
  Gatoc(Map map){
    this.name=map['name'];
    this.id=map['id'];
    listofItem=List();
    List list=map['items'];
    list.forEach((element) {
      listofItem.add(MyMaterial(element));
    });
  }
}