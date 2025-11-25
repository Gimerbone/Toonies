import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormField extends StatelessWidget {
  const FormField({
    super.key,
    required this.hintText,
    this.inputFormatters,
    this.validator,
    this.onChange,
  });

  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final void Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.all(8),
      child: TextFormField(
        inputFormatters: inputFormatters,
        validator: validator,
        decoration: InputDecoration(hintText: hintText),
        onChanged: onChange,
      ),
    );
  }
}
