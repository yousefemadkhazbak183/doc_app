import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:doc_app/core/widgets/app_text_button.dart';
import 'package:doc_app/core/widgets/app_text_form_field.dart';
import 'package:doc_app/features/login/ui/widgets/already_have_account.dart';
import 'package:doc_app/features/login/ui/widgets/terms_conditions_text.dart' show TermsConditionsText;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

bool  isObscureText = true;
final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back',
                style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(30),
                Form(
                  key: formKey,
                  child: Column(
                  children: [
                    AppTextFormField(
                      hintText: 'Email',
                    ),
                    verticalSpace(18),
                    AppTextFormField(hintText: 'password', 
                    isObscureText: isObscureText,
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          isObscureText = !isObscureText;
                        }); 
                      },
                      child: Icon(isObscureText ? Icons.visibility_off : Icons.visibility,
                      
                      ),
                    ),
                    ),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text('Forget Password?', 
                      style: TextStyles.font13BlueRegular,
                      ),
                      ),
                      verticalSpace(40),
                      AppTextButton(textStyle: TextStyles.font16WhiteBold,
                       onPressed: (){},
                        buttonText: 'Login'
                       ),
                       verticalSpace(16),
                       TermsConditionsText(),
                       verticalSpace(60),
                       AlreadyHaveAccount(),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}