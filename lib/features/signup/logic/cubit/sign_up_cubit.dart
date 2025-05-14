import 'package:doc_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:doc_app/features/signup/data/repo/sign_up_repo.dart';
import 'package:doc_app/features/signup/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignupState>{
  final SignUpRepo _signupRepo;
  SignUpCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignUpState() async {
    emit(const SignupState.signupLoading());
    final response = await _signupRepo.signUp(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
        gender: 0,
      )
    );
    response.when(success: (signupResponse){
      emit(SignupState.signupSuccess(signupResponse));
    }, failure: (error){
      emit(SignupState.signupError(error: error.apiErrorModel.message ?? " "));
    });

  }
}