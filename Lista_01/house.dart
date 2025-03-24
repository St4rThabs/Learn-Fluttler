class House {
  int id;
  String nome;
  double preco;

  House(this.id, this.nome, this.preco);

  void infoHouse(){
    print("ID: $id");
    print("Nome: $nome");
    print("Preço: $preco");
  }
}

void main(){
  var house1 = House(0, "Casa 1", 120000.00);
  var house2 = House(1, "Casa 2", 150000.00);
  var house3 = House(2, "Casa 3", 1000000.00);

  print("Informações sobre a house 1: ");
  house1.infoHouse();
  print("Informações sobre a house 2: ");
  house2.infoHouse();
  print("Informações sobre a house 3: ");
  house3.infoHouse();
}