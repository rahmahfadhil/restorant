class Items {
  String  id;
  String name;
  String prices;
  String id_gato;
  String count;
  Items(Map map){
    this.id=map['id'];
    this.name=map['name'];
    this.id_gato=map['id_gato'];
    this.prices=map['price'];
    this.count=map['count'];

  }
}










/*{
        "id": "3",
        "num": "1",
        "items": []
    },
* */
/*   {
        "id": "1",
        "name": "مشروبات",
        "items": [
            {
                "id": "1",
                "id_gato": "1",
                "name": "جاي",
                "price": "1000"
            },
            {
                "id": "2",
                "id_gato": "1",
                "name": "ماء",
                "price": "500"
            },
            {
                "id": "6",
                "id_gato": "1",
                "name": "عصير البرتقال",
                "price": "2000"
            }   */