import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controladorSenha = TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();

  void _salvar() {
    setState(() {
      final String senha = _controladorSenha.text;
      final String email = _controladorEmail.text;

      final Login loginCad = Login(senha, email);
      //print(pessoaCad);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clinical Center'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controladorEmail,
              decoration: const InputDecoration(labelText: 'E-mail'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorSenha,
                decoration: const InputDecoration(labelText: 'Senha'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor:
                      Colors.white, //change background color of button
                  backgroundColor: Colors.red, //change text color of button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 15.0,
                ),
                onPressed: _salvar,
                child: const Text('Entrar'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor:
                      Colors.red, //change background color of button
                  backgroundColor: Colors.white, //change text color of button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 15.0,
                ),
                onPressed: _salvar,
                child: const Text('Cadastrar'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class Login {
  final String senha;
  final String email;

  Login(
    this.senha,
    this.email,
  );

  @override
  String toString() {
    return 'Pessoa{senha: $senha, email: $email}';
  }
}
