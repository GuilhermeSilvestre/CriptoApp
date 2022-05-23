import 'package:flutter/material.dart';
import 'constants.dart';

class FigurasFinal2 extends StatefulWidget {
  const FigurasFinal2({Key? key}) : super(key: key);

  static const String id = "figurasFinal2";

  @override
  State<FigurasFinal2> createState() => _FigurasFinal2State();
}

class _FigurasFinal2State extends State<FigurasFinal2> {
  late String texto;
  String traducao = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundApp,
      appBar: AppBar(
        titleTextStyle: estiloInicial,
        backgroundColor: backgroundTitulo,
        title: Text('FIGURAS'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Seu texto (em Figuras):',
                  style: textoTelaInicial,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Text('FIGURAS AQUI'),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      //Por enquanto nada
                    });
                  },
                  child: const Text('Traduzir'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(130, 70),
                    elevation: 4,
                    primary: const Color(0xffEC6D31),
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                const Text(
                  'TRADUÇÃO:',
                  style: textoTelaInicial,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  traducao,
                  style: textoTelaInicial,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
