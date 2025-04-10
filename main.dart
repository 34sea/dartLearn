class Pessoa {
  String nome;
  String? _bilhete;
  int idade;


  // Construtor
  Pessoa(this.nome, this.idade);

  // Método
  void falar() {
    print('Olá, meu nome é $nome e tenho $idade anos e o meu bilhete é: $_bilhete.');
  }

  String? getBilhete(){
    return _bilhete;
  }

  void setBilhete(String numbers){
    _bilhete = numbers;
  }
}

class AnimalSound{
  String sound(String so){
    return so;
  }
}

class Animal extends AnimalSound{
  String especie;
  List<String> caracteristicas;

  Animal(this.especie, this.caracteristicas);

  List<String> getCaracteristicas(){
    return caracteristicas;
  }

  void setCaracteristicas(String car){
    caracteristicas.add(car);
  }

  String getEspecie(){
    return especie;
  }

  void setEspecie(String name){
    especie = name;
  }

  @override
  String toString(){
    return 'Animal(Especie: $especie, Caracteristicas: $caracteristicas)';
  }

  @override
  String sound(String so){
    return so;
  }
  
}


int fibonacci(int number){
  if(number == 0 || number == 1){
    return number;
  }

  return fibonacci(number - 1) + fibonacci(number - 2);
}



void main() {

  //Impressão
  print('Olá mundo!');

  //variaveis
  //tipo inferido
  var name = "Roma";
  var age = 25;
  print("Nome $name, \nIdade: $age");

  //tipo explícito
  String name2 = "Troia";
  int age2 = 25;
  double height = 1.7;
  bool student = true;
  print("Name2: $name2, \nIdade2: $age2, \nHeigth: $height");

  //constantes
  const pi = 3.14;
  final g = 10;
  
  print("Contante: $pi e $g");

  //Para variaveis que podem ser nulos
  String? gargantu;
  gargantu = "Yes";

  print("Gargantu: $gargantu");

  //Fluxo
  if(student){
    print("Student");
  }else{
    print("No student");
  }

  //Arrays
  var frutas = ["Manga", "Banana", "Goaba"];
  List<int> numbers = [1, 2, 3, 4];
  List<double> constantes = [];
  const listaFixa = [1, 2, 3, 4];

  //Adicionar
  frutas.add("Pera");
  constantes.add(3.14);
  //Remover
  frutas.remove("Manga");
  //Atualizar
  frutas[0] = "Uva";
  //Tamanho
  numbers.add(frutas.length);

  //Estruturas de repetição

  for(final fruta in frutas){
    print("Fruta: $fruta");
  }

  for(final number in numbers){
    print("Numero: $number");
  }

  //Objectos

  var pessoa = Pessoa("Roma", 20);
  pessoa.idade = 14;
  pessoa._bilhete = "sdlkadsa";

  print(pessoa._bilhete);

  pessoa.falar();


  Animal animal = Animal("Ave", ["voo", "Garra"]);


  print("Animal info");
  animal.setEspecie("Gato");
  animal.setCaracteristicas("Salto");
  print(animal.getEspecie());
  print(animal.getCaracteristicas());
  print(animal.toString());
  print(animal.sound("AU au"));

  
  //Funções
  print("Fibonacci");
  print(fibonacci(20));


}
