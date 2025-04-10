//Anonimas
var dobro = (int x){
  return x*2;
};

int soma(int x, int y, int Function(int, int) somar){
  return somar(x, y);
}

int sum(int x, int y) => x+y;

//Asyncronas
Future<String> teste(String msg)async{
  await Future.delayed(Duration(seconds: 2));
  return msg;
}

void main()async{
  print(4);
  print(soma(1,2, sum));
  print("Asyncrono");
  print("Esperando...");
  String msg = await teste("Teste");
  print(msg);
}