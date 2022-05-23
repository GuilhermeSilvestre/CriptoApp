import 'package:flutter/material.dart';
import 'constants.dart';
import 'figurasFinal.dart';
import 'figurasFinal2.dart';

class FigurasChoice extends StatefulWidget {
  const FigurasChoice({Key? key}) : super(key: key);

  static const String id = "figurasChoice";

  @override
  State<FigurasChoice> createState() => _FigurasChoiceState();
}

class _FigurasChoiceState extends State<FigurasChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundApp,
      appBar: AppBar(
        titleTextStyle: estiloInicial,
        backgroundColor: backgroundTitulo,
        title: Text('FIGURAS'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              const Text(
                'Escolha a opção que deseja',
                style: textoTelaInicial,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, FigurasFinal.id);
                },
                child: const Text('Alfabeto para Figuras'),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 90),
                  elevation: 4,
                  primary: const Color(0xffEC6D31),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, FigurasFinal2.id);
                },
                child: const Text('Figuras para Alfabeto'),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 90),
                  elevation: 4,
                  primary: const Color(0xffEC6D31),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
