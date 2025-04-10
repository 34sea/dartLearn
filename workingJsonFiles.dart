import 'dart:convert';
import 'dart:io';

class Area {
  final String name;
  final String category;
  final List<List<double>> coordinates;

  Area(this.name, this.category, this.coordinates);
}

loadArea(File config) async {
  try {
    var str = await config.readAsString();
    final List<dynamic> data = jsonDecode(str) as List<dynamic>;
    for (var area in data) {
      print('Nome: ${area["name"]}');
      print('Categoria: ${area["category"]}');
      print('Coordenadas: ${area["coordinates"]}');
      print('---');
    }
  } catch (e) {
    print(e);
  }
}

Future<String> readJson(File config) async {
  try {
    var stringConfig = await config.readAsString();
    return stringConfig.toString();
  } catch (e) {
    return e.toString();
  }
}

void main() async {
  print("Json files");
  var config = File("./assets/areas.json");

  // print(await readJson(config));
  await loadArea(config);
}
