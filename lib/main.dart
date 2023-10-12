import 'package:flutter/material.dart';

import 'core/services/services_locator.dart';
import 'core/utils/helpers/languages/dependency_inj.dart' as dep;
import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Map<String, Map<String, String>> _languages = await dep.init();
  await ServicesLocator().init();
  runApp(MyApp(
    languages: _languages,
  ));
}