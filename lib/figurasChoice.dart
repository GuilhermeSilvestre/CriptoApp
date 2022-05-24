import 'package:criptoapp/alfabetoImagens.dart';
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
                onPressed: null,
                //O onpressed seria para ir para FigurasFinal
                //Navigator.pushNamed(context, FigurasFinal.id);
                //Mas deixarei para depois
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
                onPressed: null,
                //O onpressed seria para ir para FigurasFinal2
                //Navigator.pushNamed(context, FigurasFinal2.id);
                //Mas deixarei para depois
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
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AlfabetoImagens.id);
                },
                child: const Text('LEGENDA'),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 90),
                  elevation: 4,
                  primary: const Color(0xffEC6661),
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
