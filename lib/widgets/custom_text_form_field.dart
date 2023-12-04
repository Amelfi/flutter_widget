import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? icon;
  final TextInputType keyBoardType;
  final bool obscureText;
  final TextCapitalization capitalization;
  final Map<String, String> formValues;
  final String formProperty;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.icon,
    this.keyBoardType = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    this.obscureText = false,
    required this.formValues,
    required this.formProperty, 
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      textCapitalization: capitalization,
      initialValue: '',
      obscureText: obscureText,
      keyboardType: keyBoardType,
      onChanged: (values) => formValues[formProperty] = values,
      validator: validator,

      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
