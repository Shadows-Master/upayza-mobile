import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_checkbox_state.g.dart';
@riverpod
class RegisterCheckboxState extends _$RegisterCheckboxState {
  @override
  bool build() {
    return true;
  }

  void isChecked() {
    state = !state;
  }

}