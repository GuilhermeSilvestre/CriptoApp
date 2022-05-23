import 'package:flutter/material.dart';
import 'cifraChoice.dart';
import 'cifraFinal.dart';
import 'constants.dart';
import 'figurasFinal.dart';
import 'figurasChoice.dart';
import 'figurasFinal2.dart';
import 'cifraFinal2.dart';
import 'cifraChave.dart';
import 'alfabetoImagens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CriptoApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(title: 'CriptoApp'),
        FigurasChoice.id: (context) => FigurasChoice(),
        FigurasFinal.id: (context) => FigurasFinal(),
        FigurasFinal2.id: (context) => FigurasFinal2(),
        CifraChave.id: (context) => CifraChave(),
        CifraChoice.id: (context) => CifraChoice(),
        CifraFinal.id: (context) => CifraFinal(),
        CifraFinal2.id: (context) => CifraFinal2(),
        AlfabetoImagens.id: (context) => AlfabetoImagens(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  static const String id = "home";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundApp,
      appBar: AppBar(
        titleTextStyle: estiloInicial,
        backgroundColor: backgroundTitulo,
        title: Text(widget.title),
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
                'Escolha o tipo de Criptografia:',
                style: textoTelaInicial,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, FigurasChoice.id);
                },
                child: const Text('Figuras'),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 70),
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
                  Navigator.pushNamed(context, CifraChave.id);
                },
                child: const Text('Cifra de Vigenère'),
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
