import 'package:mobx/mobx.dart';
import 'package:todomobx/store/todo_store.dart';
part 'list_store.g.dart';

class ListStore = _ListStoreBase with _$ListStore;

abstract class _ListStoreBase with Store {
  @observable
  String listTitle = '';

  @action
  void setListTitle(String value) => listTitle = value;

  ObservableList<TodoStore> toList = ObservableList<TodoStore>();

  @action
  void addTodo() {
    toList.insert(
      0,
      TodoStore(listTitle),
    );
    listTitle = '';
  }

  @computed
  bool get isValidTitle => listTitle.isNotEmpty;
}
