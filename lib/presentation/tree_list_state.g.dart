// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_list_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TreeListState on TreeListeStateBase, Store {
  late final _$treesAtom =
      Atom(name: 'TreeListeStateBase.trees', context: context);

  @override
  List<Tree> get trees {
    _$treesAtom.reportRead();
    return super.trees;
  }

  @override
  set trees(List<Tree> value) {
    _$treesAtom.reportWrite(value, super.trees, () {
      super.trees = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'TreeListeStateBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getTreesAsyncAction =
      AsyncAction('TreeListeStateBase.getTrees', context: context);

  @override
  Future<void> getTrees() {
    return _$getTreesAsyncAction.run(() => super.getTrees());
  }

  @override
  String toString() {
    return '''
trees: ${trees},
isLoading: ${isLoading}
    ''';
  }
}
