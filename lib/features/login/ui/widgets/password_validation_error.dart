import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidationError extends StatelessWidget {
  final bool lowerCase;
  final bool upperCase;
  final bool hasMinLength;
  final bool hasNumber;
  final bool hasSpecialChar;
  const PasswordValidationError({
    super.key,
    required this.lowerCase,
    required this.upperCase,
    required this.hasMinLength,
    required this.hasNumber,
    required this.hasSpecialChar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 lowercase letter ", lowerCase),
        verticalSpace(2),
        buildValidationRow("At least 1 upperCase letter ", upperCase),
        verticalSpace(2),
        buildValidationRow("At least 8 has Min Length", hasMinLength),
        verticalSpace(2),
        buildValidationRow("At least 1 special Char ", hasSpecialChar),
        verticalSpace(2),
        buildValidationRow("At least 1 number ", hasNumber),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorsManager.gray),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
