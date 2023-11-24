
import 'package:teste/model/autor.dart';
import 'package:teste/view/form.dart';
import 'package:flutter/material.dart';

class ListAutor extends StatefulWidget {

  final List<Autor> _autores = [];

  ListAutor({super.key}); 

  @override
  State<ListAutor> createState() => _ListAutorState();
}

class _ListAutorState extends State<ListAutor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Autores'),
      ),
      body: ListView.builder(
        itemCount: widget._autores.length,
        itemBuilder: (context, index) {
          final autor = widget._autores[index];
          return ItemAutor(autor);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const FormAutor();
          })).then((autor) => {
            if(autor != null) {
              setState(() {
                widget._autores.add(autor);
              })
            }
          });
        },),
    );
  }
}


class ItemAutor extends StatelessWidget {


  final Autor _autor;

  const ItemAutor(this._autor, {super.key});
  

  @override
  Widget build(BuildContext context) {
    return
    Card(
      child: ListTile(
        leading: Icon(Icons.star),
        title: Text(_autor.nome),
        subtitle:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Ano de Nascimento :${_autor.anoNascimento.toString()}"),
                                     Text("Idade :${_autor.idade.toString()}"),],),
                          
      )
    );
  }


}