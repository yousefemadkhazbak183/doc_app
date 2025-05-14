import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:doc_app/core/widgets/app_text_button.dart';
import 'package:doc_app/features/login/ui/widgets/terms_conditions_text.dart';
import 'package:doc_app/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:doc_app/features/signup/ui/widget/already_have_account.dart';
import 'package:doc_app/features/signup/ui/widget/sign_up_bloc_listener.dart';
import 'package:doc_app/features/signup/ui/widget/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(30),
                Column(
                  children: [
                    const SignupForm(),

                    verticalSpace(40),
                    AppTextButton(
                      textStyle: TextStyles.font16WhiteBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                      buttonText: 'Create Account',
                    ),
                    verticalSpace(16),
                    const TermsConditionsText(),
                    verticalSpace(30),
                    const AlreadyHaveAccount(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpState();
    }
  }
}
