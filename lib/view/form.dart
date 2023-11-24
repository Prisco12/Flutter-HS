import 'package:teste/model/autor.dart';
import 'package:flutter/material.dart';

class FormAutor extends StatefulWidget {
  const FormAutor({super.key});

  @override
  State<FormAutor> createState() => _FormAutorState();
}

class _FormAutorState extends State<FormAutor> {

  final TextEditingController _ctrlNome = TextEditingController();
  final TextEditingController _ctrlAno = TextEditingController();
  final TextEditingController _ctrlIdade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario Autor'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _ctrlNome,
                decoration: const InputDecoration(
                  labelText: 'Nome do autor',
                  hintText: 'Joaquim da Silva'
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _ctrlAno,
                decoration: const InputDecoration(
                  labelText: 'Ano de nascimento do autor',
                  hintText: '1990'
                ),
                keyboardType: TextInputType.number,
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _ctrlIdade,
                decoration: const InputDecoration(
                  labelText: 'Idade',
                  hintText: '18'
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            FloatingActionButton(
              child: const Icon(Icons.save),
              onPressed: (){

                final int? anoNascimento = int.tryParse(_ctrlAno.text);
                final String nome =  _ctrlNome.text;
                final int? idade =  int.tryParse(_ctrlIdade.text);

                if(anoNascimento != null) {
                  final autor = Autor(nome, anoNascimento, idade!);
                  Navigator.pop(context, autor);
                }
            })
          ],
        ),
      ),
    );
  }
}
