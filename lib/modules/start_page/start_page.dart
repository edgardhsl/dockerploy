import 'dart:ui';

import 'package:dockerploy/core/storage/environment.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartPage extends StatelessWidget {
  Storage storage = Modular.get<Storage>();

  final ScrollController _scrollBarController =
      ScrollController(initialScrollOffset: 20);

  List<Environment> envs = [
    Environment(
        protocol: "http",
        apiroot: "api/v2",
        host: "localhost",
        saltMD5: "none",
        encryptType: "",
        port: 8080,
        context: "mobilidade",
        frontBranch: "master"),
    Environment(
        protocol: "http",
        apiroot: "api/v2",
        host: "localhost",
        saltMD5: "none",
        encryptType: "",
        port: 8080,
        context: "mobilidade",
        frontBranch: "master"),
  ];

  StartPage({Key? key}) : super(key: key);

  _card(BuildContext context, int index) {
    final width = MediaQuery.of(context).size.width - 80;

    return SizedBox(
      width: 300,
      child: Card(
        color: Colors.grey[200], // Cor cinza clara
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Bordas arredondadas
        ),
        child: ListTile(
          title: Text(
            'Ambiente ${index + 1}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => {},
                child: Text(
                  envs[index].getFrontEndUrl(),
                  style: const TextStyle(color: Colors.blueAccent),
                ),
              ),
              GestureDetector(
                child: Text(
                  envs[index].getBackEndUrl(),
                  style: const TextStyle(color: Colors.blueAccent),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder(
          future: storage.getEnv(),
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
            )
          ]),
          SizedBox(
            height: 200,
            child: ScrollConfiguration(
                behavior: MyCustomScrollBehavior(),
                child: ListView.builder(
                  controller: _scrollBarController,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: envs.length,
                  itemBuilder: (context, index) {
                    return _card(context, index);
                  },
                )),
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
