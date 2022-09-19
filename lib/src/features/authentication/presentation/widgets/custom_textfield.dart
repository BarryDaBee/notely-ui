import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';

enum TextFieldType { regular, password }

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String label;
  final String? hintText;
  final TextFieldType textFieldType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputAction textInputAction;
  final TextInputType? textInputType;
  const CustomTextField(
      {Key? key,
      this.controller,
      required this.label,
      this.hintText,
      this.validator,
      this.obscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType,
      this.textFieldType = TextFieldType.regular})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(12.radius),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.label,
          style: AppTextStyles.textFieldLabelStyle,
        ),
        SizedBox(height: 8.height),
        TextFormField(
          validator: widget.validator,
          obscureText: widget.textFieldType == TextFieldType.password,
          obscuringCharacter: '#',
          controller: widget.controller,
          textInputAction: widget.textInputAction,
          keyboardType: widget.textInputType,
          style: AppTextStyles.body,
          cursorColor: AppColors.orange,
          decoration: InputDecoration(
            fillColor: AppColors.whiteDF,
            filled: true,
            border: border,
            focusedBorder: border,
            enabledBorder: border,
            hintStyle: AppTextStyles.body,
          ),
        ),
      ],
    );
  }
}
