// ignore: unused_import
import 'package:analyzer/dart/element/element.dart';
import 'package:dart_apitool/model/executable_declaration.dart';
import 'package:dart_apitool/model/field_declaration.dart';
import 'package:dart_apitool/utils/string_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'declaration.dart';

part 'class_declaration.freezed.dart';
part 'class_declaration.g.dart';

/// Represents a found class declaration
@freezed
class ClassDeclaration with _$ClassDeclaration {
  /// the signature of this class condensed to one String
  /// contains Type arguments as well as base classes or implemented interfaces
  String get signature => _computeSignature();

  const ClassDeclaration._();

  @Implements<Declaration>()
  const factory ClassDeclaration({
    required String name,
    required bool isDeprecated,
    required List<String> typeParameterNames,
    required List<String> superTypeNames,
    required List<ExecutableDeclaration> executableDeclarations,
    required List<FieldDeclaration> fieldDeclarations,
  }) = _ClassDeclaration;

  factory ClassDeclaration.fromJson(Map<String, Object?> json) =>
      _$ClassDeclarationFromJson(json);

  String _computeSignature() {
    String superTypeSuffix = '';
    if (superTypeNames.isNotEmpty) {
      superTypeSuffix = ' : ${superTypeNames.join(', ')}';
    }
    final typeParameterSuffix = getTypeParameterSuffix(typeParameterNames);
    return '$name$typeParameterSuffix$superTypeSuffix';
  }
}
