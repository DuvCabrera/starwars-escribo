// Mocks generated by Mockito 5.0.17 from annotations
// in starwars_app/test/viewmodels/change_favorite_list_viewmodel_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:starwars_app/interfaces/local_storage_interface.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [ILocalStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockILocalStorage extends _i1.Mock implements _i2.ILocalStorage {
  MockILocalStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<dynamic> getAll() =>
      (super.noSuchMethod(Invocation.method(#getAll, []),
          returnValue: Future<dynamic>.value()) as _i3.Future<dynamic>);
  @override
  _i3.Future<dynamic> put(String? key, dynamic value) =>
      (super.noSuchMethod(Invocation.method(#put, [key, value]),
          returnValue: Future<dynamic>.value()) as _i3.Future<dynamic>);
  @override
  _i3.Future<dynamic> delete(int? key) =>
      (super.noSuchMethod(Invocation.method(#delete, [key]),
          returnValue: Future<dynamic>.value()) as _i3.Future<dynamic>);
  @override
  _i3.Future<dynamic> update(String? key, dynamic id) =>
      (super.noSuchMethod(Invocation.method(#update, [key, id]),
          returnValue: Future<dynamic>.value()) as _i3.Future<dynamic>);
}
