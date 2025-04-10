import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
    for(var item in data){
      print(item['id']);
    }
    // print(data); 
  } else {
    print('Falha na requisição: ${response.statusCode}');
  }
}


Future<void> readData(){
  
}



void main() {
  fetchData();
}
