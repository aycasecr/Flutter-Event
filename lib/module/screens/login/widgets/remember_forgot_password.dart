import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/init/language/locale_keys.g.dart';
import '../../../widgets/text_widget.dart';

class RememberAndForgotPassword extends StatefulWidget {
  const RememberAndForgotPassword({Key? key}) : super(key: key);

  @override
  State<RememberAndForgotPassword> createState() => _RememberAndForgotPasswordState();
}

class _RememberAndForgotPasswordState extends State<RememberAndForgotPassword> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Transform.scale(
                scale: getValueForScreenType<bool>(
                        context: context, mobile: false, tablet: true, desktop: true, watch: true)
                    ? 0.7
                    : 0.8,
                child: Checkbox(value: isChecked, onChanged: (bool? value) => setState(() => isChecked = value!))),
            CustomTextWidget(
                text: LocaleKeys.rememberMe.tr(),
                styles: getValueForScreenType<bool>(
                        context: context, mobile: false, tablet: true, desktop: true, watch: true)
                    ? Theme.of(context).textTheme.headline6
                    : Theme.of(context).textTheme.bodyText2?.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
        InkWell(
            onTap: () {},
            child: CustomTextWidget(
                text: LocaleKeys.forgotPassword.tr(),
                styles: getValueForScreenType<bool>(
                        context: context, mobile: false, tablet: true, desktop: true, watch: true)
                    ? Theme.of(context).textTheme.caption
                    : Theme.of(context).textTheme.headline5))
      ],
    );
  }
}
