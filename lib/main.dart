import 'package:flutter/material.dart';
import 'package:lawapp/core/presentation/app.dart';
import 'package:lawapp/core/infrastructure/bootstarp_app.dart';

void main() async {
  await bootstrapApp();
  runApp(const App());
}
