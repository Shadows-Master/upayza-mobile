import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'password_reset_state.g.dart';

@riverpod
class PasswordResetState extends _$PasswordResetState {
  @override
  bool build() {
    return false;
  }

  void hasCode (){
    state = !state;
  }
}
