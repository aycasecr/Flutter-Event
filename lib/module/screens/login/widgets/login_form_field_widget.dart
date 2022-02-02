import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'password_field.dart';

class LoginFormField extends StatefulWidget {
  const LoginFormField({
    Key? key,
  }) : super(key: key);
  @override
  State<LoginFormField> createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<LoginFormField> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _textFormEmailField = TextEditingController();
  final TextEditingController _textFormPasswordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            BuildTextFormField(
                textFormEmailField: _textFormEmailField, labelText: 'E-mail Adresi', hintText: 'design@enesileri.com'),
            const SizedBox(height: 20),
            PasswordField(controller: _textFormPasswordField),
          ],
        ));
  }
}

class BuildTextFormField extends StatelessWidget {
  const BuildTextFormField({
    Key? key,
    required TextEditingController textFormEmailField,
    required String labelText,
    required String hintText,
  })  : _textFormEmailField = textFormEmailField,
        _labelText = labelText,
        _hinText = hintText,
        super(key: key);

  final TextEditingController _textFormEmailField;
  final String _labelText;
  final String _hinText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
          ? 35
          : 50,
      child: TextFormField(
        controller: _textFormEmailField,
        decoration: InputDecoration(
          labelText: _labelText,
          labelStyle:
              getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
                  ? Theme.of(context).textTheme.bodyText2
                  : Theme.of(context).textTheme.headline4,
          hintText: _hinText,
          hintStyle:
              getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
                  ? Theme.of(context).textTheme.bodyText1
                  : Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
