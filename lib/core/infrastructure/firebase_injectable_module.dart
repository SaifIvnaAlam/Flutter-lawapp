import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignin => GoogleSignIn();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
