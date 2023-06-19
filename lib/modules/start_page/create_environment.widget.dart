import 'package:dockerploy/core/builders/form/formgroup.builder.dart';
import 'package:dockerploy/core/storage/Environment.dart';
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
        formGroup: formGroup, child: Styled.widget(child: const Column()));
  }
}
