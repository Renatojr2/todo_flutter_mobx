// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListStore on _ListStoreBase, Store {
  Computed<bool> _$isValidTitleComputed;

  @override
  bool get isValidTitle =>
      (_$isValidTitleComputed ??= Computed<bool>(() => super.isValidTitle,
              name: '_ListStoreBase.isValidTitle'))
          .value;

  final _$listTitleAtom = Atom(name: '_ListStoreBase.listTitle');

  @override
  String get listTitle {
    _$listTitleAtom.reportRead();
    return super.listTitle;
  }

  @override
  set listTitle(String value) {
    _$listTitleAtom.reportWrite(value, super.listTitle, () {
      super.listTitle = value;
    });
  }

  final _$_ListStoreBaseActionController =
      ActionController(name: '_ListStoreBase');

  @override
  void setListTitle(String value) {
    final _$actionInfo = _$_ListStoreBaseActionController.startAction(
        name: '_ListStoreBase.setListTitle');
    try {
      return super.setListTitle(value);
    } finally {
      _$_ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$_ListStoreBaseActionController.startAction(
        name: '_ListStoreBase.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$_ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listTitle: ${listTitle},
isValidTitle: ${isValidTitle}
    ''';
  }
}
