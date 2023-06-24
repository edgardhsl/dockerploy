import 'package:dockerploy/core/util/reflector/reflector.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reflectable/reflectable.dart';

class CustomFormBuilder<T> {
  final _reflector = const Reflector();
  final _formGroup = FormGroup({});

  get formGroup => _formGroup;

  CustomFormBuilder();

  CustomFormBuilder create({required Map<String, List<Validator>> validators}) {
    _process(parentControl: _formGroup, validators: validators);
    _getValidators(_formGroup, validators);

    return this;
  }

  _process(
      {Type? parentClass,
      AbstractControl? parentControl,
      required Map<String, List<Validator>> validators}) {
    ClassMirror mirror = (parentClass == null
        ? _reflector.reflectType(T)
        : _reflector.reflectType(parentClass)) as ClassMirror;

    final controls = <String, AbstractControl>{};
    mirror.declarations.forEach((key, value) {
      if (value is VariableMirror) {
        AbstractControl control = _createControl(value);

        if (control is FormGroup) {
          _process(
              parentClass: value.reflectedType,
              parentControl: control,
              validators: validators);

          controls.putIfAbsent(key, () => control);
          return;
        }

        controls.putIfAbsent(key, () => control);
      }
    });

    (parentControl as FormGroup).addAll(controls);

    return this;
  }

  static void update(FormGroup form, Map<String, dynamic> values) {
    values.forEach((key, value) {
      if (form.contains(key)) {
        form.findControl(key)!.updateValue(value);
      }
    });
  }

  List<Validator> _getValidators(
      FormGroup formGroup, Map<String, List<Validator>>? validators) {
    try {
      if (validators == null) {
        return [];
      }

      List<Validator> controlValidators = [];

      for (final MapEntry validators in validators.entries) {
        formGroup.control(validators.key).setValidators(validators.value);
        formGroup.control(validators.key).updateValueAndValidity();
      }

      return controlValidators;
    } catch (e) {
      return [];
    }
  }

  Type _getPropertyType(DeclarationMirror value) {
    if (value is! VariableMirror) {
      return dynamic;
    }

    return value.reflectedType;
  }

  AbstractControl _createControl(DeclarationMirror value) {
    switch (_getPropertyType(value)) {
      case String:
        return FormControl<String>();
      case int:
        return FormControl<int>();
      case DateTime:
        return FormControl<DateTime>();
      case bool:
        return FormControl<bool>();
      default:
        return FormGroup({});
    }
  }

  patchEntity(T entity) {
    ClassMirror mirror = _reflector.reflectType(T) as ClassMirror;
    InstanceMirror entityMirror = _reflector.reflect(entity as Object);

    mirror.declarations.forEach((key, value) {
      if (value is! VariableMirror) return;
      _formGroup.control(key).value = entityMirror.invokeGetter(key);
    });

    return this;
  }

  static bool validateControls(
      FormGroup formGroup, List<String> formControlNames) {
    bool valid = true;
    for (var formControl in formControlNames) {
      if (formGroup.control(formControl).invalid) {
        formGroup.control(formControl).markAsTouched();
        valid = false;
      }
    }

    return valid;
  }
}
