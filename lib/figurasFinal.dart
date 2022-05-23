import 'package:flutter/material.dart';
import 'constants.dart';
import 'main.dart';
import 'package:flutter/services.dart';

class FigurasFinal extends StatefulWidget {
  const FigurasFinal({Key? key}) : super(key: key);

  static const String id = "figurasFinal";

  @override
  State<FigurasFinal> createState() => _FigurasFinalState();
}

class _FigurasFinalState extends State<FigurasFinal> {
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
                  'Seu texto:',
                  style: textoTelaInicial,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter(RegExp("[a-zA-Z ]"),
                        allow: true),
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Seu texto',
                  ),
                  onChanged: (value) {
                    texto = value;
                    //print(texto);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      traducao = texto;
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
