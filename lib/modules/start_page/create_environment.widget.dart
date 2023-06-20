import 'package:dockerploy/core/builders/form/formgroup.builder.dart';
import 'package:dockerploy/core/storage/environment.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:styled_widget/styled_widget.dart';

class CreateEnvironment extends StatelessWidget {
  FormGroup formGroup = CustomFormBuilder<Environment>().create(validators: {
    "apiroot": [Validators.required],
    "host": [Validators.required],
  });

  CreateEnvironment({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
        formGroup: formGroup,
        child: Styled.widget(
            child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
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
                formControlName: "protocol",
                decoration: const InputDecoration(
                  labelText: 'Protocolo',
                )),
            ReactiveTextField(
                formControlName: "protocol",
                decoration: const InputDecoration(
                  labelText: 'Protocolo',
                )),
          ],
        )).width(480).padding(all: 20));
  }
}
