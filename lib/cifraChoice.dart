import 'package:flutter/material.dart';
import 'constants.dart';
import 'cifraFinal.dart';
import 'cifraFinal2.dart';

class CifraChoice extends StatefulWidget {
  const CifraChoice({Key? key}) : super(key: key);

  static const String id = "cifrasChoice";

  @override
  State<CifraChoice> createState() => _CifraChoiceState();
}

class _CifraChoiceState extends State<CifraChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundApp,
      appBar: AppBar(
        titleTextStyle: estiloInicial,
        backgroundColor: backgroundTitulo,
        title: Text('CIFRA DE VIGENERE'),
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
                  Navigator.pushNamed(context, CifraFinal.id);
                },
                child: const Text('CRIPTOGRAFAR'),
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
                  Navigator.pushNamed(context, CifraFinal2.id);
                },
                child: const Text('DESCRIPTOGRAFAR'),
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
