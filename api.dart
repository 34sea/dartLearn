import 'dart:convert';
import 'package:http/http.dart' as http;

class Album {
  var id;
  var userId;
  var title;

  Album(this.id, this.userId, this.title);


}

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


Future<void> readData()async{
  try{
    var BASE_URL = Uri.parse("https://jsonplaceholder.typicode.com/comments");
    var response = await http.get(BASE_URL);
    if(response.statusCode == 200){
      List<dynamic> data = jsonDecode( response.body) as List<dynamic>;

      for(final dt in data){
        print(dt['name']);
        print("--------------------------------");
      }
    }
  }catch(e){
    print(e);
  }
}


Future<void> readDataAlbum()async{
  try{

    var BASE_URL = Uri.parse("https://jsonplaceholder.typicode.com/albums");
    var response = await http.get(BASE_URL);
    if(response.statusCode == 200){
      List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      
      for(final items in data){
       print(items['id']);
      }
    }

  }catch(e){
    print(e);
  }
}

Future<void> readDataPhotos()async{
  try{
    var BASE_URL = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    var response = await http.get(BASE_URL);
    if(response.statusCode == 200){
      List<dynamic> data = jsonDecode(response.body) as List<dynamic>;

      for(final items in data){
        print(items['url']);
      }
    }
  }catch(e){
    print(e);
  }
}





void main() {
  // fetchData();
  // readData();
  // readDataAlbum();
  readDataPhotos();
  
}
