import 'dart:ui';

import 'package:dockerploy/core/storage/environment.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:dockerploy/modules/start_page/create_environment.widget.dart';
import 'package:dockerploy/modules/start_page/environment_card.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  Storage storage = Modular.get<Storage>();

  final ScrollController _scrollBarController =
      ScrollController(initialScrollOffset: 20);

  List<Environment> envs = [];

  _create(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: CreateEnvironment(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder(
          future: Future.value(storage.getEnv()),
          builder: (context, snapshot) => Padding(
            padding: const EdgeInsets.only(top: 20, left: 15),
            child: Text(
              'Olá, ${snapshot.data?.user}!',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Ambientes (${envs.length})",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Row(children: [
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      _create(context);
                    },
                  )
                ]))
          ]),
          SizedBox(
            height: 330,
            child: ScrollConfiguration(
                behavior: MyCustomScrollBehavior(),
                child: envs.isNotEmpty
                    ? ListView.builder(
                        controller: _scrollBarController,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: envs.length,
                        itemBuilder: (context, index) {
                          return EnvironmentCard(
                            env: envs[index],
                          );
                        },
                      )
                    : const Center(
                        child: Text(
                        "Iiiihhh, nenhum ambiente configurado ainda. 🥲",
                      ))),
          )
        ]),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
