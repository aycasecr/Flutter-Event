import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'core/init/theme/theme_manager.dart';
import 'core/init/utility/localization_utils.dart';
import 'module/screens/login/login_home_page.dart';

part './app_start.dart';

Future<void> main() async {
  final _appStart = _AppStart();
  await _appStart.init();
  runApp(
    EasyLocalization(
        supportedLocales: LocalizatonLocales.init.supportedLocales,
        path: _appStart._localizationAssetPath,
        fallbackLocale: LocalizatonLocales.init.rawValue,
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.setLocale(LocalizatonLocales.init.rawValue);
    return MaterialApp(
        builder: (context, widget) => ResponsiveWrapper.builder(widget,
            minWidth: 480,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET),
              const ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
            ],
            background: Container(color: const Color(0xFFF5F5F5))),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Flutter Design',
        theme: ThemeManager().appTheme,
        home: const LoginHomePage());
  }
}
