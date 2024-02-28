import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'password_state.g.dart';

@riverpod
class PasswordState extends _$PasswordState {
  @override
  bool build() {
    return true;
  }

  void isPasswordHide() {
    state = !state;
  }
}

@riverpod
class PasswordConfirmedState extends _$PasswordConfirmedState {
  @override
  bool build() {
    return true;
  }

  void isPasswordHide() {
    state = !state;
  }
}
