import 'package:nomixe/domain/repositories/authentication.repository.dart';
import 'package:flutter/foundation.dart';

class AuthenticationNotifier extends ChangeNotifier {
  final AuthenticationRepository authenticationRepository;
  AuthenticationNotifier({required this.authenticationRepository});
}
