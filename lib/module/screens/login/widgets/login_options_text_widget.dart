import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/init/language/locale_keys.g.dart';
import '../../../widgets/text_widget.dart';

class LoginOptionsText extends StatelessWidget {
  const LoginOptionsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomTextWidget(
        text: LocaleKeys.or.tr(),
        styles: getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
            ? Theme.of(context).textTheme.bodyText1
            : Theme.of(context).textTheme.headline3,
      )
    ]);
  }
}
