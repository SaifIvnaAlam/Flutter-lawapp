import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:lawapp/auth/domain/interface/i_auth_facade.dart';

// ignore_for_file: unused_field
@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  AuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<User?> signIn() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      final googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      FirebaseAuth.instance.authStateChanges();
      var userResult =
          await FirebaseAuth.instance.signInWithCredential(credential);

      return userResult.user;
      // if (userResult.user != null) {
      //   // final _user = UserModel(
      //   //   id: const Uuid().v4(),
      //   //   uid: userResult.user!.uid,
      //   //   displayName: userResult.user!.displayName ?? "",
      //   //   email: userResult.user!.email ?? "",
      //   //   photoURL: userResult.user!.photoURL ?? "",
      //   );
      // var db = FirebaseFirestore.instance;

      // await db.collection("users").doc(_user.uid).get().then(
      //   (value) {
      //     if (value.exists) {
      //       log("User already exists in DB");
      //     } else {
      //       db.collection("users").doc(_user.uid).set(_user.toMap());
      //       log("UserData Stored : ${_user.toMap()}");
      //     }
      //   },
      // );

      // }
    } catch (e) {
      log("Error signing in with Google: $e");
      throw const SocketException("Not working");
    }
  }

  @override
  Future<User?> getUserState() async {
    var user = _firebaseAuth.currentUser;
    return user;
  }
}
