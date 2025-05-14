import 'package:doc_app/core/helper/exetension.dart';
import 'package:doc_app/core/rotuing/routers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart' show TextStyles;

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(text: 'Login', style: TextStyles.font13BlueSemiBold,
          recognizer: TapGestureRecognizer()
          ..onTap = (){
            context.pushReplacementNamed(Routers.loginScreen);
          }
          ),
        ],
      ),
    );
  }
}