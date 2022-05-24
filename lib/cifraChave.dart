import 'package:flutter/material.dart';
import 'constants.dart';
import 'cifraChoice.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class CifraChave extends StatefulWidget {
  const CifraChave({Key? key}) : super(key: key);

  static const String id = "cifrasChave";

  @override
  State<CifraChave> createState() => _CifraChaveState();
}

class _CifraChaveState extends State<CifraChave> {
  late String chaveNova;
  String chaveAtual = 'key';

  @override
  void initState() {
    super.initState();
    getChave();
  }

  void getChave() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      chaveAtual = (prefs.getString('chave') ?? 'CHAVE');
      //print(chaveAtual);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundApp,
      appBar: AppBar(
        titleTextStyle: estiloInicial,
        backgroundColor: backgroundTitulo,
        title: Text('CIFRA DE VIGENERE'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Chave atual: $chaveAtual',
                  style: textoTelaInicial,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 60,
                ),
                const Text(
                  'Insira uma chave',
                  style: textoTelaInicial,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter(RegExp("[a-zA-Z]"),
                        allow: true),
                    FilteringTextInputFormatter.deny(RegExp('[]')),
                  ],
                  maxLength: 6,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Sua chave',
                  ),
                  onChanged: (value) {
                    chaveNova = value;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    setState(() {
                      if (chaveNova == '' || chaveAtual == null) {
                        chaveNova = 'CHAVE';
                      }
                      chaveAtual = chaveNova;
                      chaveAtual = chaveAtual.toUpperCase();
                      prefs.setString('chave', chaveAtual);
                    });
                  },
                  child: const Text('Atualizar Chave'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(160, 70),
                    elevation: 4,
                    primary: const Color(0xffEC6D31),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.pushNamed(context, CifraChoice.id);
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    setState(() {
                      prefs.setString('chave', chaveAtual);
                    });
                  },
                  child: const Text('Prosseguir'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(180, 70),
                    elevation: 4,
                    primary: const Color(0xffEC6661),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
