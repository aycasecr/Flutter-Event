import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'login_mobile_page.dart';
import 'login_web_page.dart';

class LoginHomePage extends StatefulWidget {
  const LoginHomePage({Key? key}) : super(key: key);

  @override
  _LoginHomePageState createState() => _LoginHomePageState();
}

class _LoginHomePageState extends State<LoginHomePage> {
  @override
  Widget build(BuildContext context) {
    return getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
        ? const LoginWebPage()
        : const LoginMobilePage();
  }
}
