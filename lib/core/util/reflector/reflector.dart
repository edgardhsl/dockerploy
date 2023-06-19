import 'package:reflectable/reflectable.dart';

class Reflector extends Reflectable {
  const Reflector()
      : super(
            metadataCapability,
            instanceInvokeCapability,
            staticInvokeCapability,
            declarationsCapability,
            libraryCapability,
            invokingCapability,
            newInstanceCapability,
            declarationsCapability,
            reflectedTypeCapability,
            typingCapability);
}
