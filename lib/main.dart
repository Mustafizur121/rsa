import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rsa/presentation/screens/home_screen.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  if(Platform.isWindows || Platform.isLinux || Platform.isMacOS){
    await windowManager.ensureInitialized();

    WindowOptions windowOptions = const WindowOptions(
      minimumSize: Size(400, 600),
      center: true,
      title: 'RSA'
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  runApp(const RSAAPP());
}

class RSAAPP extends StatelessWidget {
  const RSAAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

