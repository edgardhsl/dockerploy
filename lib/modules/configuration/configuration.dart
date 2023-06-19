import 'dart:developer';

import 'package:dockerploy/data/model/github_user.dart';
import 'package:dockerploy/modules/configuration/github_user_card.widget.dart';
import "package:simple_icons/simple_icons.dart";

import 'package:dockerploy/core/builders/form/formgroup.builder.dart';
import 'package:dockerploy/core/platform/features/platform.factory.dart';
import 'package:dockerploy/core/platform/features/platform_features.dart';
import 'package:dockerploy/core/storage/exceptions/environment_not_found.exception.dart';
import 'package:dockerploy/core/storage/git_environment.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:reactive_forms/reactive_forms.dart';

class Configuration extends StatefulWidget {
  const Configuration({Key? key}) : super(key: key);

  @override
  State<Configuration> createState() => _ConfigurationState();
}

class _ConfigurationState extends State<Configuration> {
  Storage storage = Modular.get<Storage>();
  FormGroup formGroup = CustomFormBuilder<GitEnvironment>().create(validators: {
    "user": [Validators.required],
    "token": [Validators.required],
  });

  PlatformState isWSL = PlatformState.loading;
  PlatformState isDocker = PlatformState.loading;

  @override
  void initState() {
    _executeProccess();
    _loadForm();
    super.initState();
  }

  _loadForm() async {
    try {
      GitEnvironment env = await storage.getEnv();
      formGroup.patchValue(env.toMap());
    } on EnvironmentNotFoundException catch (e) {
      log(e.toString());
    }
  }

  _save() async {
    GitEnvironment env = GitEnvironment.fromMap(formGroup.value);
    storage.setEnv(env);

    Modular.to.navigate("../");
  }

  _executeProccess() async {
    PlatformFactory().getWSL().isInstalled().then((value) => setState(
        () => isWSL = value ? PlatformState.enabled : PlatformState.disabled));
    PlatformFactory().getDocker().isInstalled().then((value) => setState(() =>
        isDocker = value ? PlatformState.enabled : PlatformState.disabled));
  }

  _isOk(PlatformState isOk) {
    switch (isOk) {
      case PlatformState.loading:
        return const SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(strokeWidth: 3),
        );
      case PlatformState.enabled:
        return const Icon(
          Icons.check_circle,
          color: Colors.green,
        );
      case PlatformState.disabled:
        return const Icon(
          Icons.error,
          color: Colors.red,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: ReactiveForm(
        formGroup: formGroup,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Row(children: [
                Icon(Icons.list_alt),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Recursos requeridos",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                )
              ]),
              const SizedBox(
                height: 15,
              ),
              ListView(shrinkWrap: true, children: [
                ListTile(
                  leading: _isOk(isWSL),
                  title: const Text('Windows Subsystem for Linux'),
                ),
                ListTile(
                  leading: _isOk(isDocker),
                  title: const Text('Docker'),
                )
              ]),
              const SizedBox(
                height: 15,
              ),
              const Row(children: [
                Icon(SimpleIcons.github),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "GitHub",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                )
              ]),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      child: ReactiveTextField(
                    formControlName: "user",
                    validationMessages: {
                      "required": (control) =>
                          "É necessário informar o usuário/organização"
                    },
                    decoration: const InputDecoration(
                      labelText: 'GitHub User',
                    ),
                  ))
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                      child: ReactiveTextField(
                    formControlName: "token",
                    validationMessages: {
                      "required": (control) => "É necessário informar o token"
                    },
                    decoration: const InputDecoration(
                      labelText: 'GitHub Token',
                    ),
                  ))
                ],
              ),
              StreamBuilder<GithubUser>(
                stream: Stream.empty(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return Text("a");

                  return Row(
                    children: [
                      Expanded(
                        child: GithubUserCard(
                          name: snapshot.data!.name!,
                          avatarUrl: snapshot.data!.avatarUrl!,
                          repoCount: snapshot.data!.publicRepos!,
                        ),
                      )
                    ],
                  );
                },
              ),
              const Spacer(),
              Row(
                children: [
                  const Spacer(),
                  ReactiveFormConsumer(
                    builder: (context, form, child) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 16),
                          padding: const EdgeInsets.all(20),
                          backgroundColor: Colors.blue, // background
                          foregroundColor: Colors.white, // foreground
                        ),
                        onPressed: form.valid
                            ? () {
                                _save();
                              }
                            : null,
                        child: const Text('Salvar'),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
