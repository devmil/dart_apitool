# Changelog

## Version 0.9.2

## Version 0.9.1
- use the relative path only for top level entities
- use a more stable way of getting the relative path

## Version 0.9.0
- Adds detection and consideration of @experimental flag
- Increases robustness regarding
  -  analysis_options: Those get now removed (in a temporary copy) to not limit the scope of dart_apitool
  -  Duplicate names: Detection of interfaces now considers the relative path of the library file to avoid crashes on duplicate names

## Version 0.8.0
- Improves handling of elements without root
- Changing required interfaces (even adding things) is now considered a breaking change
  interfaces are considered 'required' if they are abstract and used in a public method or field.
  This indicates that this interfaces is intended to be implemented by the user and therefore adding things also is breaking the API.
- Detect changes in package dependencies
- Adds codes for API diff reasons that point to an explanation [here](https://github.com/devmil/dart_apitool/blob/main/readme/change_codes.md)

## Version 0.7.0
- *BREAKING*: renamed "Class" model elements to "Interface" to reflect the abstraction it represents
- Fixes Extension handling (are now treated as interfaces)
  
## Version 0.6.0
- *BREAKING*: removes capability to use stored models in diffs
- *BREAKING*: CommandMixin's "analyze" no longer does clean up preparation results. For this the newly introduced "cleanUp" method has to be called
- Fixes major issue with equal class names (or top-level variables, functions or type aliases) imported in different namespaces
- Improve diff tree output
- Analyzes and diffs platform constraints
- Analyzes and diffs SDK versions

## Version 0.5.1
- Fixes Analyzer problem when visiting elements multiple times

## Version 0.5.0
- PackageAPI semantics are now an enum
- Fixes issues with entry points for fields and executables (differ ignored them)
- API changes for the diff command are now printed as a proper tree

## Version 0.4.0
- adds type aliases to Package API model
- fixes missing entry points for root level fields and functions
- fixed typo in `PackageApiDiffResult`

## Version 0.3.2
- fixes base class merge (root level elements)

## Version 0.3.1
- fixes base class merge (override duplicates)

## Version 0.3.0
- *BREAKING*: by default base class elements get now merged with the derived class. This makes previously saved models incompatible.  
"dart_apitool" will detect that, but it is not possible to diff an old model with a new one. (can only happen if you saved the model, doesn't affect live analysis of pub or directory references).  
To deactivate that behavior you can use the `--no-merge-base-classes` option.
- fixes entry point handling
- fixes minimum version handling for versions with major == 0

## Version 0.2.1
- fixes getting own version in `pub global` context

## Version 0.2.0
- Command cleanup
- Calls `dart pub` or `flutter pub` depending on the package dependencies
- Refactor Dart and Pub Interaction helpers
- Entry points are now analyzed and diffed as well (List of publicly available import destinations that this element can be reached with)

## Version 0.1.2
- Adds `--ignore-prerelease` to diff command

## Version 0.1.1
- Fixes pre-release handling (old version was checked)

## Version 0.1.0
- Fixes pre-release handling: in case of a pre-release version there is no differentiation between breaking and non-breaking changes
- Fixes some issues with the analyzer and pub package references
- loosened strictness on pre-release versions

## Version 0.0.1-dev.1
- Initial version
