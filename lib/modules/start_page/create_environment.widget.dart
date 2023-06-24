import 'package:dockerploy/core/builders/form/formgroup.builder.dart';
import 'package:dockerploy/core/database/isar/isar.impl.dart';
import 'package:dockerploy/data/model/env_repos.dart';
import 'package:dockerploy/data/model/environment.dart';
import 'package:dockerploy/data/model/github_repo.dart';
import 'package:dockerploy/data/repositories/environment.repository.dart';
import 'package:dockerploy/data/repositories/github_repo.repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:styled_widget/styled_widget.dart';

class CreateEnvironment extends StatelessWidget {
  final GithubRepoRepository repoRepository =
      Modular.get<GithubRepoRepository>();
  final EnvironmentRepository environmentRepository =
      Modular.get<EnvironmentRepository>();
  final IsarDatabase database = Modular.get<IsarDatabase>();

  final FormGroup formGroup =
      CustomFormBuilder<Environment>().create(validators: {
    "name": [Validators.required],
    "envRepos.idFrontRepository": [Validators.required],
    //"host": [Validators.required],
  }).formGroup;

  CreateEnvironment({super.key});

  _buildIcon(GithubRepo repo) {
    if (repo.topics == null || repo.topics!.isEmpty) {
      return _buildIconByLanguage(repo);
    }

    return _buildIconByTopic(repo);
  }

  _buildIconByTopic(GithubRepo repo) {
    if (repo.topics!.any((e) => RegExp(r"(angular)").hasMatch(e))) {
      return const Icon(SimpleIcons.angular);
    }

    if (repo.topics!.any((e) => RegExp(r"(java)").hasMatch(e))) {
      return const Icon(SimpleIcons.openjdk);
    }

    if (repo.topics!.any((e) => RegExp(r"(as3)|(flex)").hasMatch(e))) {
      return const Icon(SimpleIcons.adobe);
    }

    if (repo.topics!.any((e) => RegExp(r"(javascript)|(es6)").hasMatch(e))) {
      return const Icon(SimpleIcons.javascript);
    }

    if (repo.topics!.any((e) => RegExp(r"(typescript)").hasMatch(e))) {
      return const Icon(SimpleIcons.typescript);
    }

    if (repo.topics!.any((e) => RegExp(r"(vsto)").hasMatch(e))) {
      return const Icon(SimpleIcons.csharp);
    }

    return const Icon(SimpleIcons.github);
  }

  _buildIconByLanguage(GithubRepo repo) {
    switch (repo.language) {
      case 'ActionScript':
        return const Icon(SimpleIcons.adobe);
      case 'TypeScript':
        return const Icon(SimpleIcons.typescript);
      case 'JavaScript':
        return const Icon(SimpleIcons.javascript);
      case 'Java':
        return const Icon(SimpleIcons.openjdk);
      case 'C#':
        return const Icon(SimpleIcons.csharp);
      case 'Pascal':
        return const Icon(SimpleIcons.delphi);
      default:
        return const Icon(SimpleIcons.github);
    }
  }

  _dropdown(ThemeData theme) {
    return FutureBuilder<List<GithubRepo>>(
        future: repoRepository.getRepositories(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          return ReactiveDropdownField<String>(
              style: TextStyle(
                  color: theme.brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black),
              items: !snapshot.hasData
                  ? []
                  : snapshot.data!
                      .map((e) => DropdownMenuItem<String>(
                            value: "${e.id}",
                            onTap: () {},
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 15,
                              children: [_buildIcon(e), Text(e.name)],
                            ),
                          ))
                      .toList(),
              formControlName: "envRepos.idFrontRepository",
              decoration: const InputDecoration(
                labelText: 'Repositório',
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ReactiveForm(
        formGroup: formGroup,
        child: Styled.widget(
                child: Padding(
          padding: const EdgeInsets.all(20),
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              const Text(
                "Criar novo ambiente",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              ReactiveTextField(
                  formControlName: "name",
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    labelText: 'Nome do ambiente',
                  )),
              _dropdown(theme),
              Align(
                alignment: Alignment.bottomRight,
                child: ReactiveFormConsumer(
                  builder: (context, form, child) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                        padding: const EdgeInsets.all(20),
                        backgroundColor: Colors.blue, // background
                        foregroundColor: Colors.white, // foreground
                      ),
                      onPressed: form.valid
                          ? () async {
                              SnackBar snackBar;

                              formGroup.control('id').value = 0;

                              Environment env =
                                  Environment.fromJson(form.rawValue);

                              database.isar!.writeTxnSync(() =>
                                  database.isar!.environments.putSync(env));

                              if (env.id == 0) {
                                snackBar = const SnackBar(
                                  content: Text(
                                      'Houve um erro ao criar o ambiente.'),
                                );
                              }

                              snackBar = const SnackBar(
                                content: Text('Ambiente criado com sucesso!'),
                              );

                              if (!context.mounted) return;

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          : null,
                      child: const Text('Salvar'),
                    );
                  },
                ),
              )
            ],
          ),
        ).borderRadius(all: 30).clipRect())
            .width(480)
            .borderRadius(all: 50)
            .clipRect()
            .backgroundColor(theme.scaffoldBackgroundColor));
  }
}
