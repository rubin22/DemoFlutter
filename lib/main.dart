import 'package:flutter/material.dart';
import 'package:flutter_uxcam/flutter_uxcam.dart';
import 'package:flutter_uxcam/flutter_uxcam_observer.dart';

import 'core/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterUxcam.optIntoSchematicRecordings();
  FlutterUxConfig config = FlutterUxConfig(
    userAppKey: 'ENTER API KEY HERE',
    // enableAutomaticScreenNameTagging: false,
    // enableCrashHandling: false,
    // enableMultiSessionRecord: false,
    // occlusions: [],
    // enableNetworkLogging: true,
  );
  FlutterUxcam.startWithConfiguration(config).then(
    (status) => debugPrint('Status: $status'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Navigator 1.0 implementation
    return MaterialApp(
      title: 'Routing Demo',
      navigatorObservers: [FlutterUxcamNavigatorObserver()],
      theme: ThemeData.dark(useMaterial3: true),
      initialRoute: RouteName.login,
      onGenerateRoute: onGenerateRoute,
    );

    /// Navigator 2.0 Implementation
    // return MaterialApp.router(
    //   title: 'Routing Demo',
    //   theme: ThemeData.dark(useMaterial3: true),
    //   routerConfig: AppRouter().router,
    // );
  }
}
