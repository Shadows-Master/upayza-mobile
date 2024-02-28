import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:upayza/src/core/routing/app_router.dart';
part 'app_router_state.g.dart';

@riverpod
AppRouter appRouter(AppRouterRef ref) {
  return AppRouter();
}
