import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nomixe/presentation/ui/dashboard/domain/providers/dashboard_providers.dart';
import 'package:nomixe/presentation/ui/dashboard/presentation/providers/state/dashboard_notifier.dart';
import 'package:nomixe/presentation/ui/dashboard/presentation/providers/state/dashboard_state.dart';

final dashboardNotifierProvider = StateNotifierProvider<DashboardNotifier, DashboardState>((ref) {
  final repository = ref.watch(dashboardRepositoryProvider);
  return DashboardNotifier(repository)..fetchProducts();
});
