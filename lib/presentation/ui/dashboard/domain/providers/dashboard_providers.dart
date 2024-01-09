import 'package:nomixe/presentation/ui/dashboard/data/datasource/dashboard_remote_datasource.dart';
import 'package:nomixe/presentation/ui/dashboard/data/repositories/dashboard_repository.dart';
import 'package:nomixe/presentation/ui/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:nomixe/data/remote/network_service.dart';
import 'package:nomixe/data/domain/providers/dio_network_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardDatasourceProvider = Provider.family<DashboardDatasource, NetworkService>(
  (_, networkService) => DashboardRemoteDatasource(networkService),
);

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) {
  final networkService = ref.watch(networkServiceProvider);
  final datasource = ref.watch(dashboardDatasourceProvider(networkService));
  final repository = DashboardRepositoryImpl(datasource);

  return repository;
});