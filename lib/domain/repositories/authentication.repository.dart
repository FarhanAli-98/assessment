abstract class AuthenticationRepository{

  Future<void> loginWithEmailAndPassword({required String email, required String password});
  Future<void> registerWithEmailAndPassword({required String email, required String password});
  Future<void> logout();

}