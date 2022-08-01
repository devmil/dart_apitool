import 'package:dart_apitool/test/secret_class.dart';

export 'src/api_relevant_elements_collector.dart';
export 'src/referenced_files_collector.dart';

class ClassWithTypeArgument<T> {
  final T member;

  ClassWithTypeArgument(this.member);

  R castTo<R>() {
    R actualCast(T val) {
      R thisIsTheRealCast(T innerVal) {
        return innerVal as R;
      }

      return thisIsTheRealCast(val);
    }

    return actualCast(member);
  }
}

ClassWithTypeArgument<String> publicTopLevelVar = ClassWithTypeArgument('test');

R publicTopLevelMethod<T, R>(ClassWithTypeArgument<T> arg) {
  return arg.castTo<R>();
}

extension FancySecretClassExtension on SecretClass {
  static String calculatePropWithPadding(SecretClass ths, int padLeft) {
    return ths.someProp.padLeft(padLeft);
  }
}
