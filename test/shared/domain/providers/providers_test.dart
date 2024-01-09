import 'package:nomixe/data/remote/remote.dart';
import 'package:nomixe/data/domain/providers/dio_network_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('dioNetwokServiceProvider is a NetworkService', () {
    final providerContainer = ProviderContainer();

    addTearDown(providerContainer.dispose);

    expect(
      providerContainer.read(networkServiceProvider),
      isA<NetworkService>(),
    );
  });
}
