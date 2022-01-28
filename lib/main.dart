import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'di/injection_container.dart';
import 'presentation/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID');
  configureDependencies();
  runApp(const MyApp());
}
