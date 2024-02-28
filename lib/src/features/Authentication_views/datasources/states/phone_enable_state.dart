import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'phone_enable_state.g.dart';

@riverpod
class PhoneEnableState extends _$PhoneEnableState {
  @override
  bool build() {
    return false;
  }

  void isPhoneEnabled (){
    state = !state;
  }
}
