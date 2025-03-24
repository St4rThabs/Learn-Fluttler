class Laptop {
  int id;
  String nome;
  int ram;

  Laptop(this.id, this.nome, this.ram);

  void infoLaptop(){
    print("ID: $id");
    print("Nome: $nome");
    print("RAM: $ram");
  }
}

void main(){
  var laptop1 = Laptop(0, "Acer", 8);
  var laptop2 = Laptop(1, "Asus", 6);
  var laptop3 = Laptop(2, "Dell", 16);

  print("Informação sobre o laptop 1: ");
  laptop1.infoLaptop();
  print("Informação sobre o laptop 2: ");
  laptop2.infoLaptop();
  print("Informação sobre o laptop 3: ");
  laptop3.infoLaptop();
}
