import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

import 'ui/my_app.dart';

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  runApp(const MyApp());
}
