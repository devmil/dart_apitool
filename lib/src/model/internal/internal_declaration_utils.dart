import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:path/path.dart' as path;

abstract class InternalDeclarationUtils {
  static int? getIdFromElement(Element? element) {
    if (element == null) {
      return null;
    }
    return element.id;
  }

  static int? getIdFromParentElement(Element? element) {
    if (element is InterfaceElement || element is ExtensionElement) {
      return getIdFromElement(element);
    }
    return null;
  }

  static List<String> computeTypeParameters(
      List<TypeParameterElement> typeParameters) {
    return typeParameters.map((e) => e.name).toList();
  }

  static List<String> computeSuperTypeNames(List<InterfaceType> allSupertypes) {
    return allSupertypes
        .map((st) => st.getDisplayString(withNullability: true))
        .toList();
  }

  static bool hasExperimental(Element element) {
    bool result = element.metadata.any((annotation) {
      // this is really hacky but currently there is no other way of getting into the guts of the annotation
      dynamic dynamicAnnotation = annotation;
      final String annotationName = dynamicAnnotation.annotationAst.name.name;

      return annotationName == 'experimental' ||
          annotationName == 'Experimental';
    });
    return result;
  }

  static String getRelativePath(String rootPath, Element element) {
    final name = element.librarySource?.fullName;
    if (name != null) {
      return path.relative(name, from: rootPath);
    }
    return '';
  }
}
