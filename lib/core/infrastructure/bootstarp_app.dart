import 'package:flutter/material.dart';
import 'package:lawapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> bootstrapApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}
