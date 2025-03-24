class Camera {
  int id;
  String marca;
  String cor;
  double preco;

  Camera(this.id, this.marca, this.cor, this.preco);

  int get Id => id;
  String get Marca => marca;
  String get Cor => cor;
  double get Preco => preco;

  set Id(int id){
    id = Id;
  }

  set Marca(String marca){
    marca = Marca;
  }

  set Cor(String cor){
    cor = Cor;
  }

  set Preco(double preco){
    preco = Preco;
  }

  void infoCamera(){
    print("ID: $id");
    print("Marca: $marca");
    print("Cor: $cor");
    print("Preco: $preco");
  }
}

void main(){
  var camera1 = Camera(0, "Canon", "Preta", 2500.50);
  var camera2 = Camera(0, "Nikon", "Prata", 3200.75);
  var camera3 = Camera(0, "Sony", "Azul", 4500.00);

  print("Informações da câmera 1: ");
  camera1.infoCamera();
  print("Informações da câmera 2: ");
  camera2.infoCamera();
  print("Informações da câmera 3: ");
  camera3.infoCamera();

  print("\nAlterando a câmera 1:");
  camera1.marca = "Panasonic";
  camera1.cor = "Rosa";
  camera1.preco = 3570.50;
  camera1.infoCamera();
}