import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthFacade {
  Future<User?> signIn();

  Future<User?> getUserState();
}
