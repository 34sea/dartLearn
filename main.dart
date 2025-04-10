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
  
}
