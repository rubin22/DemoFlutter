
// class FlutterUxcamNavigatorObserver extends NavigatorObserver {
//   List<String> screenNames = [];
//   String taggingScreen = '';

//   @override
//   void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     super.didPush(route, previousRoute);
//     screenNames.add(route.settings.name!);
//     setTaggingScreenNameAndLog();
//   }

//   @override
//   void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
//     screenNames.remove(newRoute?.settings.name);
//     setTaggingScreenNameAndLog();
//     super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
//   }

//   @override
//   void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     debugPrint('didPop: ${route.settings.name}');
//     screenNames.remove(route.settings.name);
//     setTaggingScreenNameAndLog();
//     super.didPop(route, previousRoute);
//   }

//   @override
//   void didRemove(Route route, Route? previousRoute) {
//     debugPrint('didRemove: ${route.settings.name}');
//     screenNames.remove(route.settings.name);
//     setTaggingScreenNameAndLog();
//     super.didRemove(route, previousRoute);
//   }

//   void setTaggingScreenNameAndLog() {
//     debugPrint('LIST: ${screenNames.toList()}');
//     taggingScreen = screenNames.isNotEmpty ? screenNames.last : '';
//     if (taggingScreen.isNotEmpty) {
//       FlutterUxcam.tagScreenName(taggingScreen);
//     }
//     debugPrint('Tagging Screen: $taggingScreen');
//   }
// }
