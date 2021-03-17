class MyMaterial{
  String id;
  String name;
  String price;
  String id_gato;
  MyMaterial(Map map){
    this.name=map['name'];
    this.id=map['id'];
    this.price=map['price'];
    this.id_gato=map['id_gato'];
  }
}