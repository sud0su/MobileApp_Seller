import "package:flutter/material.dart";

class IconTextField extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? iconPrefix;
  final IconButton? iconSuffix;
  final String? labelText;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  // final VoidCallback? onChanged;
  // final VoidCallback? onSaved;
  final Color? iconPrefixColor;
  final bool autoFocus;
  final String? initialValue;

  const IconTextField({
    Key? key,
    this.controller,
    this.iconPrefix,
    this.iconSuffix,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.minLines,
    this.maxLines,
    this.autoFocus = false,
    this.maxLength,
    this.iconPrefixColor,
    this.initialValue,
    this.validator,
    this.onChanged,
    this.onSaved,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(
          iconPrefix,
          color: iconPrefixColor,
        ),
        labelText: labelText,
        suffixIcon: iconSuffix,
      ),
      controller: controller,
      autofocus: autoFocus,
      onSaved: onSaved,
      maxLength: maxLength,
      onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      minLines: minLines,
      validator: validator,
      initialValue: initialValue,
      cursorColor: Colors.green,
      style: TextStyle(color: Colors.green),
    );
  }
}
