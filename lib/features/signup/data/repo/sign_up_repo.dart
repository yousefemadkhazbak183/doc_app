import 'package:doc_app/core/networking/api_error_handel.dart';
import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/core/networking/api_service.dart';
import 'package:doc_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:doc_app/features/signup/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signUp(
    SignupRequestBody signUpRequestBody,
  ) async {
    try {
      final response = await _apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
