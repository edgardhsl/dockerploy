import 'dart:developer';
import 'dart:io';

import 'package:dockerploy/core/builders/form/formgroup.builder.dart';
import 'package:dockerploy/core/platform/process/impl/process_run.dart';
import 'package:dockerploy/core/storage/git_environment.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:process_run/shell.dart';

class Configuration extends StatefulWidget {
  const Configuration({Key? key}) : super(key: key);

  @override
  State<Configuration> createState() => _ConfigurationState();
}

class _ConfigurationState extends State<Configuration> {
  Storage storage = Modular.get<Storage>();
  FormGroup formGroup =
      CustomFormBuilder<GitEnvironment>().create(validators: {});

  bool isWSL = false;
  bool isDocker = false;

  @override
  void initState() {
    _executeProccess();
    _loadForm();
    super.initState();
  }

  _loadForm() async {
    GitEnvironment env = await storage.getEnv();
    formGroup.patchValue(env.toMap());
  }

  _save() async {
    GitEnvironment env = GitEnvironment.fromMap(formGroup.value);
    storage.setEnv(env);
  }

  _executeProccess() async {
    await ProcessRunner()
        .cmd("wsl bash")
        .then((r) => setState(() => isWSL = r.isNotEmpty));

    await ProcessRunner()
        .cmd("wsl bash -c \"docker ps\"")
        .then((r) => setState(() => isDocker = r.isNotEmpty));
  }

  _isOk(bool isOk) {
    return isOk
        ? const Icon(
            Icons.check_circle,
            color: Colors.green,
          )
        : const Icon(
            Icons.error,
            color: Colors.red,
          );
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
                Text(
                  "Recursos requeridos",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                Text(
                  "GitHub",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                    decoration: const InputDecoration(
                      labelText: 'GitHub Token',
                    ),
                  ))
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Colors.blue, // background
                      foregroundColor: Colors.white, // foreground
                    ),
                    onPressed: () {
                      _save();
                    },
                    child: const Text('Salvar'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
