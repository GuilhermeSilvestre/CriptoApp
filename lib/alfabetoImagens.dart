import 'package:flutter/material.dart';
import 'constants.dart';
import 'main.dart';

class AlfabetoImagens extends StatefulWidget {
  const AlfabetoImagens({Key? key}) : super(key: key);

  static const String id = "alfabetoImagens";

  @override
  State<AlfabetoImagens> createState() => _AlfabetoImagensState();
}

class _AlfabetoImagensState extends State<AlfabetoImagens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundApp,
      appBar: AppBar(
        titleTextStyle: estiloInicial,
        backgroundColor: backgroundTitulo,
        title: Text('LEGENDA'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              const Text(
                'Legenda das Figuras',
                style: textoTelaInicial,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 70,
              ),
              Image.asset('images/legenda.png'),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Voltar'),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(180, 90),
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
