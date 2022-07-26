/// interface for all Declarations
abstract class Declaration {
  /// name of this declaration
  String get name;

  /// determines if this declaration is deprecated
  bool get isDeprecated;

  /// determines if this declaration is experimental
  bool get isExperimental;

  /// list of entry points this declaration can be reached over. Can be [null] in case the source doesn't provide entry points
  Set<String>? get entryPoints;

  /// the relative path of the library of this declaraion inside the package
  String get relativePath;
}
