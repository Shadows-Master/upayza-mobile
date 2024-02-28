import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_view_state.g.dart';

@riverpod
class PageViewState extends _$PageViewState {
  @override
  int build() {
    return 0;
  }

  void increment(int value) {
    state = value;
  }

  void decrement(int value) {
    state = state - value;
  }
}
