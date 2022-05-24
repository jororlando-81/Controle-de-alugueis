import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Alugueis', //título da aplicação
      debugShowCheckedModeBanner: false, //Tira a Barrinha de debug da tela
      theme: ThemeData(primarySwatch: Colors.green), //Altera a cor principal
      home:
          const MyStatefulWidget(title: 'Escolha uma função'), //título da tela
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60.0 ,  
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 350.0,
                height: 100.0,
                child: ElevatedButton.icon(
                  label: const Text('    ADICIONAR ALUGUEL'),
                  icon: Icon(
                    Icons.house,
                    size: 50.0,
                    color: Colors.greenAccent.shade400,
                  ),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black, // muda a cor das letras do botao
                    primary: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      side: BorderSide(color: Colors.green, width: 9),
                    ),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {

                       Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const Pag2()),
            );


                  },
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 350.0,
                height: 100.0,
                child: ElevatedButton.icon(
                  label: const Text('    MEUS ALUGUEIS'),
                  icon: Icon(
                    Icons.list,
                    size: 50.0,
                    color: Colors.greenAccent.shade400,
                  ),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black, // muda a cor das letras do botao
                    primary: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      side: BorderSide(color: Colors.green, width: 9),
                    ),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                  
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Pag3()),
              ); 
                  }
                ),
              ),
            ],
          ),
        ));
  }
}

class Pag2 extends StatelessWidget {
  const Pag2({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar aluguel'),
      ),
      body: Center(
         child: Column(
         mainAxisSize: MainAxisSize.min,
         children: <Widget>[ 
          ElevatedButton( 
        
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),
        ),
          const SizedBox(height: 30),  
          ElevatedButton(
         
          onPressed: () {
            //Navigator.pop(context);

            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Pag4()),
  );  

          },
          child: const Text('Continuar!'),
        ),
  

        ], 

         ),
      ),
    );
  }
}

class Pag3 extends StatelessWidget {
  const Pag3({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alugueis cadastrados'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),
        ),
      ),
    );
  }
}

class Pag4 extends StatelessWidget {
  const Pag4({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atribuir aluguel'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),
        ),
      ),
    );
  }
}