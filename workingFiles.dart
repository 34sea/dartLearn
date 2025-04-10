import 'dart:io';


Future<String> readFile(File config) async{
   try {
    var stringContent = await config.readAsString();
    var stringLines = await config.readAsLines();
    return stringLines.toString();
  } catch (e) {
    return e.toString();

  }
}

Future<bool> writeFile(String text, File config) async{
  try{
    var fileWrite = config.openWrite();
    fileWrite.write(text);
    await fileWrite.flush();
    await fileWrite.close();
    return true;
  }catch(e){
    // print(e);
    return false;
  }
}

Future<bool> deleFile(File config)async{
  try{
    config.delete();
    return true;
  }catch(e){
    return false;
  }
}

void main() async {
  print("Files");
  var config = File("./teste.txt");

  // print(await readFile(config));
  String linha = await readFile(config);
  String l = linha.replaceAll("[", "").replaceAll("]", "");
  List<String> linhas = l.split(",");
  for(final line in linhas){
    print(line);
  }

  // print(await writeFile("Ola", config));
  // print(await deleFile(config));


 
}
