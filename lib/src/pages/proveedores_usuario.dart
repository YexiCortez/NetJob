import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/menu_izquierdo.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';


class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class ProviderList extends StatelessWidget {
  Future<List<Post>> search(String search) async {
  await Future.delayed(Duration(seconds: 2));
  return List.generate(search.length, (int index) {
    return Post(
      "Title : $search $index",
      "Description :$search $index",
    );
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Proveedores de Servicio'),
         backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: CrearMenu(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: SearchBar<Post> (
           onSearch: search,
           onItemFound: (Post post, int index){
             return ListTile(
               title: Text(post.title),
               subtitle: Text(post.description),
              
             );
           },
           loader: Center(child: CircularProgressIndicator()),
           hintText: 'Busca a tu proveedor favorito...',
         ) ,
          )
        ),
      );
      
  }

}
