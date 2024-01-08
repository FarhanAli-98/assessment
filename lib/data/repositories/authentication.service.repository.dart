import 'package:nomixe/domain/repositories/authentication.repository.dart';

class AuthenticationServiceRepository implements AuthenticationRepository {
  @override
  Future<void> loginWithEmailAndPassword({required String email, required String password}) {
    // TODO: implement loginWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> registerWithEmailAndPassword({required String email, required String password}) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }
}
