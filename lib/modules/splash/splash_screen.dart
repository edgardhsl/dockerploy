import 'package:dockerploy/core/database/isar/isar.impl.dart';
import 'package:dockerploy/core/storage/exceptions/environment_not_found.exception.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:isar/isar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Storage storage = Modular.get<Storage>();
  IsarDatabase database = Modular.get<IsarDatabase>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _validate();
    });
  }

  _validate() async {
    try {
      storage.getEnv();

      database.initialize().then((value) => Modular.to.navigate("/start"));
    } on EnvironmentNotFoundException {
      showAlertDialog();
    }
  }

  showAlertDialog() {
    Widget launchButton = TextButton(
      child: const Text("Sim"),
      onPressed: () {
        Modular.to.navigate("/settings");
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
