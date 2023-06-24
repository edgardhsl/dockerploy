import 'dart:ui';

import 'package:dockerploy/core/database/isar/isar.impl.dart';
import 'package:dockerploy/data/model/environment.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:dockerploy/data/repositories/environment.repository.dart';
import 'package:dockerploy/modules/start_page/create_environment.widget.dart';
import 'package:dockerploy/modules/start_page/environment_card.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:isar/isar.dart';
import 'package:styled_widget/styled_widget.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  Storage storage = Modular.get<Storage>();

  final ScrollController _scrollBarController =
      ScrollController(initialScrollOffset: 20);

  EnvironmentRepository envRepository = Modular.get<EnvironmentRepository>();
  IsarDatabase database = Modular.get<IsarDatabase>();

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
        actions: [
          Styled.widget(
                  child: IconButton(
                      onPressed: () {
                        Modular.to.navigate("/settings");
                      },
                      icon: const Icon(Icons.settings)))
              .paddingDirectional(horizontal: 10)
        ],
        title: FutureBuilder(
          future: Future.value(storage.getEnv()),
          builder: (context, snapshot) => Text(
            'Olá, ${snapshot.data?.user}!',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: StreamBuilder(
            stream: database.isar!.environments?.watchLazy(),
            builder: (context, snapshot) {
              final List<Environment?> envs =
                  database.isar!.environments.where().findAllSync();
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Ambientes (${envs.length})",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(children: [
                            TextButton.icon(
                              icon: const Icon(Icons.add),
                              label: const Text("Novo ambiente"),
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
                                    return envs.elementAt(index) != null
                                        ? EnvironmentCard(
                                            env: envs.elementAt(index)!,
                                          )
                                        : Container();
                                  },
                                )
                              : const Center(
                                  child: Text(
                                  "Iiiihhh, nenhum ambiente configurado ainda. 🥲",
                                ))),
                    )
                  ]);
            }),
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
