import 'package:flutter/material.dart';

import 'package:bmi_calculator/theme/colors.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  factory Input.text({
    final String title,
    final String suffixText,
    final VoidCallback onTap,
    final TextEditingController controller,
    final FormFieldValidator<String> validator,
    final Color color,
  }) {
    return Input(
      title: title,
      suffixText: suffixText,
      onTap: onTap,
      controller: controller,
      validator: validator,
      color: color,
    );
  }

  factory Input.number({
    final String title,
    final String suffixText,
    final VoidCallback onTap,
    final TextEditingController controller,
    final FormFieldValidator<String> validator,
    final Color color,
  }) {
    return Input(
      title: title,
      suffixText: suffixText,
      onTap: onTap,
      keyboardType: TextInputType.number,
      formatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
      controller: controller,
      validator: validator,
      color: color,
    );
  }

  Input(
      {this.title,
      this.suffixText,
      this.onTap,
      this.formatters,
      this.keyboardType = TextInputType.text,
      this.controller,
      this.validator,
      this.color});

  final VoidCallback onTap;
  final String title;
  final String suffixText;
  final List<TextInputFormatter> formatters;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          inputFormatters: formatters,
          keyboardType: keyboardType,
          style: TextStyle(
            fontSize: 18.0,
            color: color ?? AppColors.black,
          ),
          validator: validator,
          decoration: InputDecoration(
            labelText: title.toUpperCase(),
            labelStyle: TextStyle(
              color: color ?? AppColors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            helperText: '',
            hintText: '',
            hintStyle: TextStyle(
              height: 2.0,
              color: AppColors.darkGrey,
              fontSize: 16.0,
            ),
            suffixText: suffixText,
            suffixStyle: TextStyle(
              color: color ?? AppColors.darkGrey,
              fontSize: 16.0,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: color != null ? color.withOpacity(0.25) : AppColors.darkGrey,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: color ?? AppColors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
