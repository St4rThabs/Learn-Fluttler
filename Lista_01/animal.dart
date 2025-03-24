class Animal {
  int id;
  String nome;
  String cor;

  Animal(this.id, this.nome, this.cor);

  void infoAnimal(){
    print("ID: $id");
    print("Nome: $nome");
    print("Cor: $cor");
  }
}

class Cat extends Animal{
  String som;

  Cat(int id, String nome, String cor, this.som) : super(id, nome, cor);

  @override
  void infoAnimal(){
    super.infoAnimal();
    print("Som: $som");
  }
}

void main(){
  var cat1 = Cat(0, "Loui", "Rajado", "miau");

  print("Informação sobre o gato: ");
  cat1.infoAnimal();
}