import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:razorpay_app/razor_pay.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientations
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    FlutterError.onError = (FlutterErrorDetails details) {
      print('Unhandled Flutter Error: ${details.exception}');
      print('Stack Trace: ${details.stack}');
    };
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: RazorPayScreen());
  }
}
