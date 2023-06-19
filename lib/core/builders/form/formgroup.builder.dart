import 'package:dockerploy/core/util/reflector/reflector.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reflectable/reflectable.dart';

class CustomFormBuilder<T> {
  final _reflector = const Reflector();
  final _formGroup = FormGroup({});

  CustomFormBuilder();

  FormGroup create({required Map<String, List<Validator>> validators}) {
    final controls = <String, AbstractControl>{};

    ClassMirror mirror = _reflector.reflectType(T) as ClassMirror;

    mirror.declarations.forEach((key, value) {
      if (value is VariableMirror) {
        AbstractControl control = _createControl(value);
        final validations = _getValidators(key, validators);
        control.setValidators(validations);
        control.updateValueAndValidity();

        controls.putIfAbsent(key, () => control);
      }
    });

    _formGroup.addAll(controls);
    return _formGroup;
  }

  static void update(FormGroup form, Map<String, dynamic> values) {
    values.forEach((key, value) {
      if (form.contains(key)) {
        form.findControl(key)!.updateValue(value);
      }
    });
  }

  List<Validator> _getValidators(
      String key, Map<String, List<Validator>>? validators) {
    try {
      if (validators == null) {
        return [];
      }

      List<Validator> controlValidators = [];

      for (final MapEntry validators in validators.entries) {
        if (validators.key == key) {
          controlValidators = validators.value;
        }
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
        return FormControl<Object>();
    }
  }

  patchEntity(T entity) {
    ClassMirror mirror = _reflector.reflectType(T) as ClassMirror;
    InstanceMirror entityMirror = _reflector.reflect(entity as Object);

    mirror.declarations.forEach((key, value) {
      if (value is! VariableMirror) return;
      _formGroup.control(key).value = entityMirror.invokeGetter(key);
    });
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
