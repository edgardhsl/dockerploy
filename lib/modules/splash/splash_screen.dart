import 'package:dockerploy/core/storage/exceptions/environment_not_found.exception.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Storage storage = Modular.get<Storage>();

  @override
  void initState() {
    _validate();
    super.initState();
  }

  _validate() async {
    try {
      await storage.getEnv();

      Modular.to.navigate("/start");
    } on EnvironmentNotFoundException {
      showAlertDialog();
    }
  }

  showAlertDialog() {
    Widget launchButton = TextButton(
      child: const Text("Sim"),
      onPressed: () {
        Modular.to.navigate("/configuration");
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Ooooooooooooooopa!"),
      content: const Text(
          "Você está inicializando o aplicativo pela primeira vez, vamos configurar?"),
      actions: [
        launchButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}
