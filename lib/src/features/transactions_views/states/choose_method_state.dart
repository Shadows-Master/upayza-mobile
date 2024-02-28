import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'choose_method_state.g.dart';


@riverpod
class ChooseMethodState extends _$ChooseMethodState {
  @override
  int build() {
    return -1;
  }

  void setValue(int value){
    state = value;
  }
}

@riverpod
class SelectedListState extends _$SelectedListState {
  @override
  List<int> build() {
    return [];
  }
  update(int value){
    state = state..add(value);
  }
  delete(){
    state = state..clear();
  }
}