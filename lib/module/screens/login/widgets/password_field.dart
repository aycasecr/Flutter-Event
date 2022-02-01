import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isSecureText = false;
  void _changeSecure() {
    setState(() {
      _isSecureText = !_isSecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
          ? 35
          : 50,
      child: TextFormField(
        controller: widget.controller,
        obscureText: _isSecureText,
        decoration: InputDecoration(
            labelText: 'Şifre',
            labelStyle:
                getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
                    ? Theme.of(context).textTheme.bodyText2
                    : Theme.of(context).textTheme.headline4,
            hintStyle:
                getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
                    ? Theme.of(context).textTheme.bodyText1
                    : Theme.of(context).textTheme.headline4,
            hintText: '..........',
            suffixIcon: IconButton(
                onPressed: _changeSecure, icon: Icon(_isSecureText ? Icons.visibility_off : Icons.visibility))),
        validator: (value) => (value ?? '').length > 8 ? null : 'Please fill text',
      ),
    );
  }
}
