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

  

  for(final fruta in frutas){
    print("Fruta: $fruta");
  }

  for(final number in numbers){
    print("Numero: $number");
  }

  //Estruturas de repetição
  
}
