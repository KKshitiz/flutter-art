import 'package:flutter/material.dart';
import 'package:flutter_art/core/app_widget.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(AppWidget());
}
