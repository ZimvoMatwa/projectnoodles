import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.padding = const EdgeInsets.only(left: 10),
    this.labelText,
    required this.controller,
    required this.validator,
    required this.hintText,
    this.node,
    this.textInputType = TextInputType.name,
    this.textInputAction = TextInputAction.next,
    this.obscureText = false,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
  }) : super(key: key);
  final TextEditingController controller;
  final FocusScopeNode? node;
  final String hintText;
  final String Function(String) validator;
  final bool obscureText;
  final AutovalidateMode autovalidateMode;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final EdgeInsets padding;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        scrollPadding: EdgeInsets.zero,
        controller: controller,
        obscureText: obscureText,
        autovalidateMode: autovalidateMode,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1, style: BorderStyle.solid),
          ),
          contentPadding: padding,
          hintText: hintText,
          labelText: labelText ?? hintText,
        ),
        onEditingComplete: () => node?.nextFocus(),
        keyboardType: textInputType,
        textInputAction: textInputAction,
        // validator: validator,
      ),
    );
  }
}
