import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/init/language/locale_keys.g.dart';
import '../../../../core/init/utility/border_radius_utils.dart';
import '../../../widgets/text_widget.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: Sizes.buttonSize.rawValue(),
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.secondaryVariant)),
            child: CustomTextWidget(
              text: LocaleKeys.login_signIn.tr(),
              styles:
                  getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
                      ? Theme.of(context).textTheme.subtitle1
                      : Theme.of(context).textTheme.headline2,
            )));
  }
}
