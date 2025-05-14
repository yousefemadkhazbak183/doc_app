import 'package:doc_app/core/helper/exetension.dart';
import 'package:doc_app/core/rotuing/routers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart' show TextStyles;

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have account? ',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(text: 'Sign Up', style: TextStyles.font13BlueSemiBold,
          recognizer: TapGestureRecognizer()
          ..onTap = (){
            context.pushReplacementNamed(Routers.signupScreen);
          }
          ),
        ],
      ),
    );
  }
}
